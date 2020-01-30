object FormPrincipal: TFormPrincipal
  Left = 692
  Top = 310
  Width = 267
  Height = 158
  Caption = 'Extrato Venda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TblPreVendaItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TblMemPreVendaItem.DB'
    Left = 16
    Top = 25
    object TblPreVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblPreVendaItemDescricaoRed: TStringField
      FieldName = 'DescricaoRed'
      Size = 30
    end
    object TblPreVendaItemPVITN3QTD: TBCDField
      FieldName = 'PVITN3QTD'
      Precision = 32
      Size = 3
    end
    object TblPreVendaItemPVITN3VLRUNIT: TBCDField
      FieldName = 'PVITN3VLRUNIT'
      Precision = 32
      Size = 3
    end
    object TblPreVendaItemTotalItem: TFloatField
      FieldName = 'TotalItem'
    end
    object TblPreVendaItemVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object TblPreVendaItemMesaICod: TIntegerField
      FieldName = 'MesaICod'
    end
    object TblPreVendaItemContaICod: TIntegerField
      FieldName = 'ContaICod'
    end
    object TblPreVendaItemMarcado: TBooleanField
      FieldName = 'Marcado'
    end
  end
  object DSItens: TDataSource
    AutoEdit = False
    DataSet = TblPreVendaItem
    Left = 47
    Top = 25
  end
  object PipeItens: TppBDEPipeline
    DataSource = DSItens
    OpenDataSource = False
    UserName = 'PipeItens'
    Left = 79
    Top = 25
    object PipeItensppField1: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeItensppField2: TppField
      FieldAlias = 'DescricaoRed'
      FieldName = 'DescricaoRed'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeItensppField3: TppField
      FieldAlias = 'PVITN3QTD'
      FieldName = 'PVITN3QTD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeItensppField4: TppField
      FieldAlias = 'PVITN3VLRUNIT'
      FieldName = 'PVITN3VLRUNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeItensppField5: TppField
      FieldAlias = 'TotalItem'
      FieldName = 'TotalItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeItensppField6: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeItensppField7: TppField
      FieldAlias = 'MesaICod'
      FieldName = 'MesaICod'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeItensppField8: TppField
      FieldAlias = 'ContaICod'
      FieldName = 'ContaICod'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeItensppField9: TppField
      FieldAlias = 'Marcado'
      FieldName = 'Marcado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object extrato: TppReport
    AutoStop = False
    DataPipeline = PipeItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'PreVenda'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 5000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 100000
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 106
    Top = 25
    Version = '10.06'
    mmColumnWidth = 158000
    DataPipelineName = 'PipeItens'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6085
        mmTop = 34131
        mmWidth = 63765
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cod    Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 6879
        mmTop = 25929
        mmWidth = 22691
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 16404
        mmTop = 30163
        mmWidth = 6689
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 34131
        mmTop = 30163
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 57679
        mmTop = 30427
        mmWidth = 11769
        BandType = 0
      end
      object lbTipoVenda: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Controle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 6615
        mmTop = 19844
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'XIS SHOW DE BOLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5881
        mmLeft = 16404
        mmTop = 3440
        mmWidth = 43543
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Extrato de Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 6879
        mmTop = 13758
        mmWidth = 32258
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DescricaoRed'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3351
        mmLeft = 6879
        mmTop = 0
        mmWidth = 62442
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITN3QTD'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 3969
        mmWidth = 14986
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITN3VLRUNIT'
        DataPipeline = PipeItens
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3429
        mmLeft = 24871
        mmTop = 3969
        mmWidth = 20786
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5821
        mmTop = 7673
        mmWidth = 64558
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TOTALITEM'
        DataPipeline = PipeItens
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3429
        mmLeft = 54769
        mmTop = 3969
        mmWidth = 14901
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object lbTotal: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total => R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 39021
        mmTop = 3175
        mmWidth = 27432
        BandType = 7
      end
    end
    object daDataModule1: TdaDataModule
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
end
