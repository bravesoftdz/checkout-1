inherited FormTelaEmissaoBonusCliente: TFormTelaEmissaoBonusCliente
  Left = 255
  Top = 126
  Caption = 'Emiss'#227'o de Bonus para Clientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      Font.Color = 8404992
      ParentFont = False
      object Label2: TLabel [0]
        Left = 42
        Top = 32
        Width = 39
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel [1]
        Left = 44
        Top = 79
        Width = 56
        Height = 13
        Caption = 'Nro Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 177
        Top = 79
        Width = 48
        Height = 13
        Caption = 'Nro Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 309
        Top = 79
        Width = 66
        Height = 13
        Caption = 'Valor Bonus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BTimprimir: TSpeedButton [4]
        Left = 249
        Top = 131
        Width = 137
        Height = 25
        Caption = '&Imprimir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          96010000424D9601000000000000760000002800000018000000180000000100
          0400000000002001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888888888888888888888888888888
          8888888000008888888888888888000777000888888888888000777777700008
          8888888007777777770000008888880777777788770000000088880777888888
          7700000000888807888888878F87000700888808888888FFFFF8700070888808
          888FFFFFFFFF8700008888078FFFFFFFF77777770088888008FFFF8777888177
          008888888008877FFFFF880088888888888008FFFFFFF87888888888888880FF
          FFFFFF80888888888888808FFFFFFFF8088888888888880FFFFF870008888888
          88888880F8700888888888888888888800888888888888888888888888888888
          8888888888888888888888888888888888888888888888888888}
        ParentFont = False
        OnClick = BTimprimirClick
      end
      inherited PanelBarra: TPanel
        Width = 4
      end
      object ComboCliente: TRxDBLookupCombo
        Left = 39
        Top = 45
        Width = 609
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Todos...'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'CLIEA13ID'
        LookupDisplay = 'CLIEA60RAZAOSOC'
        LookupSource = DSSQLClienteAUX
        ParentFont = False
        TabOrder = 1
      end
      object EditNroInicial: TEdit
        Left = 40
        Top = 93
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object EditNroFinal: TEdit
        Left = 173
        Top = 93
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object EditValorBonus: TCurrencyEdit
        Left = 302
        Top = 92
        Width = 121
        Height = 21
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object GroupImprimir: TGroupBox
        Left = 436
        Top = 77
        Width = 213
        Height = 68
        Caption = ' Imprimir '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object RDLayout01: TRadioButton
          Left = 5
          Top = 18
          Width = 94
          Height = 17
          Caption = 'Layout 01'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object RDLayout02: TRadioButton
          Left = 117
          Top = 19
          Width = 86
          Height = 17
          Caption = 'Layout 02'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object RDLayout03: TRadioButton
          Left = 5
          Top = 38
          Width = 94
          Height = 17
          Caption = 'Layout 03'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            inherited BtnFecharTela: TSpeedButton
              Left = 670
            end
          end
        end
      end
    end
  end
  object ppReport2Col_Mod01: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '12000'
      '102000')
    DataPipeline = Pipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 302000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 622
    Top = 3
    Version = '10.06'
    mmColumnWidth = 90000
    DataPipelineName = 'Pipe'
    object ppColumnHeaderBand2: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 72761
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VALOR'
        DataPipeline = Pipe
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 5856
        mmLeft = 42863
        mmTop = 265
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NROBONUS'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 5856
        mmLeft = 42863
        mmTop = 10054
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4939
        mmLeft = 4763
        mmTop = 40746
        mmWidth = 81492
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Extenso1'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4939
        mmLeft = 4763
        mmTop = 27781
        mmWidth = 81492
        BandType = 4
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object TblMalaDiretaCli: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'EtiquetaEndereco.db'
    Left = 498
    Top = 3
    object TblMalaDiretaCliCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Raz'#227'o Social/Nome do Cliente'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'UNITGESTAO_TEMP."EtiquetaEndereco.DB".CLIEA60RAZAOSOC'
      Size = 60
    end
    object TblMalaDiretaCliVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object TblMalaDiretaCliNROBONUS: TStringField
      FieldName = 'NROBONUS'
      Size = 15
    end
    object TblMalaDiretaCliExtenso1: TStringField
      FieldName = 'Extenso1'
      Size = 100
    end
    object TblMalaDiretaCliExtenso2: TStringField
      FieldName = 'Extenso2'
      Size = 100
    end
  end
  object DSTblMalaDiretaCli: TDataSource
    DataSet = TblMalaDiretaCli
    Left = 470
    Top = 3
  end
  object SQLClienteAUX: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Cliente'
      'Order by '
      'CLIEA60RAZAOSOC')
    Macros = <>
    Left = 395
    Top = 3
    object StringField1: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object IntegerField1: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object StringField2: TStringField
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object StringField3: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object StringField4: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object StringField6: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object StringField8: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object StringField9: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object StringField10: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object StringField13: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object StringField14: TStringField
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object StringField15: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object StringField16: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object StringField17: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object StringField18: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object StringField19: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object StringField20: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object StringField21: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object StringField22: TStringField
      FieldName = 'CLIEA60URL'
      Origin = 'DB.CLIENTE.CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object BCDField1: TBCDField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object BCDField2: TBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object StringField23: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object StringField24: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object StringField25: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      Origin = 'DB.CLIENTE.CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object IntegerField6: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CLIENTE.VENDICOD'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object StringField42: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
  end
  object DSSQLClienteAUX: TDataSource
    DataSet = SQLClienteAUX
    Left = 423
    Top = 3
  end
  object Pipe: TppBDEPipeline
    DataSource = DSTblMalaDiretaCli
    CloseDataSource = True
    UserName = 'Pipe'
    Left = 584
    Top = 3
    object PipeppField1: TppField
      FieldAlias = 'CLIEA60RAZAOSOC'
      FieldName = 'CLIEA60RAZAOSOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeppField2: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeppField3: TppField
      FieldAlias = 'NROBONUS'
      FieldName = 'NROBONUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeppField4: TppField
      FieldAlias = 'Extenso1'
      FieldName = 'Extenso1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeppField5: TppField
      FieldAlias = 'Extenso2'
      FieldName = 'Extenso2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object ppReport2Col_Mod02: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '2000'
      '109000')
    DataPipeline = Pipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Bonus Cliente - Layout 02'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 255000
    PrinterSetup.mmPaperWidth = 215000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 653
    Top = 3
    Version = '10.06'
    mmColumnWidth = 105500
    DataPipelineName = 'Pipe'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 49213
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VALOR'
        DataPipeline = Pipe
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 5856
        mmLeft = 51858
        mmTop = 2117
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NROBONUS'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4995
        mmLeft = 9525
        mmTop = 2117
        mmWidth = 20066
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 20902
        mmWidth = 83608
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Extenso1'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 16140
        mmWidth = 83344
        BandType = 4
      end
      object LBSeguranca: TppLabel
        UserName = 'LBSeguranca'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Seg'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 26988
        mmTop = 2117
        mmWidth = 6223
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object SQLConfigGeral: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from ConfigGeral')
    Macros = <>
    Left = 349
    Top = 3
    object SQLConfigGeralCFGEIULTBONUS: TIntegerField
      FieldName = 'CFGEIULTBONUS'
      Origin = 'DB.CONFIGGERAL.CFGEIULTBONUS'
    end
  end
  object ppReport2Col_Mod03: TppReport
    AutoStop = False
    DataPipeline = Pipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 292000
    PrinterSetup.mmPaperWidth = 200000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 684
    Top = 3
    Version = '10.06'
    mmColumnWidth = 196000
    DataPipelineName = 'Pipe'
    object ppDetailBand3: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 72761
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NROBONUS'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 5821
        mmLeft = 140229
        mmTop = 45244
        mmWidth = 37306
        BandType = 4
      end
    end
  end
end
