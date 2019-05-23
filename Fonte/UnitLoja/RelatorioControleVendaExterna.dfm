inherited FormRelatorioControleExternoVendas: TFormRelatorioControleExternoVendas
  Left = 87
  Top = 149
  ActiveControl = nil
  Caption = 'Listagem de Controle Externo de Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      inherited BtnVisualizar: TSpeedButton
        Left = 134
        Width = 152
        Caption = '&Visualizar Impress'#227'o'
        Font.Style = [fsBold]
      end
      inherited EmpresaGroup: TGroupBox
        Visible = False
      end
      inherited GroupBox1: TGroupBox
        Visible = False
      end
    end
  end
  object pipeProduto: TppBDEPipeline
    DataSource = DSSqlProduto
    UserName = 'pipeProduto'
    Left = 80
    Top = 128
    object pipeProdutoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pipeProdutoppField2: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = pipeProduto
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    Left = 111
    Top = 129
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'pipeProduto'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PRODICOD'
        DataPipeline = pipeProduto
        DisplayFormat = '######000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeProduto'
        mmHeight = 5821
        mmLeft = 5027
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PRODA60DESCR'
        DataPipeline = pipeProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeProduto'
        mmHeight = 5821
        mmLeft = 21960
        mmTop = 265
        mmWidth = 79904
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5821
        mmLeft = 101600
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5821
        mmLeft = 110596
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5821
        mmLeft = 119592
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 5821
        mmLeft = 128588
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 5821
        mmLeft = 146579
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 5821
        mmLeft = 155575
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 5821
        mmLeft = 164571
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 5821
        mmLeft = 173567
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 5821
        mmLeft = 182563
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object SQLProduto: TRxQuery
    Active = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Produto')
    Macros = <>
    Left = 110
    Top = 162
    object SQLProdutoPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSqlProduto: TDataSource
    DataSet = SQLProduto
    Left = 79
    Top = 162
  end
end
