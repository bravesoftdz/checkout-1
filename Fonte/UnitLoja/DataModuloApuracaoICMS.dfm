object DMApuracaoICMS: TDMApuracaoICMS
  OldCreateOrder = False
  Left = 339
  Top = 198
  Height = 315
  Width = 444
  object TblCredDeb_UfCFOP_Sint: TTable
    OnNewRecord = TblCredDeb_UfCFOP_SintNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CredDeb_UfCFOP_Sint.DB'
    Left = 49
    Top = 136
    object TblCredDeb_UfCFOP_SintTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object TblCredDeb_UfCFOP_SintAnoMes: TStringField
      FieldName = 'AnoMes'
      Size = 6
    end
    object TblCredDeb_UfCFOP_SintUF_CFOP: TStringField
      DisplayWidth = 10
      FieldName = 'UF_CFOP'
      Size = 10
    end
    object TblCredDeb_UfCFOP_SintVlrContabil: TFloatField
      FieldName = 'VlrContabil'
    end
    object TblCredDeb_UfCFOP_SintImpCredDeb: TFloatField
      FieldName = 'ImpCredDeb'
    end
    object TblCredDeb_UfCFOP_SintBaseCalc: TFloatField
      FieldName = 'BaseCalc'
    end
    object TblCredDeb_UfCFOP_SintIsentoNaoTrib: TFloatField
      FieldName = 'IsentoNaoTrib'
    end
    object TblCredDeb_UfCFOP_SintOutras: TFloatField
      FieldName = 'Outras'
    end
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  CUPOM'
      'where'
      '  CUPOCSTATUS = "A" and'
      '  (%MEmpresa) and'
      '  (%MData)')
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
      end>
    Left = 49
    Top = 49
    object SQLCupomCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOM.EMPRICOD'
    end
    object SQLCupomTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
    end
    object SQLCupomCUPOICOD: TIntegerField
      FieldName = 'CUPOICOD'
      Origin = 'DB.CUPOM.CUPOICOD'
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLCupomCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomCUPON2ACRESC: TBCDField
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPON2TOTITENS: TBCDField
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPON2DESC: TBCDField
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPON2TOTITENSRET: TBCDField
      FieldName = 'CUPON2TOTITENSRET'
      Origin = 'DB.CUPOM.CUPON2TOTITENSRET'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
    end
    object SQLCupomCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLCupomCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CUPOM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
  end
  object SQLCupomItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CUPOMITEM'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 186
    Top = 49
    object SQLCupomItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomItemCPITIPOS: TIntegerField
      FieldName = 'CPITIPOS'
      Origin = 'DB.CUPOMITEM.CPITIPOS'
    end
    object SQLCupomItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.CUPOMITEM.PRODICOD'
    end
    object SQLCupomItemCPITCSTATUS: TStringField
      FieldName = 'CPITCSTATUS'
      Origin = 'DB.CUPOMITEM.CPITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItemCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Origin = 'DB.CUPOMITEM.CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3QTDTROCA: TBCDField
      FieldName = 'CPITN3QTDTROCA'
      Origin = 'DB.CUPOMITEM.CPITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRUNIT: TBCDField
      FieldName = 'CPITN3VLRUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRCUSTUNIT: TBCDField
      FieldName = 'CPITN3VLRCUSTUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRCUSTUNIT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN2DESC: TBCDField
      FieldName = 'CPITN2DESC'
      Origin = 'DB.CUPOMITEM.CPITN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRUNITLUCR: TBCDField
      FieldName = 'CPITN3VLRUNITLUCR'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNITLUCR'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCOITN2ICMSALIQ: TBCDField
      FieldName = 'COITN2ICMSALIQ'
      Origin = 'DB.CUPOMITEM.COITN2ICMSALIQ'
      Precision = 15
      Size = 3
    end
  end
  object PipeApurICMSCredEntrResSint: TppBDEPipeline
    DataSource = DSTblApurICMSCredEntrRes
    CloseDataSource = True
    UserName = 'PipeApurICMSCredEntrResSint'
    Left = 262
    Top = 136
    object PipeApurICMSCredEntrResSintppField1: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object PipeApurICMSCredEntrResSintppField2: TppField
      FieldAlias = 'AnoMes'
      FieldName = 'AnoMes'
      FieldLength = 6
      DisplayWidth = 6
      Position = 1
    end
    object PipeApurICMSCredEntrResSintppField3: TppField
      FieldAlias = 'UF_CFOP'
      FieldName = 'UF_CFOP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object PipeApurICMSCredEntrResSintppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VlrContabil'
      FieldName = 'VlrContabil'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PipeApurICMSCredEntrResSintppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ImpCredDeb'
      FieldName = 'ImpCredDeb'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object PipeApurICMSCredEntrResSintppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'BaseCalc'
      FieldName = 'BaseCalc'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object PipeApurICMSCredEntrResSintppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'IsentoNaoTrib'
      FieldName = 'IsentoNaoTrib'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object PipeApurICMSCredEntrResSintppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Outras'
      FieldName = 'Outras'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
  end
  object ReportApuracao: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    Left = 377
    Top = 136
    Version = '6.02'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object NomeEmpresa: TppLabel
        UserName = 'NomeEmpresa'
        Caption = 'NomeEmpresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 16404
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ReportCredDeb_UfCFOP_Sint: TppSubReport
        UserName = 'ReportCredDeb_UfCFOP_Sint'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'PipeApurICMSCredEntrResSint'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeApurICMSCredEntrResSint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'PipeApurICMSCredEntrResSint'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'UF_CFOP'
              DataPipeline = PipeApurICMSCredEntrResSint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 8202
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppLabel1: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Caption = '* UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4234
              mmLeft = 529
              mmTop = 0
              mmWidth = 6477
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'VlrContabil'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 78580
              mmTop = 3967
              mmWidth = 19845
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'ImpCredDeb'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 99748
              mmTop = 3967
              mmWidth = 33866
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'BaseCalc'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 135202
              mmTop = 3967
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 153459
              mmTop = 3967
              mmWidth = 21166
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'Outras'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 175685
              mmTop = 3967
              mmWidth = 21166
              BandType = 4
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              AutoSize = False
              Caption = '* Subsubtotal *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 3969
              mmWidth = 24871
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 9525
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              UserName = 'Label12'
              AutoSize = False
              Caption = '*** Total ***'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 5292
              mmWidth = 24871
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              DataField = 'VlrContabil'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 78581
              mmTop = 5292
              mmWidth = 19844
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              DataField = 'ImpCredDeb'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 99748
              mmTop = 5292
              mmWidth = 33867
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              DataField = 'BaseCalc'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 135202
              mmTop = 5292
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 5292
              mmWidth = 21167
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              DataField = 'Outras'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 175684
              mmTop = 5292
              mmWidth = 21167
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'Tipo'
            DataPipeline = PipeApurICMSCredEntrResSint
            NewPage = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeApurICMSCredEntrResSint'
            object ppGroupHeaderBand1: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand1BeforePrint
              mmBottomOffset = 0
              mmHeight = 49213
              mmPrintPosition = 0
              object LabelTipo: TppLabel
                UserName = 'LabelTipo'
                AutoSize = False
                Caption = 'CFO: CREDITO/ENTRADAS - ANO/MES:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 42069
                mmWidth = 51329
                BandType = 3
                GroupNo = 0
              end
              object ppDBText3: TppDBText
                UserName = 'DBText3'
                DataField = 'AnoMes'
                DataPipeline = PipeApurICMSCredEntrResSint
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 51594
                mmTop = 42069
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
              end
              object ppLabel19: TppLabel
                UserName = 'Label19'
                AutoSize = False
                Caption = 'OPERACAO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 41540
                mmTop = 21696
                mmWidth = 16140
                BandType = 3
                GroupNo = 0
              end
              object ppLabel20: TppLabel
                UserName = 'Label20'
                AutoSize = False
                Caption = 'NRO.NF'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 58473
                mmTop = 21696
                mmWidth = 18521
                BandType = 3
                GroupNo = 0
              end
              object ppLabel21: TppLabel
                UserName = 'Label21'
                AutoSize = False
                Caption = 'VALORES CONT'#193'BEIS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 78581
                mmTop = 21696
                mmWidth = 19844
                BandType = 3
                GroupNo = 0
              end
              object ppLabel22: TppLabel
                UserName = 'Label22'
                AutoSize = False
                Caption = 'IMPOSTO CREDITADO OU DEBITADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 99748
                mmTop = 21696
                mmWidth = 33867
                BandType = 3
                GroupNo = 0
              end
              object ppLabel23: TppLabel
                UserName = 'Label102'
                AutoSize = False
                Caption = 'BASE DE CALCULO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 135202
                mmTop = 21696
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
              object ppLabel24: TppLabel
                UserName = 'Label24'
                AutoSize = False
                Caption = 'ISENTO OU NAO TRIBUTADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 153459
                mmTop = 21696
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object ppLabel25: TppLabel
                UserName = 'Label25'
                AutoSize = False
                Caption = 'OUTRAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 175684
                mmTop = 21696
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object ppLabel26: TppLabel
                UserName = 'Label26'
                AutoSize = False
                Caption = 'REGISTRO DE APURACAO DO ICMS (icm guia.frm)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 8202
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel27: TppLabel
                UserName = 'Label27'
                AutoSize = False
                Caption = 
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '--------'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 16933
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel28: TppLabel
                UserName = 'Label28'
                AutoSize = False
                Caption = 
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '--------'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 27781
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel18: TppLabel
                UserName = 'Label18'
                AutoSize = False
                Caption = 'SERIE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 31485
                mmTop = 21696
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
              end
              object ppLabel17: TppLabel
                UserName = 'Label17'
                AutoSize = False
                Caption = 'CFOP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 20108
                mmTop = 21696
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel2: TppLabel
                UserName = 'Label2'
                AutoSize = False
                Caption = 'DATA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 21696
                mmWidth = 10583
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable2: TppSystemVariable
                UserName = 'SystemVariable2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 4233
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLabel29: TppLabel
                UserName = 'Label29'
                AutoSize = False
                Caption = 'PAGINA:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 265
                mmWidth = 12435
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable1: TppSystemVariable
                UserName = 'SystemVariable1'
                AutoSize = False
                VarType = vtPageNo
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 14023
                mmTop = 265
                mmWidth = 22754
                BandType = 3
                GroupNo = 0
              end
              object PeriodoRel1: TppLabel
                UserName = 'PeriodoRel1'
                AutoSize = False
                Caption = 'UNIT: FPE DE DD/MM/YYYY A DD/MM/YYYY'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 66411
                mmTop = 0
                mmWidth = 68792
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 9525
              mmPrintPosition = 0
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                DataField = 'VlrContabil'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4234
                mmLeft = 78580
                mmTop = 5291
                mmWidth = 19845
                BandType = 5
                GroupNo = 0
              end
              object ppLabel11: TppLabel
                UserName = 'Label101'
                AutoSize = False
                Caption = '** Subtotal **'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 5292
                mmWidth = 24871
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
                DataField = 'ImpCredDeb'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 99748
                mmTop = 5292
                mmWidth = 33866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc3: TppDBCalc
                UserName = 'DBCalc3'
                DataField = 'BaseCalc'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 135202
                mmTop = 5292
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                DataField = 'IsentoNaoTrib'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 153459
                mmTop = 5292
                mmWidth = 21166
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc5: TppDBCalc
                UserName = 'DBCalc5'
                DataField = 'Outras'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 175684
                mmTop = 5292
                mmWidth = 21167
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object ReportRegApuraMes: TppSubReport
        UserName = 'ReportRegApuraMes'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        ShiftRelativeTo = ReportCredDeb_UfCFOP_Sint
        TraverseAllData = False
        DataPipelineName = 'PipeApurMes'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 4496
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = PipeApurMes
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'PipeApurMes'
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText9: TppDBText
              UserName = 'DBText1'
              DataField = 'CodCFOP'
              DataPipeline = PipeApurMes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 7408
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText4'
              DataField = 'VlrContabil'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 78581
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText5'
              DataField = 'ImpCredDeb'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 118798
              mmTop = 0
              mmWidth = 34925
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText6'
              DataField = 'BaseCalc'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 99748
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText2'
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText7'
              DataField = 'Outras'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 175684
              mmTop = 0
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'DescrCFOP'
              DataPipeline = PipeApurMes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 8731
              mmTop = 0
              mmWidth = 68263
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
          end
          object ppGroup2: TppGroup
            BreakName = 'Tipo'
            DataPipeline = PipeApurMes
            NewPage = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeApurMes'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand2BeforePrint
              mmBottomOffset = 0
              mmHeight = 37042
              mmPrintPosition = 0
              object ppLabel5: TppLabel
                UserName = 'Label5'
                AutoSize = False
                Caption = 'VLR.CONT'#193'BIL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 4233
                mmLeft = 69321
                mmTop = 25929
                mmWidth = 29104
                BandType = 3
                GroupNo = 0
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                AutoSize = False
                Caption = 'VLR.IMPOSTO |'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 118798
                mmTop = 29369
                mmWidth = 34925
                BandType = 3
                GroupNo = 0
              end
              object ppLabel7: TppLabel
                UserName = 'Label7'
                AutoSize = False
                Caption = '| BASE CALC.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 99748
                mmTop = 29369
                mmWidth = 19315
                BandType = 3
                GroupNo = 0
              end
              object ppLabel8: TppLabel
                UserName = 'Label8'
                AutoSize = False
                Caption = 'ISENTAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 153459
                mmTop = 29369
                mmWidth = 22490
                BandType = 3
                GroupNo = 0
              end
              object ppLabel9: TppLabel
                UserName = 'Label9'
                AutoSize = False
                Caption = 'OUTRAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 175684
                mmTop = 29369
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object LabelTipo2: TppLabel
                UserName = 'LabelTipo2'
                AutoSize = False
                Caption = 'REGISTRO DE ICMS MENSAL - ENTRADAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 0
                mmWidth = 63712
                BandType = 3
                GroupNo = 0
              end
              object NomeEmpresa2: TppLabel
                UserName = 'NomeEmpresa2'
                Caption = 'NomeEmpresa2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 9260
                mmWidth = 24342
                BandType = 3
                GroupNo = 0
              end
              object CGCEMpresa2: TppLabel
                UserName = 'CGCEMpresa2'
                Caption = 'CGCEMpresa2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 13758
                mmWidth = 16298
                BandType = 3
                GroupNo = 0
              end
              object ppLabel3: TppLabel
                UserName = 'Label3'
                Caption = 'Pagina:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 172773
                mmTop = 5292
                mmWidth = 10319
                BandType = 3
                GroupNo = 0
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                Caption = 'Modalidade:GERAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 169598
                mmTop = 9260
                mmWidth = 26988
                BandType = 3
                GroupNo = 0
              end
              object Periodo2: TppLabel
                UserName = 'Periodo2'
                Caption = 'Periodo de: dd/mm/yyyy a dd/mm/yyyy'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 144727
                mmTop = 13229
                mmWidth = 51858
                BandType = 3
                GroupNo = 0
              end
              object ppLabel13: TppLabel
                UserName = 'Label13'
                AutoSize = False
                Caption = '| OPERACAOES C/CREDITO IMPOSTO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 99748
                mmTop = 22490
                mmWidth = 53975
                BandType = 3
                GroupNo = 0
              end
              object ppLabel14: TppLabel
                UserName = 'Label14'
                AutoSize = False
                Caption = '| ISENTAS OU NAO TRIBUTADAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 153459
                mmTop = 22490
                mmWidth = 43392
                BandType = 3
                GroupNo = 0
              end
              object ppLabel15: TppLabel
                UserName = 'Label15'
                AutoSize = False
                Caption = 
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '--------'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4234
                mmLeft = 0
                mmTop = 18521
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel16: TppLabel
                UserName = 'Label16'
                AutoSize = False
                Caption = 
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '--------'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 32808
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel30: TppLabel
                UserName = 'Label30'
                AutoSize = False
                Caption = 
                  '|---------------------------------------------------------------' +
                  '---'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 99748
                mmTop = 25928
                mmWidth = 97102
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
            end
          end
        end
      end
      object RptCD_UfCFOP_Ana: TppSubReport
        UserName = 'RptCD_UfCFOP_Ana'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        ShiftRelativeTo = ReportRegApuraMes
        TraverseAllData = False
        DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 8996
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = PipeCredDeb_UfCFOP_Ana
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText15: TppDBText
              UserName = 'DBText4'
              DataField = 'VlrContabil'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 78581
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText5'
              DataField = 'ImpCredDeb'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 99748
              mmTop = 0
              mmWidth = 33867
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText6'
              DataField = 'BaseCalc'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 135202
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText2'
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 0
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText7'
              DataField = 'Outras'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 175685
              mmTop = 0
              mmWidth = 21166
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              DataField = 'Data'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 15346
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              DataField = 'CFOP'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 20108
              mmTop = 0
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              DataField = 'Serie'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 29104
              mmTop = 0
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'Operacao'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 38365
              mmTop = 0
              mmWidth = 22225
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'NumNF_Cup'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 62177
              mmTop = 0
              mmWidth = 14816
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 9525
            mmPrintPosition = 0
            object ppLabel33: TppLabel
              UserName = 'Label12'
              AutoSize = False
              Caption = '*** Total ***'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 5292
              mmWidth = 24871
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc6'
              DataField = 'VlrContabil'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 78581
              mmTop = 5292
              mmWidth = 19844
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc7'
              DataField = 'ImpCredDeb'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 99748
              mmTop = 5292
              mmWidth = 33867
              BandType = 7
            end
            object ppDBCalc13: TppDBCalc
              UserName = 'DBCalc8'
              DataField = 'BaseCalc'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 135202
              mmTop = 5292
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc14: TppDBCalc
              UserName = 'DBCalc9'
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 5292
              mmWidth = 21167
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc10'
              DataField = 'Outras'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 175685
              mmTop = 5292
              mmWidth = 21166
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'Tipo'
            DataPipeline = PipeCredDeb_UfCFOP_Ana
            NewPage = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
            object ppGroupHeaderBand3: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand1BeforePrint
              mmBottomOffset = 0
              mmHeight = 49213
              mmPrintPosition = 0
              object ppLabel34: TppLabel
                UserName = 'LabelTipo'
                AutoSize = False
                Caption = 'CFO: CREDITO/ENTRADAS - ANO/MES:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 42069
                mmWidth = 51329
                BandType = 3
                GroupNo = 0
              end
              object ppDBText21: TppDBText
                UserName = 'DBText3'
                DataField = 'AnoMes'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 51594
                mmTop = 42069
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
              end
              object ppLabel35: TppLabel
                UserName = 'Label19'
                AutoSize = False
                Caption = 'OPERACAO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 38365
                mmTop = 21696
                mmWidth = 22225
                BandType = 3
                GroupNo = 0
              end
              object ppLabel36: TppLabel
                UserName = 'Label20'
                AutoSize = False
                Caption = 'NRO.NF'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 62177
                mmTop = 21696
                mmWidth = 14816
                BandType = 3
                GroupNo = 0
              end
              object ppLabel37: TppLabel
                UserName = 'Label21'
                AutoSize = False
                Caption = 'VALORES CONT'#193'BEIS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 78581
                mmTop = 21696
                mmWidth = 19844
                BandType = 3
                GroupNo = 0
              end
              object ppLabel38: TppLabel
                UserName = 'Label22'
                AutoSize = False
                Caption = 'IMPOSTO CREDITADO OU DEBITADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 99748
                mmTop = 21696
                mmWidth = 33867
                BandType = 3
                GroupNo = 0
              end
              object ppLabel39: TppLabel
                UserName = 'Label102'
                AutoSize = False
                Caption = 'BASE DE CALCULO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 135202
                mmTop = 21696
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
              object ppLabel40: TppLabel
                UserName = 'Label24'
                AutoSize = False
                Caption = 'ISENTO OU NAO TRIBUTADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 153459
                mmTop = 21696
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object ppLabel41: TppLabel
                UserName = 'Label25'
                AutoSize = False
                Caption = 'OUTRAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 175684
                mmTop = 21696
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object ppLabel42: TppLabel
                UserName = 'Label26'
                AutoSize = False
                Caption = 'REGISTRO DE APURACAO DO ICMS (icm guia.frm)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 8996
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel43: TppLabel
                UserName = 'Label27'
                AutoSize = False
                Caption = 
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '--------'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 17727
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel44: TppLabel
                UserName = 'Label28'
                AutoSize = False
                Caption = 
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '--------'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 28575
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel45: TppLabel
                UserName = 'Label18'
                AutoSize = False
                Caption = 'SERIE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 29104
                mmTop = 21696
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
              end
              object ppLabel46: TppLabel
                UserName = 'Label17'
                AutoSize = False
                Caption = 'CFOP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 20108
                mmTop = 21696
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel47: TppLabel
                UserName = 'Label2'
                AutoSize = False
                Caption = 'DATA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 21696
                mmWidth = 10583
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable3: TppSystemVariable
                UserName = 'SystemVariable2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 5027
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLabel48: TppLabel
                UserName = 'Label29'
                AutoSize = False
                Caption = 'PAGINA:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 1058
                mmWidth = 12435
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable4: TppSystemVariable
                UserName = 'SystemVariable1'
                AutoSize = False
                VarType = vtPageNo
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 14023
                mmTop = 1058
                mmWidth = 22754
                BandType = 3
                GroupNo = 0
              end
              object Periodo3: TppLabel
                UserName = 'Periodo3'
                AutoSize = False
                Caption = 'UNIT: FPE DE DD/MM/YYYY A DD/MM/YYYY'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 68527
                mmTop = 1058
                mmWidth = 68792
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 9525
              mmPrintPosition = 0
              object ppDBCalc16: TppDBCalc
                UserName = 'DBCalc1'
                DataField = 'VlrContabil'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 78581
                mmTop = 5292
                mmWidth = 19844
                BandType = 5
                GroupNo = 0
              end
              object ppLabel49: TppLabel
                UserName = 'Label101'
                AutoSize = False
                Caption = '** Subtotal **'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 5292
                mmWidth = 24871
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc17: TppDBCalc
                UserName = 'DBCalc2'
                DataField = 'ImpCredDeb'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 99748
                mmTop = 5292
                mmWidth = 33867
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc18: TppDBCalc
                UserName = 'DBCalc3'
                DataField = 'BaseCalc'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 135202
                mmTop = 5292
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc19: TppDBCalc
                UserName = 'DBCalc4'
                DataField = 'IsentoNaoTrib'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 153459
                mmTop = 5292
                mmWidth = 21167
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc20: TppDBCalc
                UserName = 'DBCalc5'
                DataField = 'Outras'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 175685
                mmTop = 5292
                mmWidth = 21166
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'UF_CFOP'
            DataPipeline = PipeCredDeb_UfCFOP_Ana
            KeepTogether = True
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
              object ppLabel31: TppLabel
                UserName = 'Label1'
                AutoSize = False
                Caption = '* UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 0
                mmWidth = 6350
                BandType = 3
                GroupNo = 1
              end
              object ppDBText8: TppDBText
                UserName = 'DBText1'
                DataField = 'UF_CFOP'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 7673
                mmTop = 0
                mmWidth = 17198
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
              object ppLabel32: TppLabel
                UserName = 'Label10'
                AutoSize = False
                Caption = '* Subsubtotal *'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 1323
                mmWidth = 24871
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc21: TppDBCalc
                UserName = 'DBCalc21'
                DataField = 'VlrContabil'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 78581
                mmTop = 1323
                mmWidth = 19844
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc22'
                DataField = 'ImpCredDeb'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 99748
                mmTop = 1323
                mmWidth = 33867
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc23: TppDBCalc
                UserName = 'DBCalc23'
                DataField = 'BaseCalc'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 135202
                mmTop = 1323
                mmWidth = 17198
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc24: TppDBCalc
                UserName = 'DBCalc24'
                DataField = 'IsentoNaoTrib'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 21167
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc25: TppDBCalc
                UserName = 'DBCalc25'
                DataField = 'Outras'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 175685
                mmTop = 1323
                mmWidth = 21166
                BandType = 5
                GroupNo = 1
              end
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
    end
  end
  object DSTblApurICMSCredEntrRes: TDataSource
    DataSet = TblCredDeb_UfCFOP_Sint
    Left = 186
    Top = 136
  end
  object SQLNotaCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  NOTACOMPRA'
      'where'
      '  NOCPCSTATUS = '#39'E'#39' and'
      '  (%MEmpresa) and'
      '  (%MData)')
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
      end>
    Left = 49
    Top = 92
    object SQLNotaCompraNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTACOMPRA.EMPRICOD'
    end
    object SQLNotaCompraNOCPICOD: TIntegerField
      FieldName = 'NOCPICOD'
      Origin = 'DB.NOTACOMPRA.NOCPICOD'
    end
    object SQLNotaCompraFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTACOMPRA.FORNICOD'
    end
    object SQLNotaCompraNOCPA4ANO: TStringField
      FieldName = 'NOCPA4ANO'
      Origin = 'DB.NOTACOMPRA.NOCPA4ANO'
      FixedChar = True
      Size = 4
    end
    object SQLNotaCompraNOCPA5SERIE: TStringField
      FieldName = 'NOCPA5SERIE'
      Origin = 'DB.NOTACOMPRA.NOCPA5SERIE'
      FixedChar = True
      Size = 5
    end
    object SQLNotaCompraNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraNOCPCSTATUS: TStringField
      FieldName = 'NOCPCSTATUS'
      Origin = 'DB.NOTACOMPRA.NOCPCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.NOTACOMPRA.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTACOMPRA.OPESICOD'
    end
    object SQLNotaCompraNOCPDEMISSAO: TDateTimeField
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
    end
    object SQLNotaCompraNOCPN3SOMAITENS: TBCDField
      FieldName = 'NOCPN3SOMAITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3SOMAITENS'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3TOTITENS: TBCDField
      FieldName = 'NOCPN3TOTITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTITENS'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3TOTDESC: TBCDField
      FieldName = 'NOCPN3TOTDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRTOTNOTA: TBCDField
      FieldName = 'NOCPN3VLRTOTNOTA'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRTOTNOTA'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRBASCALICM: TBCDField
      FieldName = 'NOCPN3VLRBASCALICM'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBASCALICM'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRICMS: TBCDField
      FieldName = 'NOCPN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRBCICMSSUB: TBCDField
      FieldName = 'NOCPN3VLRBCICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBCICMSSUB'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRICMSSUB: TBCDField
      FieldName = 'NOCPN3VLRICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMSSUB'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRFRETE: TBCDField
      FieldName = 'NOCPN3VLRFRETE'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRSEGURO: TBCDField
      FieldName = 'NOCPN3VLRSEGURO'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRSEGURO'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLROUTRADESP: TBCDField
      FieldName = 'NOCPN3VLROUTRADESP'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLROUTRADESP'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRIPI: TBCDField
      FieldName = 'NOCPN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPN3VLRDESC: TBCDField
      FieldName = 'NOCPN3VLRDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraNOCPDRECEBIMENTO: TDateTimeField
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
    end
    object SQLNotaCompraCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTACOMPRA.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
  end
  object SQLNotaCompraItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NOTACOMPRAITEM'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 186
    Top = 92
    object SQLNotaCompraItemNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRAITEM.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraItemNOCIIITEM: TIntegerField
      FieldName = 'NOCIIITEM'
      Origin = 'DB.NOTACOMPRAITEM.NOCIIITEM'
    end
    object SQLNotaCompraItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTACOMPRAITEM.PRODICOD'
    end
    object SQLNotaCompraItemNOCIN3QTDBONIF: TBCDField
      FieldName = 'NOCIN3QTDBONIF'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDBONIF'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3CAPEMBAL: TBCDField
      FieldName = 'NOCIN3CAPEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3CAPEMBAL'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3QTDEMBAL: TBCDField
      FieldName = 'NOCIN3QTDEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEMBAL'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3QTDEPED: TBCDField
      FieldName = 'NOCIN3QTDEPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEPED'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3TOTPED: TBCDField
      FieldName = 'NOCIN3TOTPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3TOTPED'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLREMBAL: TBCDField
      FieldName = 'NOCIN3VLREMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLREMBAL'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLRUNIT: TBCDField
      FieldName = 'NOCIN3VLRUNIT'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLRDESC: TBCDField
      FieldName = 'NOCIN3VLRDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3PERCDESC: TBCDField
      FieldName = 'NOCIN3PERCDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLRICMS: TBCDField
      FieldName = 'NOCIN3VLRICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3PERCICMS: TBCDField
      FieldName = 'NOCIN3PERCICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLRSUBST: TBCDField
      FieldName = 'NOCIN3VLRSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRSUBST'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLRIPI: TBCDField
      FieldName = 'NOCIN3VLRIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3PERCIPI: TBCDField
      FieldName = 'NOCIN3PERCIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLRCUSTOMED: TBCDField
      FieldName = 'NOCIN3VLRCUSTOMED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRCUSTOMED'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItemNOCIN3VLRFRETE: TBCDField
      FieldName = 'NOCIN3VLRFRETE'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRFRETE'
      Precision = 15
      Size = 3
    end
  end
  object TblApurICMSMensal: TTable
    OnNewRecord = TblApurICMSMensalNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'ApurICMSMensal.DB'
    Left = 49
    Top = 181
    object TblApurICMSMensalTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object TblApurICMSMensalAnoMes: TStringField
      FieldName = 'AnoMes'
      Size = 6
    end
    object TblApurICMSMensalCodCFOP: TStringField
      FieldName = 'CodCFOP'
      Size = 5
    end
    object TblApurICMSMensalDescrCFOP: TStringField
      DisplayWidth = 80
      FieldName = 'DescrCFOP'
      Size = 80
    end
    object TblApurICMSMensalVlrContabil: TFloatField
      FieldName = 'VlrContabil'
    end
    object TblApurICMSMensalImpCredDeb: TFloatField
      FieldName = 'ImpCredDeb'
    end
    object TblApurICMSMensalBaseCalc: TFloatField
      FieldName = 'BaseCalc'
    end
    object TblApurICMSMensalIsentoNaoTrib: TFloatField
      FieldName = 'IsentoNaoTrib'
    end
    object TblApurICMSMensalOutras: TFloatField
      FieldName = 'Outras'
    end
  end
  object DSTblApurICMSMensal: TDataSource
    DataSet = TblApurICMSMensal
    Left = 186
    Top = 181
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CFOP'
      'order by CFOPA5COD')
    Macros = <>
    Left = 49
    Top = 6
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object PipeApurMes: TppBDEPipeline
    DataSource = DSTblApurICMSMensal
    CloseDataSource = True
    UserName = 'PipeApurMes'
    Left = 262
    Top = 181
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 186
    Top = 4
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
  end
  object TblCredDeb_UfCFOP_Ana: TTable
    OnNewRecord = TblCredDeb_UfCFOP_AnaNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CredDeb_UfCFOP_Ana.DB'
    Left = 49
    Top = 226
    object TblCredDeb_UfCFOP_AnaTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object TblCredDeb_UfCFOP_AnaAnoMes: TStringField
      FieldName = 'AnoMes'
      Size = 6
    end
    object TblCredDeb_UfCFOP_AnaData: TDateField
      FieldName = 'Data'
    end
    object TblCredDeb_UfCFOP_AnaUF_CFOP: TStringField
      DisplayWidth = 10
      FieldName = 'UF_CFOP'
      Size = 10
    end
    object TblCredDeb_UfCFOP_AnaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object TblCredDeb_UfCFOP_AnaSerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object TblCredDeb_UfCFOP_AnaOperacao: TStringField
      FieldName = 'Operacao'
      Size = 30
    end
    object TblCredDeb_UfCFOP_AnaNumNF_Cup: TStringField
      FieldName = 'NumNF_Cup'
      Size = 6
    end
    object TblCredDeb_UfCFOP_AnaVlrContabil: TFloatField
      FieldName = 'VlrContabil'
    end
    object TblCredDeb_UfCFOP_AnaImpCredDeb: TFloatField
      FieldName = 'ImpCredDeb'
    end
    object TblCredDeb_UfCFOP_AnaBaseCalc: TFloatField
      FieldName = 'BaseCalc'
    end
    object TblCredDeb_UfCFOP_AnaIsentoNaoTrib: TFloatField
      FieldName = 'IsentoNaoTrib'
    end
    object TblCredDeb_UfCFOP_AnaOutras: TFloatField
      FieldName = 'Outras'
    end
  end
  object DSTblCredDeb_UfCFOP_Ana: TDataSource
    DataSet = TblCredDeb_UfCFOP_Ana
    Left = 186
    Top = 226
  end
  object PipeCredDeb_UfCFOP_Ana: TppBDEPipeline
    DataSource = DSTblCredDeb_UfCFOP_Ana
    CloseDataSource = True
    UserName = 'PipeCredDeb_UfCFOP_Ana'
    Left = 262
    Top = 226
    object PipeCredDeb_UfCFOP_AnappField1: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object PipeCredDeb_UfCFOP_AnappField2: TppField
      FieldAlias = 'AnoMes'
      FieldName = 'AnoMes'
      FieldLength = 6
      DisplayWidth = 6
      Position = 1
    end
    object PipeCredDeb_UfCFOP_AnappField3: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object PipeCredDeb_UfCFOP_AnappField4: TppField
      FieldAlias = 'UF_CFOP'
      FieldName = 'UF_CFOP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object PipeCredDeb_UfCFOP_AnappField5: TppField
      FieldAlias = 'CFOP'
      FieldName = 'CFOP'
      FieldLength = 5
      DisplayWidth = 5
      Position = 4
    end
    object PipeCredDeb_UfCFOP_AnappField6: TppField
      FieldAlias = 'Serie'
      FieldName = 'Serie'
      FieldLength = 5
      DisplayWidth = 5
      Position = 5
    end
    object PipeCredDeb_UfCFOP_AnappField7: TppField
      FieldAlias = 'Operacao'
      FieldName = 'Operacao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object PipeCredDeb_UfCFOP_AnappField8: TppField
      FieldAlias = 'NumNF_Cup'
      FieldName = 'NumNF_Cup'
      FieldLength = 6
      DisplayWidth = 6
      Position = 7
    end
    object PipeCredDeb_UfCFOP_AnappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VlrContabil'
      FieldName = 'VlrContabil'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object PipeCredDeb_UfCFOP_AnappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ImpCredDeb'
      FieldName = 'ImpCredDeb'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object PipeCredDeb_UfCFOP_AnappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'BaseCalc'
      FieldName = 'BaseCalc'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object PipeCredDeb_UfCFOP_AnappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'IsentoNaoTrib'
      FieldName = 'IsentoNaoTrib'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object PipeCredDeb_UfCFOP_AnappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Outras'
      FieldName = 'Outras'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
  end
  object SQLIcms: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ICMS'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 262
    Top = 4
    object SQLIcmsICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.ICMS.ICMSICOD'
    end
    object SQLIcmsICMSN2ALIQUOTA: TBCDField
      FieldName = 'ICMSN2ALIQUOTA'
      Origin = 'DB.ICMS.ICMSN2ALIQUOTA'
      Precision = 15
      Size = 3
    end
    object SQLIcmsICMSN2PERCSUBSTSAI: TBCDField
      FieldName = 'ICMSN2PERCSUBSTSAI'
      Origin = 'DB.ICMS.ICMSN2PERCSUBSTSAI'
      Precision = 15
      Size = 3
    end
    object SQLIcmsICMSN2PERCSUBSTENT: TBCDField
      FieldName = 'ICMSN2PERCSUBSTENT'
      Origin = 'DB.ICMS.ICMSN2PERCSUBSTENT'
      Precision = 15
      Size = 3
    end
    object SQLIcmsICMSN2PERCREDUCAO: TBCDField
      FieldName = 'ICMSN2PERCREDUCAO'
      Origin = 'DB.ICMS.ICMSN2PERCREDUCAO'
      Precision = 15
      Size = 3
    end
    object SQLIcmsICMSICODSITTRIB: TIntegerField
      FieldName = 'ICMSICODSITTRIB'
      Origin = 'DB.ICMS.ICMSICODSITTRIB'
    end
    object SQLIcmsICMSA60DESCR: TStringField
      FieldName = 'ICMSA60DESCR'
      Origin = 'DB.ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  PRODICOD, ICMSICOD'
      'from '
      '  PRODUTO'
      'where '
      '  %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 262
    Top = 49
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
  end
end
