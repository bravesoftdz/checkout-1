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
  object Report: TppReport
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
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 76729
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data de Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 34660
        mmWidth = 26988
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
        mmLeft = 37306
        mmTop = 34660
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dados do Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 42069
        mmWidth = 27781
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
        mmLeft = 6085
        mmTop = 76200
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel15: TppLabel
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
        mmTop = 67998
        mmWidth = 22691
        BandType = 0
      end
      object ppLabel19: TppLabel
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
        mmTop = 72231
        mmWidth = 6689
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
        mmLeft = 35190
        mmTop = 72231
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rela'#231#227'o de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 6615
        mmTop = 61913
        mmWidth = 37084
        BandType = 0
      end
      object ppLabel1: TppLabel
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
        mmLeft = 6879
        mmTop = 30692
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TERMICOD'
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
        mmLeft = 37306
        mmTop = 30692
        mmWidth = 6085
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
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
        mmLeft = 7144
        mmTop = 46302
        mmWidth = 56356
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
        mmLeft = 52123
        mmTop = 72496
        mmWidth = 11769
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteFantasia'
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
        mmLeft = 7144
        mmTop = 50536
        mmWidth = 56356
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FRUTAS BETO KREMER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5969
        mmLeft = 7144
        mmTop = 15081
        mmWidth = 51266
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '51 3374 2851'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 20902
        mmTop = 23548
        mmWidth = 19304
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 44979
        mmTop = 30692
        mmWidth = 1355
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRVDICOD'
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
        mmLeft = 48419
        mmTop = 30692
        mmWidth = 15282
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTECNPJ'
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
        mmLeft = 6879
        mmTop = 54769
        mmWidth = 56356
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8996
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
        mmLeft = 16933
        mmTop = 0
        mmWidth = 71967
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODICOD'
        DataPipeline = PipeItens
        DisplayFormat = '######000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3351
        mmLeft = 6350
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText13: TppDBText
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
        mmLeft = 24871
        mmTop = 3969
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
        mmLeft = 5821
        mmTop = 7673
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
        mmLeft = 49477
        mmTop = 3969
        mmWidth = 14901
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 72761
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assinatura do Respons'#225'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 6350
        mmTop = 30956
        mmWidth = 50123
        BandType = 7
      end
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
        mmLeft = 37835
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
        mmLeft = 6350
        mmTop = 1058
        mmWidth = 15579
        BandType = 7
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PlanoDescricao'
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
        mmLeft = 6350
        mmTop = 11906
        mmWidth = 80698
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 6085
        mmTop = 7408
        mmWidth = 34036
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5556
        mmTop = 54504
        mmWidth = 83608
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Retirar sua Nota Fiscal no caixa!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 13758
        mmTop = 59531
        mmWidth = 51562
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Obrigado pela preferencia! Volte Sempre!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 7144
        mmTop = 64558
        mmWidth = 66252
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
    object SQLPrevendaPlanoDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoDescricao'
      LookupDataSet = SQLPlano
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Size = 60
      Lookup = True
    end
    object SQLPrevendaPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'DB.PREVENDA.PLACA'
      Size = 10
    end
    object SQLPrevendaOBPRA15SIGLA: TStringField
      FieldName = 'OBPRA15SIGLA'
      Origin = 'DB.PREVENDA.OBPRA15SIGLA'
      Size = 15
    end
    object SQLPrevendaADICIONAL: TStringField
      FieldName = 'ADICIONAL'
      Origin = 'DB.PREVENDA.ADICIONAL'
      Size = 200
    end
    object SQLPrevendaClienteFantasia: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteFantasia'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60NOMEFANT'
      KeyFields = 'CLIEA13ID'
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
      'select VENDICOD, VENDA60NOME from Vendedor'
      '')
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
      FieldAlias = 'PlanoDescricao'
      FieldName = 'PlanoDescricao'
      FieldLength = 0
      DisplayWidth = 0
      Position = 25
    end
    object PipeCabppField27: TppField
      FieldAlias = 'PLACA'
      FieldName = 'PLACA'
      FieldLength = 0
      DisplayWidth = 0
      Position = 26
    end
    object PipeCabppField28: TppField
      FieldAlias = 'OBPRA15SIGLA'
      FieldName = 'OBPRA15SIGLA'
      FieldLength = 0
      DisplayWidth = 0
      Position = 27
    end
    object PipeCabppField29: TppField
      FieldAlias = 'ADICIONAL'
      FieldName = 'ADICIONAL'
      FieldLength = 0
      DisplayWidth = 0
      Position = 28
    end
    object PipeCabppField30: TppField
      FieldAlias = 'ClienteFantasia'
      FieldName = 'ClienteFantasia'
      FieldLength = 0
      DisplayWidth = 0
      Position = 29
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
      FieldAlias = 'TOTALITEM'
      FieldName = 'TOTALITEM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
  end
  object ReportEntrega: TppReport
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
    Top = 76
    Version = '10.06'
    mmColumnWidth = 158000
    DataPipelineName = 'PipeItens'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dados do Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 30163
        mmWidth = 27781
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6085
        mmTop = 64823
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde   Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 6879
        mmTop = 60325
        mmWidth = 23029
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rela'#231#227'o de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 6615
        mmTop = 54240
        mmWidth = 37084
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText21'
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
        mmLeft = 7144
        mmTop = 34396
        mmWidth = 56356
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ADICIONAL'
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
        mmLeft = 17198
        mmTop = 43656
        mmWidth = 14393
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FRUTAS BETO KREMER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5969
        mmLeft = 7144
        mmTop = 15346
        mmWidth = 51266
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '51 3374 2851'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 20902
        mmTop = 23813
        mmWidth = 19304
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLACA'
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
        mmLeft = 17463
        mmTop = 47890
        mmWidth = 8043
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Local:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 7144
        mmTop = 43656
        mmWidth = 9483
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Placa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 7144
        mmTop = 47096
        mmWidth = 9694
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteFantasia'
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
        mmLeft = 7144
        mmTop = 38100
        mmWidth = 56356
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3351
        mmLeft = 19315
        mmTop = 0
        mmWidth = 44186
        BandType = 4
      end
      object ppDBText19: TppDBText
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
        Transparent = True
        DataPipelineName = 'PipeItens'
        mmHeight = 3429
        mmLeft = 6615
        mmTop = 0
        mmWidth = 14986
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5821
        mmTop = 4498
        mmWidth = 57679
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
    end
    object daDataModule1: TdaDataModule
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
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
end
