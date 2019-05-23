inherited FormRelatorioPrevendas: TFormRelatorioPrevendas
  Left = 421
  Top = 121
  Caption = 'Pr'#233' Vendas por Per'#237'odo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Height = 289
      inherited BtnVisualizar: TSpeedButton
        Top = 264
        Height = 23
      end
      object GroupBox8: TGroupBox
        Left = 12
        Top = 205
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
          Left = 7
          Top = 14
          Width = 386
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos'
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
    end
  end
  object ppListagem: TppReport
    AutoStop = False
    DataPipeline = PipePrincipal
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
    OnPreviewFormCreate = ppListagemPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 229
    Top = 5
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipePrincipal'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 28575
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Relat'#243'rio de Pre Vendas do Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 5027
        mmTop = 1588
        mmWidth = 71924
        BandType = 0
      end
      object ppLbEmpresa: TppLabel
        UserName = 'LbEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5292
        mmTop = 8202
        mmWidth = 14139
        BandType = 0
      end
      object pplbData: TppLabel
        UserName = 'LbEmpresa1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5292
        mmTop = 12435
        mmWidth = 7408
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 6085
        mmTop = 27781
        mmWidth = 187325
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 6879
        mmTop = 23813
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 63236
        mmTop = 23813
        mmWidth = 10626
        BandType = 0
      end
      object ppLbTerminal: TppLabel
        UserName = 'LbTerminal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Terminal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5292
        mmTop = 16933
        mmWidth = 13377
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 39158
        mmTop = 23813
        mmWidth = 6900
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Importado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 146579
        mmTop = 23548
        mmWidth = 15579
        BandType = 0
      end
    end
    object ppDetalheCabecalho: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 4498
        mmTop = 794
        mmWidth = 187590
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TERMICOD'
        DataPipeline = PipePrincipal
        DisplayFormat = '###000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 3598
        mmLeft = 5556
        mmTop = 2381
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRVDICOD'
        DataPipeline = PipePrincipal
        DisplayFormat = '######000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 3598
        mmLeft = 14023
        mmTop = 2381
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 12700
        mmTop = 2381
        mmWidth = 889
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDHVENDA'
        DataPipeline = PipePrincipal
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 3598
        mmLeft = 39158
        mmTop = 2381
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTENOME'
        DataPipeline = PipePrincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 3704
        mmLeft = 63500
        mmTop = 2381
        mmWidth = 82021
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRVDCIMPORT'
        DataPipeline = PipePrincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 3598
        mmLeft = 151077
        mmTop = 2381
        mmWidth = 6350
        BandType = 4
      end
      object ppItensVenda: TppSubReport
        UserName = 'ItensVenda'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipeItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8202
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeItens
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
          DataPipelineName = 'PipeItens'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Descri'#231#227'o do Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3810
              mmLeft = 12700
              mmTop = 1323
              mmWidth = 33105
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vlr Unitario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 87842
              mmTop = 1323
              mmWidth = 17145
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 110067
              mmTop = 1323
              mmWidth = 17526
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Desconto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 150019
              mmTop = 1323
              mmWidth = 14520
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vlr Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 132557
              mmTop = 1323
              mmWidth = 12488
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Liquiq'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 168275
              mmTop = 1323
              mmWidth = 17822
              BandType = 1
            end
          end
          object ppDetalheItens: TppDetailBand
            BeforePrint = ppDetalheItensBeforePrint
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppProduto: TppLabel
              UserName = 'Produto'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3598
              mmLeft = 12700
              mmTop = 529
              mmWidth = 11176
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN3QTD'
              DataPipeline = PipeItens
              DisplayFormat = '##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 3598
              mmLeft = 110596
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN3VLRUNIT'
              DataPipeline = PipeItens
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 3598
              mmLeft = 87842
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN2DESC'
              DataPipeline = PipeItens
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 3598
              mmLeft = 147638
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppTotalItem: TppLabel
              UserName = 'Produto1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3598
              mmLeft = 138907
              mmTop = 529
              mmWidth = 6223
              BandType = 4
            end
            object ppTotalitemLiq: TppLabel
              UserName = 'TotalitemLiq'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3598
              mmLeft = 179388
              mmTop = 265
              mmWidth = 6223
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            BeforePrint = ppSummaryBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              Shape = stRoundRect
              mmHeight = 5292
              mmLeft = 119592
              mmTop = 1058
              mmWidth = 73025
              BandType = 7
            end
            object ppDBCalcDesconto: TppDBCalc
              UserName = 'DBCalcDesconto'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PVITN2DESC'
              DataPipeline = PipeItens
              DisplayFormat = '##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItens'
              mmHeight = 3598
              mmLeft = 148167
              mmTop = 1852
              mmWidth = 17198
              BandType = 7
            end
            object ppTotalLiqGeral: TppLabel
              UserName = 'TotalitemLiq1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 179652
              mmTop = 1852
              mmWidth = 6350
              BandType = 7
            end
            object ppTotalBruto: TppLabel
              UserName = 'TotalBruto'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 138642
              mmTop = 1852
              mmWidth = 6350
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6350
        mmTop = 529
        mmWidth = 186267
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 16404
        mmLeft = 121709
        mmTop = 1852
        mmWidth = 70908
        BandType = 7
      end
      object ppTotalGeralBruto: TppLabel
        UserName = 'TotalGeralBruto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 3969
        mmWidth = 6350
        BandType = 7
      end
      object ppTotalGeralDesconto: TppLabel
        UserName = 'ppTotalGeralDesconto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 8202
        mmWidth = 6350
        BandType = 7
      end
      object ppTotalGeralLiquido: TppLabel
        UserName = 'ppTotalGeralLiquido'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 12700
        mmWidth = 6350
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'ppLabel2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr. Total Bruto R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 132292
        mmTop = 3969
        mmWidth = 25654
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr. Total Liqui  R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 132292
        mmTop = 12700
        mmWidth = 25696
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr. Total Desc R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 132292
        mmTop = 8202
        mmWidth = 25315
        BandType = 7
      end
    end
  end
  object zListagem: TZQuery
    Connection = DM.Zdb
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Prevenda')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 448
    Top = 5
    object zListagemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Required = True
    end
    object zListagemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Required = True
    end
    object zListagemCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object zListagemPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object zListagemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object zListagemCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
    end
    object zListagemPRVDN2TOTITENS: TFloatField
      FieldName = 'PRVDN2TOTITENS'
    end
    object zListagemPRVDN2DESC: TFloatField
      FieldName = 'PRVDN2DESC'
    end
    object zListagemPRVDN2ACRESC: TFloatField
      FieldName = 'PRVDN2ACRESC'
    end
    object zListagemPRVDN2TOTITENSRET: TFloatField
      FieldName = 'PRVDN2TOTITENSRET'
    end
    object zListagemPRVDCTIPOPADRAO: TStringField
      FieldName = 'PRVDCTIPOPADRAO'
      Size = 5
    end
    object zListagemPRVDN2CONVTAXA: TFloatField
      FieldName = 'PRVDN2CONVTAXA'
    end
    object zListagemPRVDINROORDCOMPRA: TIntegerField
      FieldName = 'PRVDINROORDCOMPRA'
    end
    object zListagemPRVDCIMPORT: TStringField
      FieldName = 'PRVDCIMPORT'
      Size = 1
    end
    object zListagemPRVDCMARCADO: TStringField
      FieldName = 'PRVDCMARCADO'
      Size = 1
    end
    object zListagemCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Size = 60
    end
    object zListagemCLIENTECNPJ: TStringField
      FieldName = 'CLIENTECNPJ'
    end
    object zListagemCLIENTEENDE: TStringField
      FieldName = 'CLIENTEENDE'
      Size = 60
    end
    object zListagemCLIENTEBAIRRO: TStringField
      FieldName = 'CLIENTEBAIRRO'
      Size = 60
    end
    object zListagemCLIENTECIDA: TStringField
      FieldName = 'CLIENTECIDA'
      Size = 30
    end
    object zListagemCLIENTEOBS: TStringField
      FieldName = 'CLIENTEOBS'
      Size = 60
    end
    object zListagemPDVDDHVENDA: TDateTimeField
      FieldName = 'PDVDDHVENDA'
    end
    object zListagemPDVCPRECONCLU: TStringField
      FieldName = 'PDVCPRECONCLU'
      Size = 1
    end
    object zListagemCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      Size = 15
    end
    object zListagemORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Size = 5
    end
  end
  object dszListagem: TDataSource
    AutoEdit = False
    DataSet = zListagem
    OnDataChange = dszListagemDataChange
    Left = 476
    Top = 5
  end
  object SQLTerminal: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from terminal')
    Left = 670
    Top = 5
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 698
    Top = 5
  end
  object PipePrincipal: TppDBPipeline
    DataSource = dszListagem
    OpenDataSource = False
    UserName = 'PipePrincipal'
    Left = 201
    Top = 5
    object PipePrincipalppField1: TppField
      FieldAlias = 'TERMICOD'
      FieldName = 'TERMICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField2: TppField
      FieldAlias = 'PRVDICOD'
      FieldName = 'PRVDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField3: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField4: TppField
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField5: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField6: TppField
      FieldAlias = 'CONVICOD'
      FieldName = 'CONVICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField7: TppField
      FieldAlias = 'PRVDN2TOTITENS'
      FieldName = 'PRVDN2TOTITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField8: TppField
      FieldAlias = 'PRVDN2DESC'
      FieldName = 'PRVDN2DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField9: TppField
      FieldAlias = 'PRVDN2ACRESC'
      FieldName = 'PRVDN2ACRESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField10: TppField
      FieldAlias = 'PRVDN2TOTITENSRET'
      FieldName = 'PRVDN2TOTITENSRET'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField11: TppField
      FieldAlias = 'PRVDCTIPOPADRAO'
      FieldName = 'PRVDCTIPOPADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField12: TppField
      FieldAlias = 'PRVDN2CONVTAXA'
      FieldName = 'PRVDN2CONVTAXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField13: TppField
      FieldAlias = 'PRVDINROORDCOMPRA'
      FieldName = 'PRVDINROORDCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField14: TppField
      FieldAlias = 'PRVDCIMPORT'
      FieldName = 'PRVDCIMPORT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField15: TppField
      FieldAlias = 'PRVDCMARCADO'
      FieldName = 'PRVDCMARCADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField16: TppField
      FieldAlias = 'CLIENTENOME'
      FieldName = 'CLIENTENOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField17: TppField
      FieldAlias = 'CLIENTECNPJ'
      FieldName = 'CLIENTECNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField18: TppField
      FieldAlias = 'CLIENTEENDE'
      FieldName = 'CLIENTEENDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField19: TppField
      FieldAlias = 'CLIENTECIDA'
      FieldName = 'CLIENTECIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField20: TppField
      FieldAlias = 'CLIENTEOBS'
      FieldName = 'CLIENTEOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField21: TppField
      FieldAlias = 'PDVDDHVENDA'
      FieldName = 'PDVDDHVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField22: TppField
      FieldAlias = 'PDVCPRECONCLU'
      FieldName = 'PDVCPRECONCLU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField23: TppField
      FieldAlias = 'CLIENTEFONE'
      FieldName = 'CLIENTEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField24: TppField
      FieldAlias = 'CLDPICOD'
      FieldName = 'CLDPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField25: TppField
      FieldAlias = 'ORIGEMVENDA'
      FieldName = 'ORIGEMVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField26: TppField
      FieldAlias = 'TROCO'
      FieldName = 'TROCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField27: TppField
      FieldAlias = 'CLIENTEBAIRRO'
      FieldName = 'CLIENTEBAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField28: TppField
      FieldAlias = 'CONTAICOD'
      FieldName = 'CONTAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField29: TppField
      FieldAlias = 'CUPOCLEVAR'
      FieldName = 'CUPOCLEVAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField30: TppField
      FieldAlias = 'DISPICOD'
      FieldName = 'DISPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField31: TppField
      FieldAlias = 'MESAICOD'
      FieldName = 'MESAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField32: TppField
      FieldAlias = 'MTBYICOD'
      FieldName = 'MTBYICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
  end
  object zListagemItem: TZQuery
    Connection = DM.Zdb
    CachedUpdates = False
    SQL.Strings = (
      'Select * from PrevendaItem'
      'order by PVITIPOS')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 516
    Top = 5
    object zListagemItemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Required = True
    end
    object zListagemItemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Required = True
    end
    object zListagemItemPVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Required = True
    end
    object zListagemItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object zListagemItemPVITN3QTD: TFloatField
      FieldName = 'PVITN3QTD'
    end
    object zListagemItemPVITN3VLRUNIT: TFloatField
      FieldName = 'PVITN3VLRUNIT'
    end
    object zListagemItemPVITN3VLRCUSTUNIT: TFloatField
      FieldName = 'PVITN3VLRCUSTUNIT'
    end
    object zListagemItemPVITN2DESC: TFloatField
      FieldName = 'PVITN2DESC'
    end
    object zListagemItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object zListagemItemPVITN3VLRUNITLUCR: TFloatField
      FieldName = 'PVITN3VLRUNITLUCR'
    end
    object zListagemItemPVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Size = 1
    end
    object zListagemItemPVITN2ICMSALIQ: TFloatField
      FieldName = 'PVITN2ICMSALIQ'
    end
    object zListagemItemPRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Size = 60
    end
    object zListagemItemPVITN3QTDTROCA: TFloatField
      FieldName = 'PVITN3QTDTROCA'
    end
  end
  object dszListagemItem: TDataSource
    AutoEdit = False
    DataSet = zListagemItem
    Left = 544
    Top = 5
  end
  object PipeItens: TppDBPipeline
    DataSource = dszListagemItem
    OpenDataSource = False
    UserName = 'PipeItens'
    Left = 201
    Top = 35
    object PipeItensppField1: TppField
      FieldAlias = 'TERMICOD'
      FieldName = 'TERMICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeItensppField2: TppField
      FieldAlias = 'PRVDICOD'
      FieldName = 'PRVDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeItensppField3: TppField
      FieldAlias = 'PVITIPOS'
      FieldName = 'PVITIPOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeItensppField4: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeItensppField5: TppField
      FieldAlias = 'PVITN3QTD'
      FieldName = 'PVITN3QTD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeItensppField6: TppField
      FieldAlias = 'PVITN3VLRUNIT'
      FieldName = 'PVITN3VLRUNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeItensppField7: TppField
      FieldAlias = 'PVITN3VLRCUSTUNIT'
      FieldName = 'PVITN3VLRCUSTUNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeItensppField8: TppField
      FieldAlias = 'PVITN2DESC'
      FieldName = 'PVITN2DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeItensppField9: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeItensppField10: TppField
      FieldAlias = 'PVITN3VLRUNITLUCR'
      FieldName = 'PVITN3VLRUNITLUCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeItensppField11: TppField
      FieldAlias = 'PVITCSTATUS'
      FieldName = 'PVITCSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeItensppField12: TppField
      FieldAlias = 'PVITN2ICMSALIQ'
      FieldName = 'PVITN2ICMSALIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeItensppField13: TppField
      FieldAlias = 'PRODA60NROSERIE'
      FieldName = 'PRODA60NROSERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeItensppField14: TppField
      FieldAlias = 'PVITN3QTDTROCA'
      FieldName = 'PVITN3QTDTROCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
  end
end
