object FormTelaImpressaoCarne: TFormTelaImpressaoCarne
  Left = 303
  Top = 174
  Width = 242
  Height = 116
  BorderIcons = []
  Caption = 'FormTelaImpressaoCarne'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object CarneJonas: TppReport
    AutoStop = False
    DataPipeline = BDEPipeCarne
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Carn'#234
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 5350
    PrinterSetup.mmMarginRight = 5350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 220000
    PrinterSetup.mmPaperWidth = 95000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Printer'
    ShowPrintDialog = False
    Left = 41
    Top = 13
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'BDEPipeCarne'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 51594
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'CGC:93.685.618/0001-131'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15081
        mmWidth = 34078
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'IE:058/0058'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 57150
        mmTop = 15081
        mmWidth = 16298
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        ParentWidth = True
        Weight = 0.400000005960464
        mmHeight = 265
        mmLeft = 0
        mmTop = 19844
        mmWidth = 84300
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'JONAS MODAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 2117
        mmWidth = 83873
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'RUA SAO JOSE, 455'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 6615
        mmWidth = 25188
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = '92500-002'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 57415
        mmTop = 6615
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'GUAIBA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 11113
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'CENTRO-RS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 57150
        mmTop = 10583
        mmWidth = 13335
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'Parcela2'
        AutoSize = True
        DataField = 'Cliente'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 29369
        mmWidth = 10372
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Endereco'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 33338
        mmWidth = 81492
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Cidade'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 37306
        mmWidth = 40217
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Bairro'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 42333
        mmTop = 37306
        mmWidth = 41540
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        ParentWidth = True
        Weight = 0.400000005960464
        mmHeight = 265
        mmLeft = 0
        mmTop = 50006
        mmWidth = 84300
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText9'
        DataField = 'DataEmissao'
        DataPipeline = BDEPipeCarne
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 41275
        mmWidth = 26194
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText17'
        DataField = 'Plano'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 45244
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Data........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 41275
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 41275
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Plano.......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 45244
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Contrato....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 20902
        mmWidth = 17727
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'NumeroContrato'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 20902
        mmWidth = 20743
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'C'#243'd.Cliente.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 25135
        mmWidth = 17727
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'CodigoCliente'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 25135
        mmWidth = 19262
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText18'
        DataField = 'TotalCupom'
        DataPipeline = BDEPipeCarne
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 41275
        mmWidth = 21960
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppParcela: TppDBText
        UserName = 'Parcela'
        DataField = 'NumeroParcela'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 15081
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DataVencimento'
        DataPipeline = BDEPipeCarne
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 20108
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ContratoParcelaValor'
        DataPipeline = BDEPipeCarne
        DisplayFormat = 'R$ #,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 10cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 0
        mmLeft = 59267
        mmTop = 20108
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ContratoCodigo'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 15081
        mmWidth = 0
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        CalcCheckDigit = False
        DataField = 'NumeroContrato'
        DataPipeline = BDEPipeCarne
        PrintHumanReadable = False
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Sans Serif 10cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 13229
        mmLeft = 21431
        mmTop = 1058
        mmWidth = 45773
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Vencto.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 19844
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Vlr.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 48683
        mmTop = 20108
        mmWidth = 10054
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Parc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15346
        mmTop = 15081
        mmWidth = 12171
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 38629
        mmTop = 15081
        mmWidth = 6350
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.400000005960464
        mmHeight = 265
        mmLeft = 0
        mmTop = 31750
        mmWidth = 84300
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'AUT.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 27517
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'ValorParcela'
        DataPipeline = BDEPipeCarne
        DisplayFormat = 'R$ #,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 59531
        mmTop = 20108
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'Parcela1'
        DataField = 'ContadorParcelas'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 15081
        mmWidth = 7673
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        ParentWidth = True
        Weight = 0.400000005960464
        mmHeight = 265
        mmLeft = 0
        mmTop = 19844
        mmWidth = 84300
        BandType = 7
      end
      object ppDBText20: TppDBText
        UserName = 'DBText19'
        DataField = 'Mensagem'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 17198
        mmLeft = 1058
        mmTop = 265
        mmWidth = 82815
        BandType = 7
      end
    end
  end
  object BDEPipeCarne: TppBDEPipeline
    DataSource = FormTelaFechamentoVenda.DSTblCarne
    CloseDataSource = True
    UserName = 'BDEPipeCarne'
    Left = 13
    Top = 13
  end
  object CarneCastelo: TppReport
    AutoStop = False
    DataPipeline = BDEPipeCarne
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Carn'#234
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 5350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 79000
    PrinterSetup.mmPaperWidth = 220000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Printer'
    ShowPrintDialog = False
    Left = 69
    Top = 13
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'BDEPipeCarne'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 74613
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'Parcela'
        AutoSize = True
        DataField = 'NumeroParcela'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 67204
        mmWidth = 1482
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'DataVencimento'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 66411
        mmTop = 67204
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'ValorParcela'
        DataPipeline = BDEPipeCarne
        DisplayFormat = 'R$ #,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 119274
        mmTop = 67204
        mmWidth = 10372
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'NumeroContrato'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 67204
        mmWidth = 19262
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'CodigoCliente'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 67204
        mmWidth = 19262
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'Parcela2'
        DataField = 'Cliente'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 43127
        mmWidth = 119063
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText10'
        DataField = 'Endereco'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 47361
        mmWidth = 119063
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText101'
        DataField = 'Bairro'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 51594
        mmWidth = 119063
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        DataField = 'Cidade'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 55827
        mmWidth = 119063
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CodigoCliente'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 155311
        mmTop = 45773
        mmWidth = 19262
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'NumeroContrato'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 182827
        mmTop = 45773
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'Parcela1'
        AutoSize = True
        DataField = 'NumeroParcela'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 54769
        mmWidth = 1482
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'DataVencimento'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 54769
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'ValorParcela'
        DataPipeline = BDEPipeCarne
        DisplayFormat = 'R$ #,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 181451
        mmTop = 67204
        mmWidth = 10372
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label1'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 54769
        mmWidth = 1482
        BandType = 4
      end
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode2'
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'NumeroContrato'
        DataPipeline = BDEPipeCarne
        PrintHumanReadable = False
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 10054
        mmLeft = 147902
        mmTop = 25400
        mmWidth = 60061
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppDBText30: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'NumeroContrato'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 174890
        mmTop = 35719
        mmWidth = 19262
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        AutoSize = True
        DataField = 'ContadorParcelas'
        DataPipeline = BDEPipeCarne
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sanserif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'BDEPipeCarne'
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 54769
        mmWidth = 1482
        BandType = 4
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ContratoCodigo'
      KeepTogether = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end
