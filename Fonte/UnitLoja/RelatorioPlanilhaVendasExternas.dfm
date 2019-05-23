inherited FormRelatorioPlanilhaMensalVendas: TFormRelatorioPlanilhaMensalVendas
  Left = 273
  Top = 183
  Caption = 'Planilha de Vendas para vendedores externos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object BtnVisualizar: TSpeedButton [0]
        Left = 293
        Top = 156
        Width = 152
        Height = 25
        Cursor = crHandPoint
        Hint = 'Visualizar Relat'#243'rio'
        Caption = '&Visualizar impress'#227'o'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000000000000606
          060026262600272727002D2D2D002E2E2E002F2F2F0031313100333333003434
          340035353500363636003737370038383800393939003A3A3A003B3B3B003C3C
          3C003E3E3E003F3F3F003F3F4000404040004141410042424200434444004545
          4500464646004747470048484800494949004A4A4A004B4B4B004D4D4D004E4E
          4E004F4F4F004C4F5000505050005454540055555500585858005B5B5B005C5E
          5F005E5E5E006060600061616100636363006062640060636400646464006666
          660067676700696969006E6E6E006F6F6F007070700071717100727272007B7B
          7B007B7D7D007F7F7F0081838400868686008D8D8D0090929200959595009999
          9900989A9A009E9E9E009EA2A500A0A0A000A1A1A100A2A2A200A3A3A300A5A5
          A500A6A6A600A7A7A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
          AD00AFAFAF00B1B1B100B2B2B200B3B3B300B0B3B500B2B3B500B4B4B400B6B6
          B600B7B7B700BBBBBB00BBBCBC00BEBEBE00C3C3C300C3C5C500C6C6C600C7C9
          CB00C6CBCD00C9C9C900CBCBCB00CECECE00D2D2D200D5D5D500DBDBDB00D9DC
          DD00D8DDDE00D9DEDF00DCE0E200DDE1E300DEE2E300DFE3E400E0E0E000E1E1
          E100E2E2E200E0E4E500E1E5E600E2E6E700E5E5E500E3E7E800E5E8E900E6E9
          EA00E7E9EA00E8E8E800E9E9E900E8EAEB00EAEAEA00EBEBEB00E9EBEC00EAEC
          ED00EBEDEE00EDEDED00ECEEEF00EEEEEE00EFEFEF00EDEFF000EEF0F100EFF1
          F100F0F0F000F0F2F200F1F3F300F2F2F200F3F3F300F2F4F400F3F4F500F4F4
          F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999900000000009999999999999999999999999999
          99990000001C36380F1200999999999999999999999999000000162826303735
          15070C000099999999999999990000202426221A19212C390E10040A09009999
          999999990028281F1A1E2B3D4745433B0C0F11080E1100009999999900311B2D
          48514F4D4B49403908020F11130F0A00999999990033465A58544E4745416670
          5E17060A1215100099999999005553524D4C4D6676868A7B8D681B0E110D1600
          9999999900504E4C5B718E838D867F7E7B7C6716030B0F0099999999003E5A7F
          9894918D8A85833F2E232F18321D050099999999990000647C837C725729293C
          566A62142A3400009999999999999900006559423A8079756F6C6B5C00009999
          99999999999999999900014A8B87817A77736D69279999999999999999999999
          99999904928C88827D78746E6100999999999999999999999999990060938F89
          848079756F440099999999999999999999999999009796908B885F1A00000099
          9999999999999999999999999900956325000099999999999999999999999999
          9999999999990000999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999}
        Margin = 1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 3
        OnClick = BtnVisualizarClick
      end
      inherited PanelBarra: TPanel
        Width = 0
      end
      object GroupBox2: TGroupBox
        Left = 171
        Top = 33
        Width = 407
        Height = 41
        Caption = ' Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object ComboCliente: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 396
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos os clientes...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSqlCienteCombo
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 171
        Top = 89
        Width = 407
        Height = 41
        Caption = ' Vendedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboVendedor: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 396
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos os vendedores...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSqlVendedorCombo
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited LabelTitulo: TLabel
          Top = 4
          Width = 463
          Caption = 'Planilha de Vendas para vendedores externos'
        end
      end
    end
  end
  object ReportPlanilhaMensalVendas: TppReport
    AutoStop = False
    DataPipeline = PipeCliente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 120
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportPlanilhaMensalVendasPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 724
    Top = 14
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeCliente'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 265113
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 28310
        mmLeft = 3704
        mmTop = 3175
        mmWidth = 197115
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Planilha de Vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 4233
        mmTop = 3440
        mmWidth = 196057
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 9525
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 9525
        mmWidth = 31750
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 13758
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60ENDRES'
        DataPipeline = PipeCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 13758
        mmWidth = 27517
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 111654
        mmTop = 13758
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60BAIRES'
        DataPipeline = PipeCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 13758
        mmWidth = 69056
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 17992
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60CIDRES'
        DataPipeline = PipeCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 17992
        mmWidth = 27517
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CGC:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 26458
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA14CGC'
        DataPipeline = PipeCliente
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 26458
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fones:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 22225
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA15FONE1'
        DataPipeline = PipeCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 22225
        mmWidth = 49742
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 45720
        mmLeft = 3704
        mmTop = 31221
        mmWidth = 99060
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 45720
        mmLeft = 102129
        mmTop = 31221
        mmWidth = 99060
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 45720
        mmLeft = 3704
        mmTop = 76729
        mmWidth = 99060
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 45720
        mmLeft = 102129
        mmTop = 76729
        mmWidth = 99060
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 45720
        mmLeft = 3704
        mmTop = 122238
        mmWidth = 99060
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 45720
        mmLeft = 102129
        mmTop = 122238
        mmWidth = 99060
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 45720
        mmLeft = 3704
        mmTop = 167746
        mmWidth = 99060
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 45720
        mmLeft = 102129
        mmTop = 167746
        mmWidth = 99060
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 109538
        mmTop = 17992
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 118004
        mmTop = 22225
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA8CEPRES'
        DataPipeline = PipeCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 22225
        mmWidth = 69056
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 26458
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA20IE'
        DataPipeline = PipeCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeCliente'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 26458
        mmWidth = 69056
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 45720
        mmLeft = 3704
        mmTop = 213255
        mmWidth = 99060
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 45720
        mmLeft = 102129
        mmTop = 213255
        mmWidth = 99060
        BandType = 4
      end
    end
  end
  object PipeCliente: TppBDEPipeline
    DataSource = DSSQLClientes
    OpenDataSource = False
    UserName = 'PipeCliente'
    Left = 694
    Top = 14
    object PipeClienteppField1: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField2: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField3: TppField
      FieldAlias = 'CLIEICOD'
      FieldName = 'CLIEICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField4: TppField
      FieldAlias = 'CLIEA5FISJURID'
      FieldName = 'CLIEA5FISJURID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField5: TppField
      FieldAlias = 'CLIEA14CGC'
      FieldName = 'CLIEA14CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField6: TppField
      FieldAlias = 'CLIEA20IE'
      FieldName = 'CLIEA20IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField7: TppField
      FieldAlias = 'CLIEA11CPF'
      FieldName = 'CLIEA11CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField8: TppField
      FieldAlias = 'CLIEA10RG'
      FieldName = 'CLIEA10RG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField9: TppField
      FieldAlias = 'CLIEA60RAZAOSOC'
      FieldName = 'CLIEA60RAZAOSOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField10: TppField
      FieldAlias = 'CLIEA60NOMEFANT'
      FieldName = 'CLIEA60NOMEFANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField11: TppField
      FieldAlias = 'CLIEA60CONTATO'
      FieldName = 'CLIEA60CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField12: TppField
      FieldAlias = 'CLIEA15FONE1'
      FieldName = 'CLIEA15FONE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField13: TppField
      FieldAlias = 'CLIEA15FONE2'
      FieldName = 'CLIEA15FONE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField14: TppField
      FieldAlias = 'CLIEA15FAX'
      FieldName = 'CLIEA15FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField15: TppField
      FieldAlias = 'CLIEA30OUTROSDOC'
      FieldName = 'CLIEA30OUTROSDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField16: TppField
      FieldAlias = 'CLIECSEXO'
      FieldName = 'CLIECSEXO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField17: TppField
      FieldAlias = 'CLIEA60PROFISSAO'
      FieldName = 'CLIEA60PROFISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField18: TppField
      FieldAlias = 'CLIEA60ENDRES'
      FieldName = 'CLIEA60ENDRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField19: TppField
      FieldAlias = 'CLIEA60BAIRES'
      FieldName = 'CLIEA60BAIRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField20: TppField
      FieldAlias = 'CLIEA60CIDRES'
      FieldName = 'CLIEA60CIDRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField21: TppField
      FieldAlias = 'CLIEA2UFRES'
      FieldName = 'CLIEA2UFRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField22: TppField
      FieldAlias = 'CLIEA8CEPRES'
      FieldName = 'CLIEA8CEPRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField23: TppField
      FieldAlias = 'CLIEA60EMAIL'
      FieldName = 'CLIEA60EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField24: TppField
      FieldAlias = 'CLIEA60URL'
      FieldName = 'CLIEA60URL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField25: TppField
      FieldAlias = 'CLIEN2RENDA'
      FieldName = 'CLIEN2RENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField26: TppField
      FieldAlias = 'CLIEN2LIMITECRED'
      FieldName = 'CLIEN2LIMITECRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField27: TppField
      FieldAlias = 'CLIEA60NOMEPAI'
      FieldName = 'CLIEA60NOMEPAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField28: TppField
      FieldAlias = 'CLIEA60NOMEMAE'
      FieldName = 'CLIEA60NOMEMAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField29: TppField
      FieldAlias = 'CLIEDNASC'
      FieldName = 'CLIEDNASC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField30: TppField
      FieldAlias = 'CLIECESTADOCIVIL'
      FieldName = 'CLIECESTADOCIVIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField31: TppField
      FieldAlias = 'CLIEA60CONJUGE'
      FieldName = 'CLIEA60CONJUGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField32: TppField
      FieldAlias = 'CLIEA60CONJUGEMAE'
      FieldName = 'CLIEA60CONJUGEMAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField33: TppField
      FieldAlias = 'CLIEN2CONJUGERENDA'
      FieldName = 'CLIEN2CONJUGERENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField34: TppField
      FieldAlias = 'CLIEDNASCCONJUGE'
      FieldName = 'CLIEDNASCCONJUGE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField35: TppField
      FieldAlias = 'CLIEA60CONJUGEEMPR'
      FieldName = 'CLIEA60CONJUGEEMPR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField36: TppField
      FieldAlias = 'CLIEA15CONJFONEMPR'
      FieldName = 'CLIEA15CONJFONEMPR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField37: TppField
      FieldAlias = 'CLIEA60EMPRESA'
      FieldName = 'CLIEA60EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField38: TppField
      FieldAlias = 'CLIEA60ENDEMPRESA'
      FieldName = 'CLIEA60ENDEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField39: TppField
      FieldAlias = 'CLIEA60BAIEMPRESA'
      FieldName = 'CLIEA60BAIEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField40: TppField
      FieldAlias = 'CLIEA60CIDEMPRESA'
      FieldName = 'CLIEA60CIDEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField41: TppField
      FieldAlias = 'CLIEA2UFEMPRESA'
      FieldName = 'CLIEA2UFEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField42: TppField
      FieldAlias = 'CLIEA8CEPEMPRESA'
      FieldName = 'CLIEA8CEPEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField43: TppField
      FieldAlias = 'CLIEDAMISEMPRESA'
      FieldName = 'CLIEDAMISEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField44: TppField
      FieldAlias = 'CLIEA15FONEEMPRESA'
      FieldName = 'CLIEA15FONEEMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField45: TppField
      FieldAlias = 'BANCA5COD'
      FieldName = 'BANCA5COD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField46: TppField
      FieldAlias = 'CLIEA5AGENCIA'
      FieldName = 'CLIEA5AGENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField47: TppField
      FieldAlias = 'CLIEA10CONTA'
      FieldName = 'CLIEA10CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField48: TppField
      FieldAlias = 'CLIEA60TITULAR'
      FieldName = 'CLIEA60TITULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField49: TppField
      FieldAlias = 'CLIEDABERTCONTA'
      FieldName = 'CLIEDABERTCONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField50: TppField
      FieldAlias = 'CLIETOBS'
      FieldName = 'CLIETOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField51: TppField
      FieldAlias = 'TPCLICOD'
      FieldName = 'TPCLICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField52: TppField
      FieldAlias = 'MTBLICOD'
      FieldName = 'MTBLICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField53: TppField
      FieldAlias = 'PROFICOD'
      FieldName = 'PROFICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField54: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField55: TppField
      FieldAlias = 'CLIEDCAD'
      FieldName = 'CLIEDCAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField56: TppField
      FieldAlias = 'CLIEDPRICOMPRA'
      FieldName = 'CLIEDPRICOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField57: TppField
      FieldAlias = 'CLIEDULTCOMPRA'
      FieldName = 'CLIEDULTCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField58: TppField
      FieldAlias = 'CLIEA254PATHFOTO'
      FieldName = 'CLIEA254PATHFOTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField59: TppField
      FieldAlias = 'CLIECRECAVISATRASO'
      FieldName = 'CLIECRECAVISATRASO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField60: TppField
      FieldAlias = 'CLIEA30NATURALIDADE'
      FieldName = 'CLIEA30NATURALIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField61: TppField
      FieldAlias = 'CLIECRECEBECARTAO'
      FieldName = 'CLIECRECEBECARTAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField62: TppField
      FieldAlias = 'CLIEDENVCARTIMP'
      FieldName = 'CLIEDENVCARTIMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField63: TppField
      FieldAlias = 'CLIEDRETCARTIMP'
      FieldName = 'CLIEDRETCARTIMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField64: TppField
      FieldAlias = 'CLIEDENVCARTCLI'
      FieldName = 'CLIEDENVCARTCLI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField65: TppField
      FieldAlias = 'CLIEA10CODCONV'
      FieldName = 'CLIEA10CODCONV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField66: TppField
      FieldAlias = 'CLIEA10CODANT'
      FieldName = 'CLIEA10CODANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField67: TppField
      FieldAlias = 'CLIEA20NROCARTCRED'
      FieldName = 'CLIEA20NROCARTCRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField68: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField69: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField70: TppField
      FieldAlias = 'CLIEA35NROCARTCRED'
      FieldName = 'CLIEA35NROCARTCRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField71: TppField
      FieldAlias = 'CLIEA60EMAILCONJUG'
      FieldName = 'CLIEA60EMAILCONJUG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField72: TppField
      FieldAlias = 'CLIEDCASAMENTO'
      FieldName = 'CLIEDCASAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField73: TppField
      FieldAlias = 'TPRCICOD'
      FieldName = 'TPRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField74: TppField
      FieldAlias = 'CLIEA60ENDCOB'
      FieldName = 'CLIEA60ENDCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField75: TppField
      FieldAlias = 'CLIEA60BAICOB'
      FieldName = 'CLIEA60BAICOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField76: TppField
      FieldAlias = 'CLIEA60CIDCOB'
      FieldName = 'CLIEA60CIDCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField77: TppField
      FieldAlias = 'CLIEA2UFCOB'
      FieldName = 'CLIEA2UFCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField78: TppField
      FieldAlias = 'CLIEA8CEPCOB'
      FieldName = 'CLIEA8CEPCOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField79: TppField
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField80: TppField
      FieldAlias = 'CLIEA30TEMPOMORADIA'
      FieldName = 'CLIEA30TEMPOMORADIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object PipeClienteppField81: TppField
      FieldAlias = 'CLIECCASAPROPRIA'
      FieldName = 'CLIECCASAPROPRIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
  end
  object DSSQLClientes: TDataSource
    DataSet = SQLCliente
    Left = 663
    Top = 14
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Cliente'
      'Where (%Cliente) and (%Vendedor)')
    Macros = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Vendedor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 633
    Top = 14
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA5FISJURID: TStringField
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object SQLClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECSEXO: TStringField
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA60PROFISSAO: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
  end
  object DSSqlCienteCombo: TDataSource
    DataSet = SQLClienteCombo
    Left = 584
    Top = 120
  end
  object SQLClienteCombo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CLIEA13ID, CLIEA60RAZAOSOC from Cliente'
      'Order by CLIEA60RAZAOSOC')
    Left = 612
    Top = 120
    object SQLClienteComboCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteComboCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSqlVendedorCombo: TDataSource
    DataSet = SQLVendedorCombo
    Left = 584
    Top = 176
  end
  object SQLVendedorCombo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Vendedor'
      'Order by VENDA60NOME')
    Left = 612
    Top = 176
  end
end
