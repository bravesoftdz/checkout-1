object FormPrincipal: TFormPrincipal
  Left = 695
  Top = 162
  Width = 261
  Height = 177
  Caption = 'Impressao da Venda'
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
  object PrevendaElgin: TppReport
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
    Left = 9
    Top = 44
    Version = '10.06'
    mmColumnWidth = 158000
    DataPipelineName = 'PipeItens'
    object ppHeaderBand2: TppHeaderBand
      BeforeGenerate = ppHeaderBand2BeforeGenerate
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 59002
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label2'
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
        mmLeft = 12700
        mmTop = 19315
        mmWidth = 14014
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDHVENDA'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3810
        mmLeft = 29369
        mmTop = 19315
        mmWidth = 40217
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 12965
        mmTop = 24342
        mmWidth = 12262
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 11906
        mmTop = 58737
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 12700
        mmTop = 55033
        mmWidth = 21082
        BandType = 0
      end
      object ppLabel22: TppLabel
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
        mmLeft = 41010
        mmTop = 55033
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4880
        mmLeft = 12435
        mmTop = 50536
        mmWidth = 16391
        BandType = 0
      end
      object lbTipoVenda: TppLabel
        UserName = 'Label3'
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
        mmLeft = 12700
        mmTop = 15346
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel5: TppLabel
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
        mmLeft = 57944
        mmTop = 55033
        mmWidth = 11769
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
        mmTop = 2117
        mmWidth = 43543
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '54 3286 4058'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3754
        mmLeft = 24342
        mmTop = 7938
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTENOME'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3429
        mmLeft = 29104
        mmTop = 24871
        mmWidth = 40481
        BandType = 0
      end
      object lbClienteBusca: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente Busca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 12435
        mmTop = 46567
        mmWidth = 21271
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEFONE'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 29104
        mmWidth = 56886
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTECIDA'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 39158
        mmWidth = 57150
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEBAIRRO'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 35719
        mmWidth = 57150
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEENDE'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 12700
        mmTop = 32279
        mmWidth = 57150
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEOBS'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 42598
        mmWidth = 57150
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DESCRICAO'
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
        mmLeft = 22754
        mmTop = 0
        mmWidth = 47361
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
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
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3429
        mmLeft = 11906
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText14: TppDBText
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
        mmLeft = 30692
        mmTop = 7144
        mmWidth = 20786
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 11642
        mmTop = 10848
        mmWidth = 57679
        BandType = 4
      end
      object ppDBText2: TppDBText
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
        mmLeft = 55298
        mmTop = 7144
        mmWidth = 14901
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITTOBS'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 3440
        mmWidth = 57150
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRVDN2TOTITENS'
        DataPipeline = PipeCab
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3429
        mmLeft = 43656
        mmTop = 1058
        mmWidth = 26501
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TOTAL R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 26194
        mmTop = 1058
        mmWidth = 15579
        BandType = 7
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TROCO'
        DataPipeline = PipeCab
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3503
        mmLeft = 59796
        mmTop = 4498
        mmWidth = 10260
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TROCO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 26194
        mmTop = 4498
        mmWidth = 16141
        BandType = 7
      end
    end
    object daDataModule2: TdaDataModule
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DSCab: TDataSource
    AutoEdit = False
    DataSet = SQLPrevenda
    Left = 79
    Top = 44
  end
  object DSItens: TDataSource
    AutoEdit = False
    DataSet = SQLPrevendaItem
    Left = 79
    Top = 73
  end
  object Database: TDatabase
    AliasName = 'Easy_Gestao'
    Connected = True
    DatabaseName = 'DB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 9
    Top = 4
  end
  object SQLPrevenda: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PREVENDA'
      'where (%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 108
    Top = 44
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
    object SQLPrevendaCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.PREVENDA.CONVICOD'
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
    object SQLPrevendaPRVDN2ACRESC: TBCDField
      FieldName = 'PRVDN2ACRESC'
      Origin = 'DB.PREVENDA.PRVDN2ACRESC'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDCTIPOPADRAO: TStringField
      FieldName = 'PRVDCTIPOPADRAO'
      Origin = 'DB.PREVENDA.PRVDCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLPrevendaPRVDCIMPORT: TStringField
      FieldName = 'PRVDCIMPORT'
      Origin = 'DB.PREVENDA.PRVDCIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaPRVDCMARCADO: TStringField
      FieldName = 'PRVDCMARCADO'
      Origin = 'DB.PREVENDA.PRVDCMARCADO'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'DB.PREVENDA.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaCLIENTECNPJ: TStringField
      FieldName = 'CLIENTECNPJ'
      Origin = 'DB.PREVENDA.CLIENTECNPJ'
      FixedChar = True
    end
    object SQLPrevendaCLIENTEENDE: TStringField
      FieldName = 'CLIENTEENDE'
      Origin = 'DB.PREVENDA.CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaCLIENTECIDA: TStringField
      FieldName = 'CLIENTECIDA'
      Origin = 'DB.PREVENDA.CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object SQLPrevendaCLIENTEBAIRRO: TStringField
      FieldName = 'CLIENTEBAIRRO'
      Origin = 'DB.PREVENDA.CLIENTEBAIRRO'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      Origin = 'DB.PREVENDA.CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object SQLPrevendaCLIENTEOBS: TStringField
      FieldName = 'CLIENTEOBS'
      Origin = 'DB.PREVENDA.CLIENTEOBS'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaPDVDDHVENDA: TDateTimeField
      FieldName = 'PDVDDHVENDA'
      Origin = 'DB.PREVENDA.PDVDDHVENDA'
    end
    object SQLPrevendaPDVCPRECONCLU: TStringField
      FieldName = 'PDVCPRECONCLU'
      Origin = 'DB.PREVENDA.PDVCPRECONCLU'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaTROCO: TBCDField
      FieldName = 'TROCO'
      Origin = 'DB.PREVENDA.TROCO'
      Precision = 15
      Size = 2
    end
    object SQLPrevendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PREVENDA.EMPRICOD'
    end
    object SQLPrevendaPRVDCIMPRESSO: TStringField
      FieldName = 'PRVDCIMPRESSO'
      Origin = 'DB.PREVENDA.PRVDCIMPRESSO'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaTOTAL_ITENS: TIntegerField
      FieldName = 'TOTAL_ITENS'
      Origin = 'DB.PREVENDA.TOTAL_ITENS'
    end
    object SQLPrevendaMESAICOD: TIntegerField
      FieldName = 'MESAICOD'
      Origin = 'DB.PREVENDA.MESAICOD'
    end
    object SQLPrevendaCONTAICOD: TIntegerField
      FieldName = 'CONTAICOD'
      Origin = 'DB.PREVENDA.CONTAICOD'
    end
    object SQLPrevendaDISPICOD: TIntegerField
      FieldName = 'DISPICOD'
      Origin = 'DB.PREVENDA.DISPICOD'
    end
    object SQLPrevendaMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
      Origin = 'DB.PREVENDA.MTBYICOD'
    end
    object SQLPrevendaORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Origin = 'DB.PREVENDA.ORIGEMVENDA'
      Size = 5
    end
    object SQLPrevendaCUPOCBUSCA: TStringField
      FieldName = 'CUPOCBUSCA'
      Origin = 'DB.PREVENDA.CUPOCBUSCA'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaCUPOCLEVAR: TStringField
      FieldName = 'CUPOCLEVAR'
      Origin = 'DB.PREVENDA.CUPOCLEVAR'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaSEQUENCIAL: TIntegerField
      FieldName = 'SEQUENCIAL'
      Origin = 'DB.PREVENDA.SEQUENCIAL'
    end
    object SQLPrevendaVendedorNome: TStringField
      FieldKind = fkLookup
      FieldName = 'VendedorNome'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Size = 60
      Lookup = True
    end
  end
  object SQLPrevendaItem: TRxQuery
    OnCalcFields = SQLPrevendaItemCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from PREVENDAITEM'
      'Where %Filtro')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 109
    Top = 73
    object SQLPrevendaItemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object SQLPrevendaItemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object SQLPrevendaItemPVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object SQLPrevendaItemPVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object SQLPrevendaItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DB.PREVENDAITEM.DESCRICAO'
      Size = 200
    end
    object SQLPrevendaItemPVITN3QTD: TBCDField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaItemPVITN3VLRUNIT: TBCDField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaItemPVITN3VLRCUSTUNIT: TBCDField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaItemPVITN2DESC: TBCDField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPrevendaItemPVITN3VLRUNITLUCR: TBCDField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaItemPVITN2ICMSALIQ: TBCDField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaItemPVITTOBS: TStringField
      FieldName = 'PVITTOBS'
      Origin = 'DB.PREVENDAITEM.PVITTOBS'
      Size = 60
    end
    object SQLPrevendaItemTotalItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItem'
      Calculated = True
    end
    object SQLPrevendaItemPRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaItemPVITN3QTDTROCA: TBCDField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaItemSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'DB.PREVENDAITEM.SITUACAO'
    end
    object SQLPrevendaItemCOZINHA: TStringField
      FieldName = 'COZINHA'
      Origin = 'DB.PREVENDAITEM.COZINHA'
    end
    object SQLPrevendaItemDATA_INICIO_PRODUCAO: TIntegerField
      FieldName = 'DATA_INICIO_PRODUCAO'
      Origin = 'DB.PREVENDAITEM.DATA_INICIO_PRODUCAO'
    end
    object SQLPrevendaItemDATA_PEDIDO: TIntegerField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DB.PREVENDAITEM.DATA_PEDIDO'
    end
    object SQLPrevendaItemDATA_FIM_PRODUCAO: TIntegerField
      FieldName = 'DATA_FIM_PRODUCAO'
      Origin = 'DB.PREVENDAITEM.DATA_FIM_PRODUCAO'
    end
    object SQLPrevendaItemBORDA01: TStringField
      FieldName = 'BORDA01'
      Origin = 'DB.PREVENDAITEM.BORDA01'
      Size = 60
    end
    object SQLPrevendaItemBORDA02: TStringField
      FieldName = 'BORDA02'
      Origin = 'DB.PREVENDAITEM.BORDA02'
      Size = 60
    end
    object SQLPrevendaItemBORDA03: TStringField
      FieldName = 'BORDA03'
      Origin = 'DB.PREVENDAITEM.BORDA03'
      Size = 60
    end
    object SQLPrevendaItemSABOR01: TStringField
      FieldName = 'SABOR01'
      Origin = 'DB.PREVENDAITEM.SABOR01'
      Size = 60
    end
    object SQLPrevendaItemSABOR02: TStringField
      FieldName = 'SABOR02'
      Origin = 'DB.PREVENDAITEM.SABOR02'
      Size = 60
    end
    object SQLPrevendaItemSABOR03: TStringField
      FieldName = 'SABOR03'
      Origin = 'DB.PREVENDAITEM.SABOR03'
      Size = 60
    end
    object SQLPrevendaItemSABOR04: TStringField
      FieldName = 'SABOR04'
      Origin = 'DB.PREVENDAITEM.SABOR04'
      Size = 60
    end
    object SQLPrevendaItemSABOR05: TStringField
      FieldName = 'SABOR05'
      Origin = 'DB.PREVENDAITEM.SABOR05'
      Size = 60
    end
    object SQLPrevendaItemSABOR06: TStringField
      FieldName = 'SABOR06'
      Origin = 'DB.PREVENDAITEM.SABOR06'
      Size = 60
    end
  end
  object sqlProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select PRODICOD, PRODA60DESCR, GRADICOD, GRTMICOD from Produto'
      '')
    Macros = <>
    Left = 108
    Top = 4
    object sqlProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object sqlProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object sqlProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object sqlProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select VENDICOD, VENDA60NOME from Vendedor')
    Macros = <>
    Left = 74
    Top = 4
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
  object SQLPlano: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select PLRCICOD, PLRCA60DESCR from PlanoRecebimento'
      '')
    Macros = <>
    Left = 43
    Top = 4
    object SQLPlanoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select EMPRICOD, EMPRA60NOMEFANT from Empresa'
      '')
    Macros = <>
    Left = 143
    Top = 4
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLIEA13ID, CLIEA60NOMEFANT from CLIENTE'
      '')
    Macros = <>
    Left = 179
    Top = 4
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object PipeItens: TppBDEPipeline
    DataSource = DSItens
    OpenDataSource = False
    UserName = 'PipeItens'
    Left = 47
    Top = 73
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
      FieldAlias = 'PVITCSTATUS'
      FieldName = 'PVITCSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeItensppField5: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeItensppField6: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeItensppField7: TppField
      FieldAlias = 'PVITN3QTD'
      FieldName = 'PVITN3QTD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeItensppField8: TppField
      FieldAlias = 'PVITN3VLRUNIT'
      FieldName = 'PVITN3VLRUNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeItensppField9: TppField
      FieldAlias = 'PVITN3VLRCUSTUNIT'
      FieldName = 'PVITN3VLRCUSTUNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeItensppField10: TppField
      FieldAlias = 'PVITN2DESC'
      FieldName = 'PVITN2DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeItensppField11: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeItensppField12: TppField
      FieldAlias = 'PVITN3VLRUNITLUCR'
      FieldName = 'PVITN3VLRUNITLUCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeItensppField13: TppField
      FieldAlias = 'PVITN2ICMSALIQ'
      FieldName = 'PVITN2ICMSALIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeItensppField14: TppField
      FieldAlias = 'PVITTOBS'
      FieldName = 'PVITTOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeItensppField15: TppField
      FieldAlias = 'TotalItem'
      FieldName = 'TotalItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeItensppField16: TppField
      FieldAlias = 'PRODA60NROSERIE'
      FieldName = 'PRODA60NROSERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeItensppField17: TppField
      FieldAlias = 'PVITN3QTDTROCA'
      FieldName = 'PVITN3QTDTROCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeItensppField18: TppField
      FieldAlias = 'SITUACAO'
      FieldName = 'SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeItensppField19: TppField
      FieldAlias = 'COZINHA'
      FieldName = 'COZINHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeItensppField20: TppField
      FieldAlias = 'DATA_INICIO_PRODUCAO'
      FieldName = 'DATA_INICIO_PRODUCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeItensppField21: TppField
      FieldAlias = 'DATA_PEDIDO'
      FieldName = 'DATA_PEDIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeItensppField22: TppField
      FieldAlias = 'DATA_FIM_PRODUCAO'
      FieldName = 'DATA_FIM_PRODUCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeItensppField23: TppField
      FieldAlias = 'BORDA01'
      FieldName = 'BORDA01'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeItensppField24: TppField
      FieldAlias = 'BORDA02'
      FieldName = 'BORDA02'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeItensppField25: TppField
      FieldAlias = 'BORDA03'
      FieldName = 'BORDA03'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeItensppField26: TppField
      FieldAlias = 'SABOR01'
      FieldName = 'SABOR01'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeItensppField27: TppField
      FieldAlias = 'SABOR02'
      FieldName = 'SABOR02'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipeItensppField28: TppField
      FieldAlias = 'SABOR03'
      FieldName = 'SABOR03'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipeItensppField29: TppField
      FieldAlias = 'SABOR04'
      FieldName = 'SABOR04'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipeItensppField30: TppField
      FieldAlias = 'SABOR05'
      FieldName = 'SABOR05'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeItensppField31: TppField
      FieldAlias = 'SABOR06'
      FieldName = 'SABOR06'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
  object Cozinha_Copa_Mesa: TppReport
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
    Left = 10
    Top = 73
    Version = '10.06'
    mmColumnWidth = 158000
    DataPipelineName = 'PipeItens'
    object ppHeaderBand_Cozinha_Copa: TppHeaderBand
      BeforeGenerate = ppHeaderBand_Cozinha_CopaBeforeGenerate
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25929
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
        mmLeft = 8996
        mmTop = 25135
        mmWidth = 63765
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde  Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 9790
        mmTop = 21167
        mmWidth = 22056
        BandType = 0
      end
      object lbTipoVendaCozinha: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MESA/CONTA: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 4763
        mmWidth = 26585
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDHVENDA'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 25929
        mmTop = 8996
        mmWidth = 40217
        BandType = 0
      end
      object lbClienteBuscaCozinha: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente Busca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 9525
        mmTop = 17198
        mmWidth = 21271
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
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
        mmHeight = 3704
        mmLeft = 9790
        mmTop = 9260
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gar'#231'on:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 9790
        mmTop = 13229
        mmWidth = 12488
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VendedorNome'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 25929
        mmTop = 12965
        mmWidth = 40217
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MESAICOD'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 4763
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CONTAICOD'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 4233
        mmLeft = 49213
        mmTop = 4763
        mmWidth = 21717
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46038
        mmTop = 4498
        mmWidth = 2032
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DESCRICAO'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 4233
        mmLeft = 18521
        mmTop = 0
        mmWidth = 53711
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText13'
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
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3429
        mmLeft = 9260
        mmTop = 0
        mmWidth = 7673
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
        mmLeft = 8731
        mmTop = 10318
        mmWidth = 64558
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITTOBS'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'PipeItens'
        mmHeight = 6615
        mmLeft = 9790
        mmTop = 3440
        mmWidth = 62442
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList2: TppParameterList
    end
  end
  object PipeCab: TppBDEPipeline
    DataSource = DSCab
    OpenDataSource = False
    UserName = 'PipeCab'
    Left = 46
    Top = 45
    object PipeCabppField1: TppField
      FieldAlias = 'TERMICOD'
      FieldName = 'TERMICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeCabppField2: TppField
      FieldAlias = 'PRVDICOD'
      FieldName = 'PRVDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeCabppField3: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeCabppField4: TppField
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeCabppField5: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeCabppField6: TppField
      FieldAlias = 'CONVICOD'
      FieldName = 'CONVICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeCabppField7: TppField
      FieldAlias = 'PRVDN2TOTITENS'
      FieldName = 'PRVDN2TOTITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeCabppField8: TppField
      FieldAlias = 'PRVDN2DESC'
      FieldName = 'PRVDN2DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeCabppField9: TppField
      FieldAlias = 'PRVDN2ACRESC'
      FieldName = 'PRVDN2ACRESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeCabppField10: TppField
      FieldAlias = 'PRVDCTIPOPADRAO'
      FieldName = 'PRVDCTIPOPADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeCabppField11: TppField
      FieldAlias = 'PRVDCIMPORT'
      FieldName = 'PRVDCIMPORT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeCabppField12: TppField
      FieldAlias = 'PRVDCMARCADO'
      FieldName = 'PRVDCMARCADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeCabppField13: TppField
      FieldAlias = 'CLIENTENOME'
      FieldName = 'CLIENTENOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeCabppField14: TppField
      FieldAlias = 'CLIENTECNPJ'
      FieldName = 'CLIENTECNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeCabppField15: TppField
      FieldAlias = 'CLIENTEENDE'
      FieldName = 'CLIENTEENDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeCabppField16: TppField
      FieldAlias = 'CLIENTECIDA'
      FieldName = 'CLIENTECIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeCabppField17: TppField
      FieldAlias = 'CLIENTEBAIRRO'
      FieldName = 'CLIENTEBAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeCabppField18: TppField
      FieldAlias = 'CLIENTEFONE'
      FieldName = 'CLIENTEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeCabppField19: TppField
      FieldAlias = 'CLIENTEOBS'
      FieldName = 'CLIENTEOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeCabppField20: TppField
      FieldAlias = 'PDVDDHVENDA'
      FieldName = 'PDVDDHVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeCabppField21: TppField
      FieldAlias = 'PDVCPRECONCLU'
      FieldName = 'PDVCPRECONCLU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeCabppField22: TppField
      FieldAlias = 'TROCO'
      FieldName = 'TROCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeCabppField23: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeCabppField24: TppField
      FieldAlias = 'PRVDCIMPRESSO'
      FieldName = 'PRVDCIMPRESSO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeCabppField25: TppField
      FieldAlias = 'TOTAL_ITENS'
      FieldName = 'TOTAL_ITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeCabppField26: TppField
      FieldAlias = 'MESAICOD'
      FieldName = 'MESAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeCabppField27: TppField
      FieldAlias = 'CONTAICOD'
      FieldName = 'CONTAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipeCabppField28: TppField
      FieldAlias = 'DISPICOD'
      FieldName = 'DISPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipeCabppField29: TppField
      FieldAlias = 'MTBYICOD'
      FieldName = 'MTBYICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipeCabppField30: TppField
      FieldAlias = 'ORIGEMVENDA'
      FieldName = 'ORIGEMVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeCabppField31: TppField
      FieldAlias = 'CUPOCBUSCA'
      FieldName = 'CUPOCBUSCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipeCabppField32: TppField
      FieldAlias = 'CUPOCLEVAR'
      FieldName = 'CUPOCLEVAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object PipeCabppField33: TppField
      FieldAlias = 'SEQUENCIAL'
      FieldName = 'SEQUENCIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object PipeCabppField34: TppField
      FieldAlias = 'VendedorNome'
      FieldName = 'VendedorNome'
      FieldLength = 10
      DisplayWidth = 10
      Position = 33
    end
  end
  object Cozinha_Tele: TppReport
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
    Left = 11
    Top = 104
    Version = '10.06'
    mmColumnWidth = 158000
    DataPipelineName = 'PipeItens'
    object ppHeaderBand_Tele: TppHeaderBand
      BeforeGenerate = ppHeaderBand_TeleBeforeGenerate
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 46302
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 8996
        mmTop = 45773
        mmWidth = 63765
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde  Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 9790
        mmTop = 41804
        mmWidth = 22056
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TELE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6773
        mmLeft = 9525
        mmTop = 1852
        mmWidth = 15621
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDVDDHVENDA'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 25929
        mmTop = 8996
        mmWidth = 40217
        BandType = 0
      end
      object ClienteBusca_Tele: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente Busca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 9525
        mmTop = 13758
        mmWidth = 21271
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label1'
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
        mmHeight = 3704
        mmLeft = 9790
        mmTop = 9260
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText26'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SEQUENCIAL'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 6879
        mmLeft = 27252
        mmTop = 1852
        mmWidth = 36777
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 9790
        mmTop = 18521
        mmWidth = 12262
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTENOME'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3429
        mmLeft = 26194
        mmTop = 19050
        mmWidth = 40481
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEFONE'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 23283
        mmWidth = 56886
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTECIDA'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 33338
        mmWidth = 57150
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEBAIRRO'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 29898
        mmWidth = 57150
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEENDE'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 9790
        mmTop = 26458
        mmWidth = 57150
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEOBS'
        DataPipeline = PipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCab'
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 36777
        mmWidth = 57150
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 8996
        mmTop = 41540
        mmWidth = 63765
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DESCRICAO'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 4233
        mmLeft = 18521
        mmTop = 0
        mmWidth = 53711
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText13'
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
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3429
        mmLeft = 9260
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 8731
        mmTop = 10318
        mmWidth = 64558
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PVITTOBS'
        DataPipeline = PipeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'PipeItens'
        mmHeight = 6615
        mmLeft = 9790
        mmTop = 3440
        mmWidth = 62442
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
    end
    object daDataModule3: TdaDataModule
    end
    object ppParameterList3: TppParameterList
    end
  end
end
