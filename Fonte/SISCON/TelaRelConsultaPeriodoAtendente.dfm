inherited FormTelaRelConsultaPeriodoAtendente: TFormTelaRelConsultaPeriodoAtendente
  Left = 189
  Top = 107
  Caption = 'Relat'#243'rio de Consultas por Per'#237'odo e por Atendente'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object BtnImprimir: TSpeedButton
          Tag = 3
          Left = 2
          Top = 3
          Width = 143
          Height = 25
          Cursor = crHandPoint
          Hint = 'Visualizar a Impress'#227'o'
          Caption = '&Visualizar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000130B0000130B00000001000000010000000000000606
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
            F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00BEBE
            BE00000000000000000000000000000000000000000000000000000000000000
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
          ParentFont = False
          OnClick = BtnImprimirClick
        end
      end
    end
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 1
      end
      object GroupBoxDependente: TGroupBox
        Left = 4
        Top = 43
        Width = 371
        Height = 55
        Caption = ' Atendente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object ComboAtendente: TRxDBLookupCombo
          Left = 8
          Top = 25
          Width = 353
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Escolha um Atendente...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'USUAICOD'
          LookupDisplay = 'USUAA60NOME'
          LookupSource = DSSQLAtendente
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 387
        Top = 44
        Width = 369
        Height = 54
        Caption = ' Per'#237'odo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 51
          Top = 14
          Width = 34
          Height = 13
          Caption = 'Inicial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 208
          Top = 14
          Width = 26
          Height = 13
          Caption = 'Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object De: TDateEdit
          Left = 47
          Top = 28
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object Ate: TDateEdit
          Left = 203
          Top = 28
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
      end
      object RadioTipo: TRadioGroup
        Left = 4
        Top = 2
        Width = 751
        Height = 41
        Caption = 'Tipo'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Emitidos e Cancelados'
          'Emitidos'
          'Cancelados')
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object TblCliente: TTable
    DatabaseName = 'DBGestao'
    TableName = 'CLIENTE'
    Left = 18
    Top = 322
    object TblClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblClienteCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblClienteCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblClienteCLIEA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object TblClienteCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblClienteCLIEA8CEPRES: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object TblClienteCLIEA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA60EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA15FONEEMPRESA: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object TblClienteCLIETOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'CLIETOBS'
      FixedChar = True
      Size = 254
    end
    object TblClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
    end
    object TblClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object TblClienteCLIEA10CODANT: TStringField
      DisplayLabel = 'C'#243'd.Antigo'
      FieldName = 'CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
  end
  object TblClienteDependente: TTable
    DatabaseName = 'DBGestao'
    TableName = 'CLIENTEDEPENDENTE'
    Left = 46
    Top = 323
    object TblClienteDependenteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblClienteDependenteCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Required = True
    end
    object TblClienteDependenteCLDPA60NOME: TStringField
      FieldName = 'CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblClienteDependenteCLDPA15PARENTESCO: TStringField
      FieldName = 'CLDPA15PARENTESCO'
      FixedChar = True
      Size = 15
    end
    object TblClienteDependenteCLDPCAUTORIZADO: TStringField
      FieldName = 'CLDPCAUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object TblClienteDependenteCLDPDNASC: TDateTimeField
      FieldName = 'CLDPDNASC'
    end
    object TblClienteDependenteCLDPA10RG: TStringField
      FieldName = 'CLDPA10RG'
      FixedChar = True
      Size = 10
    end
    object TblClienteDependenteCLDPA11CPF: TStringField
      FieldName = 'CLDPA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblClienteDependentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblClienteDependenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object TblClienteDependenteCLDPA15FONE: TStringField
      FieldName = 'CLDPA15FONE'
      FixedChar = True
      Size = 15
    end
    object TblClienteDependenteCLDPA60EMAIL: TStringField
      FieldName = 'CLDPA60EMAIL'
      FixedChar = True
      Size = 60
    end
  end
  object TblAtendente: TTable
    DatabaseName = 'DB'
    TableName = 'USUARIO'
    Left = 46
    Top = 351
    object TblAtendenteUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Required = True
    end
    object TblAtendenteUSUAA60NOME: TStringField
      FieldName = 'USUAA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object TblProfissional: TTable
    DatabaseName = 'DB'
    TableName = 'PROFISSIONAL'
    Left = 18
    Top = 351
    object TblProfissionalPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Required = True
    end
    object TblProfissionalPROFA60NOME: TStringField
      FieldName = 'PROFA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object TblMotivo: TTable
    DatabaseName = 'DB'
    TableName = 'MOTIVO'
    Left = 18
    Top = 380
    object TblMotivoMOTIICOD: TIntegerField
      FieldName = 'MOTIICOD'
      Required = True
    end
    object TblMotivoMOTIA60DESCR: TStringField
      FieldName = 'MOTIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblMotivoMOTICBLOQUEIOCLI: TStringField
      FieldName = 'MOTICBLOQUEIOCLI'
      FixedChar = True
      Size = 1
    end
  end
  object ppReportEmitidos: TppReport
    AutoStop = False
    DataPipeline = PipeEmitiCancelad
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
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReportEmitidosPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 248
    Top = 19
    Version = '10.06'
    mmColumnWidth = 203200
    DataPipelineName = 'PipeEmitiCancelad'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 2117
        mmTop = 26723
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label501'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 154252
        mmTop = 26723
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 2117
        mmTop = 13494
        mmWidth = 44186
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LISTAGEM DE CONSULTAS DO PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 2117
        mmTop = 8467
        mmWidth = 56219
        BandType = 0
      end
      object ppDE: TppLabel
        UserName = 'DE'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 93134
        mmTop = 8467
        mmWidth = 3895
        BandType = 0
      end
      object ppATE: TppLabel
        UserName = 'LbDE1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 147638
        mmTop = 8467
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AT'#201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 131234
        mmTop = 8467
        mmWidth = 5503
        BandType = 0
      end
      object ppDBAtendente: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Atendente'
        DataPipeline = PipeEmitiCancelad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 48683
        mmTop = 13758
        mmWidth = 12277
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 16404
        mmTop = 26723
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 175155
        mmTop = 26723
        mmWidth = 15346
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 31221
        mmWidth = 191294
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'CAIXA DE ASSISTENCIA DOS ADVOGADOS DO RIO GRANDE DO SUL  -  CNPJ' +
          ': 87.093.092/0001-80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 2117
        mmTop = 794
        mmWidth = 129710
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXINRORECIBO'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '######000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 154252
        mmTop = 529
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXDMOV'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 2117
        mmTop = 529
        mmWidth = 16341
        BandType = 4
      end
      object ppPaciente: TppDBText
        UserName = 'Paciente'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Paciente'
        DataPipeline = PipeEmitiCancelad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 44715
        mmTop = 529
        mmWidth = 106892
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipeEmitiCancelad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 16140
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText302'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXN2VLRCRED'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '(R$)###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 171186
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total de Consultas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 126492
        mmTop = 1058
        mmWidth = 22691
        BandType = 8
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXN2VLRCRED'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '(R$) ###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 157957
        mmTop = 1058
        mmWidth = 32808
        BandType = 8
      end
    end
  end
  object SQLAtendente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Usuario'
      'Order by USUAA60NOME')
    Left = 482
    Top = 19
    object SQLAtendenteUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLAtendenteUSUAA60NOME: TStringField
      FieldName = 'USUAA60NOME'
      Origin = 'DB.USUARIO.USUAA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLAtendente: TDataSource
    DataSet = SQLAtendente
    Left = 453
    Top = 19
  end
  object SQLAgendaCancel: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from AgendaCancel'
      'Where'
      '(%Inicial) and'
      '(%Final) and'
      '(%Atendente) and'
      'Agecn3vlrConsulta>0 and'
      'AgeCn3vlrpago>0'
      'order by AGECINRORECIBO')
    Macros = <
      item
        DataType = ftString
        Name = 'Inicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Final'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Atendente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 170
    Top = 18
    object SQLAgendaCancelAGECICOD: TIntegerField
      FieldName = 'AGECICOD'
      Origin = 'DB.AGENDACANCEL.AGECICOD'
    end
    object SQLAgendaCancelCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.AGENDACANCEL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendaCancelCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.AGENDACANCEL.CLDPICOD'
    end
    object SQLAgendaCancelPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDACANCEL.PROFICOD'
    end
    object SQLAgendaCancelESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.AGENDACANCEL.ESPEICOD'
    end
    object SQLAgendaCancelMOTIICOD: TIntegerField
      FieldName = 'MOTIICOD'
      Origin = 'DB.AGENDACANCEL.MOTIICOD'
    end
    object SQLAgendaCancelAGECDMARCACAO: TDateTimeField
      FieldName = 'AGECDMARCACAO'
      Origin = 'DB.AGENDACANCEL.AGECDMARCACAO'
    end
    object SQLAgendaCancelUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.AGENDACANCEL.USUAICOD'
    end
    object SQLAgendaCancelAGECDDIGIT: TDateTimeField
      FieldName = 'AGECDDIGIT'
      Origin = 'DB.AGENDACANCEL.AGECDDIGIT'
    end
    object SQLAgendaCancelAGECINRORECIBO: TIntegerField
      FieldName = 'AGECINRORECIBO'
      Origin = 'DB.AGENDACANCEL.AGECINRORECIBO'
    end
    object SQLAgendaCancelAGECN3VLRCONSULTA: TBCDField
      FieldName = 'AGECN3VLRCONSULTA'
      Origin = 'DB.AGENDACANCEL.AGECN3VLRCONSULTA'
      Precision = 15
      Size = 3
    end
    object SQLAgendaCancelAGECN3VLRPAGO: TBCDField
      FieldName = 'AGECN3VLRPAGO'
      Origin = 'DB.AGENDACANCEL.AGECN3VLRPAGO'
      Precision = 15
      Size = 3
    end
    object SQLAgendaCancelAGECDPAGO: TDateTimeField
      FieldName = 'AGECDPAGO'
      Origin = 'DB.AGENDACANCEL.AGECDPAGO'
    end
    object SQLAgendaCancelAGECIUSUARIOCANC: TIntegerField
      FieldName = 'AGECIUSUARIOCANC'
      Origin = 'DB.AGENDACANCEL.AGECIUSUARIOCANC'
    end
    object SQLAgendaCancelAGECDCANC: TDateTimeField
      FieldName = 'AGECDCANC'
      Origin = 'DB.AGENDACANCEL.AGECDCANC'
    end
    object SQLAgendaCancelClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLAgendaCancelDependenteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'DependenteNome'
      LookupDataSet = TblClienteDependente
      LookupKeyFields = 'CLIEA13ID;CLDPICOD'
      LookupResultField = 'CLDPA60NOME'
      KeyFields = 'CLIEA13ID;CLDPICOD'
      Size = 60
      Lookup = True
    end
    object SQLAgendaCancelAtendente: TStringField
      FieldKind = fkLookup
      FieldName = 'Atendente'
      LookupDataSet = TblAtendente
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60NOME'
      KeyFields = 'USUAICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendaCancelClienteCodigoAntigo: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCodigoAntigo'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA10CODANT'
      KeyFields = 'CLIEA13ID'
      Size = 15
      Lookup = True
    end
    object SQLAgendaCancelProfissional: TStringField
      FieldKind = fkLookup
      FieldName = 'Profissional'
      LookupDataSet = TblProfissional
      LookupKeyFields = 'PROFICOD'
      LookupResultField = 'PROFA60NOME'
      KeyFields = 'PROFICOD'
      Size = 30
      Lookup = True
    end
  end
  object DSSqlAgendaCancel: TDataSource
    DataSet = SQLAgendaCancel
    Left = 142
    Top = 18
  end
  object ppReportCancelados: TppReport
    AutoStop = False
    DataPipeline = PipeAgendaCancel
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
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReportCanceladosPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 305
    Top = 19
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeAgendaCancel'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        UserName = 'Label45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 2117
        mmTop = 26723
        mmWidth = 17187
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 143404
        mmTop = 26723
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ATENDENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 2381
        mmTop = 13494
        mmWidth = 17865
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label502'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dt.Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 186003
        mmTop = 26723
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LISTAGEM DE CONSULTAS CANCELADAS  DO PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 2381
        mmTop = 7938
        mmWidth = 76708
        BandType = 0
      end
      object ppDeCanc: TppLabel
        UserName = 'DE'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 114829
        mmTop = 7938
        mmWidth = 3895
        BandType = 0
      end
      object ppATECANC: TppLabel
        UserName = 'LbDE1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 156898
        mmTop = 7938
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AT'#201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 144727
        mmTop = 7938
        mmWidth = 5503
        BandType = 0
      end
      object ppAtendenteCanc: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Atendente'
        DataPipeline = PipeAgendaCancel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 30427
        mmTop = 13758
        mmWidth = 12277
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 34396
        mmTop = 26723
        mmWidth = 10499
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 168413
        mmTop = 26723
        mmWidth = 6265
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 31221
        mmWidth = 197115
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'CAIXA DE ASSISTENCIA DOS ADVOGADOS DO RIO GRANDE DO SUL  -  CNPJ' +
          ': 87.093.092/0001-80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 2381
        mmTop = 794
        mmWidth = 129710
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGECINRORECIBO'
        DataPipeline = PipeAgendaCancel
        DisplayFormat = '######000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 143404
        mmTop = 529
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGECDMARCACAO'
        DataPipeline = PipeAgendaCancel
        DisplayFormat = 'dd/mm/yy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 2117
        mmTop = 529
        mmWidth = 26162
        BandType = 4
      end
      object ppPacienteCanc: TppDBText
        UserName = 'Paciente'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteNome'
        DataPipeline = PipeAgendaCancel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 62442
        mmTop = 529
        mmWidth = 76200
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCodigoAntigo'
        DataPipeline = PipeAgendaCancel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 34131
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGECDPAGO'
        DataPipeline = PipeAgendaCancel
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 173832
        mmTop = 529
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText302'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGECN3VLRPAGO'
        DataPipeline = PipeAgendaCancel
        DisplayFormat = '(R$)###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 155311
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total de Consultas Canceladas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 101199
        mmTop = 1058
        mmWidth = 37761
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGECN3VLRPAGO'
        DataPipeline = PipeAgendaCancel
        DisplayFormat = '(R$) ###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeAgendaCancel'
        mmHeight = 3302
        mmLeft = 141817
        mmTop = 1058
        mmWidth = 32808
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 265
        mmWidth = 197115
        BandType = 8
      end
    end
  end
  object PipeAgendaCancel: TppBDEPipeline
    DataSource = DSSqlAgendaCancel
    UserName = 'PipeAgendaCancel'
    Left = 276
    Top = 19
    object PipeAgendaCancelppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGECICOD'
      FieldName = 'AGECICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object PipeAgendaCancelppField2: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 1
    end
    object PipeAgendaCancelppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLDPICOD'
      FieldName = 'CLDPICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object PipeAgendaCancelppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROFICOD'
      FieldName = 'PROFICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object PipeAgendaCancelppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESPEICOD'
      FieldName = 'ESPEICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object PipeAgendaCancelppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'MOTIICOD'
      FieldName = 'MOTIICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object PipeAgendaCancelppField7: TppField
      FieldAlias = 'AGECDMARCACAO'
      FieldName = 'AGECDMARCACAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object PipeAgendaCancelppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'USUAICOD'
      FieldName = 'USUAICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object PipeAgendaCancelppField9: TppField
      FieldAlias = 'AGECDDIGIT'
      FieldName = 'AGECDDIGIT'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object PipeAgendaCancelppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGECINRORECIBO'
      FieldName = 'AGECINRORECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object PipeAgendaCancelppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGECN3VLRCONSULTA'
      FieldName = 'AGECN3VLRCONSULTA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object PipeAgendaCancelppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGECN3VLRPAGO'
      FieldName = 'AGECN3VLRPAGO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object PipeAgendaCancelppField13: TppField
      FieldAlias = 'AGECDPAGO'
      FieldName = 'AGECDPAGO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object PipeAgendaCancelppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGECIUSUARIOCANC'
      FieldName = 'AGECIUSUARIOCANC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object PipeAgendaCancelppField15: TppField
      FieldAlias = 'AGECDCANC'
      FieldName = 'AGECDCANC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object PipeAgendaCancelppField16: TppField
      FieldAlias = 'ClienteNome'
      FieldName = 'ClienteNome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object PipeAgendaCancelppField17: TppField
      FieldAlias = 'DependenteNome'
      FieldName = 'DependenteNome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object PipeAgendaCancelppField18: TppField
      FieldAlias = 'Atendente'
      FieldName = 'Atendente'
      FieldLength = 30
      DisplayWidth = 30
      Position = 17
    end
    object PipeAgendaCancelppField19: TppField
      FieldAlias = 'ClienteCodigoAntigo'
      FieldName = 'ClienteCodigoAntigo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 18
    end
    object PipeAgendaCancelppField20: TppField
      FieldAlias = 'Profissional'
      FieldName = 'Profissional'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
  end
  object ppReportEmitidosCancelados: TppReport
    AutoStop = False
    DataPipeline = PipeEmitiCancelad
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
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReportEmitidosCanceladosPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 365
    Top = 19
    Version = '10.06'
    mmColumnWidth = 203200
    DataPipelineName = 'PipeEmitiCancelad'
    object ppHeaderBand3: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 17992
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 141023
        mmTop = 17992
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 12171
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label502'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 191559
        mmTop = 17992
        mmWidth = 7789
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CAIXA DO PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 2381
        mmTop = 6615
        mmWidth = 27771
        BandType = 0
      end
      object ppDE1: TppLabel
        UserName = 'DE'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 45508
        mmTop = 6615
        mmWidth = 3895
        BandType = 0
      end
      object ppATE1: TppLabel
        UserName = 'LbDE1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 96838
        mmTop = 6615
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AT'#201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 80433
        mmTop = 6615
        mmWidth = 5503
        BandType = 0
      end
      object ppAtendente1: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Atendente'
        DataPipeline = PipeEmitiCancelad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 23548
        mmTop = 12171
        mmWidth = 12277
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 23283
        mmTop = 17992
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 169069
        mmTop = 17992
        mmWidth = 8721
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'CAIXA DE ASSISTENCIA DOS ADVOGADOS DO RIO GRANDE DO SUL   -  CNP' +
          'J: 87.093.092/0001-80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 1058
        mmWidth = 130440
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 21431
        mmWidth = 198967
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText30'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXINRORECIBO'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '######000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3175
        mmLeft = 141023
        mmTop = 265
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXDMOV'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = 'dd/mm/yy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXN2VLRDEB'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '(R$)###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 176477
        mmTop = 265
        mmWidth = 22691
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText302'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXN2VLRCRED'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '(R$)###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Paciente'
        DataPipeline = PipeEmitiCancelad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3302
        mmLeft = 23283
        mmTop = 265
        mmWidth = 10499
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Totais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 127529
        mmTop = 1058
        mmWidth = 7451
        BandType = 8
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXN2VLRCRED'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '(R$) ###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3175
        mmLeft = 144992
        mmTop = 1058
        mmWidth = 32808
        BandType = 8
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MVCXN2VLRDEB'
        DataPipeline = PipeEmitiCancelad
        DisplayFormat = '(R$) ###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeEmitiCancelad'
        mmHeight = 3175
        mmLeft = 172509
        mmTop = 1058
        mmWidth = 26723
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 265
        mmWidth = 198967
        BandType = 8
      end
    end
  end
  object DSSQLMovimentoCX: TDataSource
    DataSet = SQLMovimentoCX
    Left = 8
    Top = 18
  end
  object SQLMovimentoCX: TRxQuery
    OnCalcFields = SQLMovimentoCXCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from MovimentoCaixa'
      'Where'
      '(%Inicial) and'
      '(%Final) and'
      '(%Atendente)'
      'order by MVCXINRORECIBO')
    Macros = <
      item
        DataType = ftString
        Name = 'Inicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Final'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Atendente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 36
    Top = 18
    object SQLMovimentoCXMVCXICOD: TIntegerField
      FieldName = 'MVCXICOD'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXICOD'
    end
    object SQLMovimentoCXMVCXDMOV: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'MVCXDMOV'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXDMOV'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object SQLMovimentoCXCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.MOVIMENTOCAIXA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovimentoCXCLDPICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Dependente'
      FieldName = 'CLDPICOD'
      Origin = 'DB.MOVIMENTOCAIXA.CLDPICOD'
    end
    object SQLMovimentoCXMVCXN2VLRCRED: TBCDField
      DisplayLabel = 'Vlr.Cr'#233'dito'
      FieldName = 'MVCXN2VLRCRED'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRCRED'
      Precision = 15
      Size = 3
    end
    object SQLMovimentoCXMVCXN2VLRDEB: TBCDField
      DisplayLabel = 'Vlr.D'#233'bito'
      FieldName = 'MVCXN2VLRDEB'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRDEB'
      Precision = 15
      Size = 3
    end
    object SQLMovimentoCXESPEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Especialidade'
      FieldName = 'ESPEICOD'
      Origin = 'DB.MOVIMENTOCAIXA.ESPEICOD'
    end
    object SQLMovimentoCXPROFICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Profissional'
      FieldName = 'PROFICOD'
      Origin = 'DB.MOVIMENTOCAIXA.PROFICOD'
    end
    object SQLMovimentoCXUSUAICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Usu'#225'rio'
      FieldName = 'USUAICOD'
      Origin = 'DB.MOVIMENTOCAIXA.USUAICOD'
    end
    object SQLMovimentoCXMVCXINRORECIBO: TIntegerField
      DisplayLabel = 'Recibo'
      FieldName = 'MVCXINRORECIBO'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXINRORECIBO'
    end
    object SQLMovimentoCXAtendente: TStringField
      FieldKind = fkLookup
      FieldName = 'Atendente'
      LookupDataSet = TblAtendente
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60NOME'
      KeyFields = 'USUAICOD'
      Size = 30
      Lookup = True
    end
    object SQLMovimentoCXProfissional: TStringField
      FieldKind = fkLookup
      FieldName = 'Profissional'
      LookupDataSet = TblProfissional
      LookupKeyFields = 'PROFICOD'
      LookupResultField = 'PROFA60NOME'
      KeyFields = 'PROFICOD'
      Size = 30
      Lookup = True
    end
    object SQLMovimentoCXPaciente: TStringField
      FieldKind = fkLookup
      FieldName = 'Paciente'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLMovimentoCXDependente: TStringField
      FieldKind = fkLookup
      FieldName = 'Dependente'
      LookupDataSet = TblClienteDependente
      LookupKeyFields = 'CLIEA13ID;CLDPICOD'
      LookupResultField = 'CLDPA60NOME'
      KeyFields = 'CLIEA13ID;CLDPICOD'
      Size = 60
      Lookup = True
    end
  end
  object PipeEmitiCancelad: TppBDEPipeline
    DataSource = DSSQLMovimentoCX
    UserName = 'PipeMovimentoCX'
    Left = 337
    Top = 19
    object PipeMovimentoCXppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'MVCXICOD'
      FieldName = 'MVCXICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object PipeMovimentoCXppField2: TppField
      FieldAlias = 'MVCXDMOV'
      FieldName = 'MVCXDMOV'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object PipeMovimentoCXppField3: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 2
    end
    object PipeMovimentoCXppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLDPICOD'
      FieldName = 'CLDPICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object PipeMovimentoCXppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MVCXN2VLRCRED'
      FieldName = 'MVCXN2VLRCRED'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object PipeMovimentoCXppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'MVCXN2VLRDEB'
      FieldName = 'MVCXN2VLRDEB'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object PipeMovimentoCXppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESPEICOD'
      FieldName = 'ESPEICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object PipeMovimentoCXppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROFICOD'
      FieldName = 'PROFICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object PipeMovimentoCXppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'USUAICOD'
      FieldName = 'USUAICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object PipeMovimentoCXppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'MVCXINRORECIBO'
      FieldName = 'MVCXINRORECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object PipeMovimentoCXppField11: TppField
      FieldAlias = 'Atendente'
      FieldName = 'Atendente'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object PipeMovimentoCXppField12: TppField
      FieldAlias = 'Profissional'
      FieldName = 'Profissional'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
    object PipeMovimentoCXppField14: TppField
      FieldAlias = 'Dependente'
      FieldName = 'Dependente'
      FieldLength = 60
      DisplayWidth = 60
      Position = 12
    end
    object ppField1: TppField
      FieldAlias = 'Paciente'
      FieldName = 'Paciente'
      FieldLength = 10
      DisplayWidth = 60
      Position = 13
    end
  end
end
