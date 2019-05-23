inherited FormTelaRelListConsultaPeriodo: TFormTelaRelListConsultaPeriodo
  Left = 371
  Top = 168
  Caption = 'Listagem de Consultas por Per'#237'odo dos Profissional'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object BtnImprimir: TSpeedButton
          Tag = 3
          Left = 26
          Top = 4
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
        Width = 0
      end
      object GroupBoxDependente: TGroupBox
        Left = 200
        Top = 16
        Width = 369
        Height = 104
        Caption = ' Filtro '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 10
          Top = 18
          Width = 76
          Height = 13
          Caption = 'Especialidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 10
          Top = 59
          Width = 65
          Height = 13
          Caption = 'Profissional'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboProfissional: TRxDBLookupCombo
          Left = 8
          Top = 73
          Width = 353
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos os Profissionais'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLProfissional
          ParentFont = False
          TabOrder = 1
        end
        object ComboEspecialidade: TRxDBLookupCombo
          Left = 7
          Top = 31
          Width = 354
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Escolha uma Especialidade...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'ESPEICOD'
          LookupDisplay = 'ESPEA60DESCR'
          LookupSource = DSSQLEspecialidade
          ParentFont = False
          TabOrder = 0
          OnExit = ComboEspecialidadeExit
        end
      end
      object GroupBox1: TGroupBox
        Left = 200
        Top = 127
        Width = 369
        Height = 65
        Caption = ' Per'#237'odo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 48
          Top = 21
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
          Left = 201
          Top = 21
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
          Left = 44
          Top = 35
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
          Left = 196
          Top = 35
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
    end
  end
  object DSSQLAgendamento: TDataSource
    DataSet = SQLAgendamento
    Left = 82
    Top = 8
  end
  object SQLAgendamento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from AgendaConsulta'
      'Where'
      '(%Inicial) and'
      '(%Final) and'
      '(%Especialidade) and'
      '(%Profissional)'
      'Order by Proficod, AGENDMARCACAO'
      '')
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
        Name = 'Especialidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 111
    Top = 8
    object SQLAgendamentoAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDAMENTO.AGENICOD'
    end
    object SQLAgendamentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.AGENDAMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendamentoCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.AGENDAMENTO.CLDPICOD'
    end
    object SQLAgendamentoAGENDMARCACAO: TDateTimeField
      DisplayLabel = 'Dt.Marca'#231#227'o'
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDAMENTO.AGENDMARCACAO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object SQLAgendamentoAGENCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDAMENTO.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLAgendamentoAGENINRORECIBO: TIntegerField
      DisplayLabel = 'Nro.Recibo'
      FieldName = 'AGENINRORECIBO'
      Origin = 'DB.AGENDAMENTO.AGENINRORECIBO'
    end
    object SQLAgendamentoAGENDDIGIT: TDateTimeField
      DisplayLabel = 'Dt.Digita'#231#227'o'
      FieldName = 'AGENDDIGIT'
      Origin = 'DB.AGENDAMENTO.AGENDDIGIT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLAgendamentoClienteNome: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLAgendamentoAGENN3VLRCONSULTA: TBCDField
      DisplayLabel = 'Vlr.Consulta'
      FieldName = 'AGENN3VLRCONSULTA'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRCONSULTA'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLAgendamentoAGENN3VLRPAGO: TBCDField
      DisplayLabel = 'Vlr.Pagto'
      FieldName = 'AGENN3VLRPAGO'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRPAGO'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLAgendamentoAGENDPAGO: TDateTimeField
      DisplayLabel = 'Data Pagto'
      FieldName = 'AGENDPAGO'
      Origin = 'DB.AGENDAMENTO.AGENDPAGO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLAgendamentoClienteCodigoAntigo: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCodigoAntigo'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA10CODANT'
      KeyFields = 'CLIEA13ID'
      Lookup = True
    end
    object SQLAgendamentoDependenteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'DependenteNome'
      LookupDataSet = TblClienteDependente
      LookupKeyFields = 'CLIEA13ID;CLDPICOD'
      LookupResultField = 'CLDPA60NOME'
      KeyFields = 'CLIEA13ID;CLDPICOD'
      Size = 60
      Lookup = True
    end
    object SQLAgendamentoUSUAICOD: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAICOD'
      Origin = 'DB.AGENDAMENTO.USUAICOD'
    end
    object SQLAgendamentoPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDACONSULTA.PROFICOD'
    end
    object SQLAgendamentoESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.AGENDACONSULTA.ESPEICOD'
    end
    object SQLAgendamentoAGENA254OBS: TStringField
      FieldName = 'AGENA254OBS'
      Origin = 'DB.AGENDACONSULTA.AGENA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLAgendamentoAGENICODAGRUP: TIntegerField
      FieldName = 'AGENICODAGRUP'
      Origin = 'DB.AGENDACONSULTA.AGENICODAGRUP'
    end
    object SQLAgendamentoAGENIUSUATEND: TIntegerField
      FieldName = 'AGENIUSUATEND'
      Origin = 'DB.AGENDACONSULTA.AGENIUSUATEND'
    end
    object SQLAgendamentoAGENIQTDE: TIntegerField
      FieldName = 'AGENIQTDE'
      Origin = 'DB.AGENDACONSULTA.AGENIQTDE'
    end
    object SQLAgendamentoMONAICOD: TIntegerField
      FieldName = 'MONAICOD'
      Origin = 'DB.AGENDACONSULTA.MONAICOD'
    end
    object SQLAgendamentoProfissional: TStringField
      FieldKind = fkLookup
      FieldName = 'Profissional'
      LookupDataSet = TblProfissional
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'PROFICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoMotivoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MotivoNome'
      LookupDataSet = TblMotivo
      LookupKeyFields = 'MONAICOD'
      LookupResultField = 'MONAA60DESCR'
      KeyFields = 'MONAICOD'
      Size = 30
      Lookup = True
    end
  end
  object PipeAgendamento: TppBDEPipeline
    DataSource = DSSQLAgendamento
    UserName = 'PipeAgendamento'
    Left = 220
    Top = 10
    object PipeAgendamentoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGENICOD'
      FieldName = 'AGENICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipeAgendamentoppField2: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 1
    end
    object PipeAgendamentoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLDPICOD'
      FieldName = 'CLDPICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object PipeAgendamentoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROFICOD'
      FieldName = 'PROFICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object PipeAgendamentoppField5: TppField
      FieldAlias = 'AGENDMARCACAO'
      FieldName = 'AGENDMARCACAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object PipeAgendamentoppField6: TppField
      FieldAlias = 'AGENCSTATUS'
      FieldName = 'AGENCSTATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object PipeAgendamentoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGENINRORECIBO'
      FieldName = 'AGENINRORECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object PipeAgendamentoppField8: TppField
      FieldAlias = 'AGENDDIGIT'
      FieldName = 'AGENDDIGIT'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object PipeAgendamentoppField9: TppField
      FieldAlias = 'Profissional'
      FieldName = 'Profissional'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object PipeAgendamentoppField10: TppField
      FieldAlias = 'ClienteNome'
      FieldName = 'ClienteNome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object PipeAgendamentoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGENN3VLRCONSULTA'
      FieldName = 'AGENN3VLRCONSULTA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object PipeAgendamentoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGENN3VLRPAGO'
      FieldName = 'AGENN3VLRPAGO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object PipeAgendamentoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'MOTIICOD'
      FieldName = 'MOTIICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object PipeAgendamentoppField14: TppField
      FieldAlias = 'MotivoNome'
      FieldName = 'MotivoNome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object PipeAgendamentoppField15: TppField
      FieldAlias = 'AGENDPAGO'
      FieldName = 'AGENDPAGO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object PipeAgendamentoppField16: TppField
      FieldAlias = 'ClienteCodigoAntigo'
      FieldName = 'ClienteCodigoAntigo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object PipeAgendamentoppField17: TppField
      FieldAlias = 'DependenteNome'
      FieldName = 'DependenteNome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object PipeAgendamentoppField18: TppField
      FieldAlias = 'USUAICOD'
      FieldName = 'USUAICOD'
      FieldLength = 10
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = PipeAgendamento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 1270
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReportPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 248
    Top = 10
    Version = '10.06'
    mmColumnWidth = 208280
    DataPipelineName = 'PipeAgendamento'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppEmpresa: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3316
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 11924
        BandType = 0
      end
      object ppLabel45: TppLabel
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
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 20638
        mmWidth = 17357
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 159015
        mmTop = 20902
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Motivo n'#227'o Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 179652
        mmTop = 20902
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PROFISSIONAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 13758
        mmWidth = 20955
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
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 7408
        mmWidth = 55033
        BandType = 0
      end
      object ppDE: TppLabel
        OnPrint = ppDEPrint
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
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 7408
        mmWidth = 3810
        BandType = 0
      end
      object ppATE: TppLabel
        OnPrint = ppATEPrint
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
        mmHeight = 3175
        mmLeft = 146050
        mmTop = 7408
        mmWidth = 5292
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
        mmHeight = 3175
        mmLeft = 129646
        mmTop = 7408
        mmWidth = 5292
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Profissional'
        DataPipeline = PipeAgendamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 3175
        mmLeft = 27781
        mmTop = 13758
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Atend'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 20902
        mmWidth = 7197
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 28046
        mmTop = 20638
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome do Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 20638
        mmWidth = 22648
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MotivoNome'
        DataPipeline = PipeAgendamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 3175
        mmLeft = 179652
        mmTop = 529
        mmWidth = 15028
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENN3VLRPAGO'
        DataPipeline = PipeAgendamento
        DisplayFormat = '(R$)###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 3175
        mmLeft = 145786
        mmTop = 529
        mmWidth = 24553
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENDMARCACAO'
        DataPipeline = PipeAgendamento
        DisplayFormat = 'dd/mm/yy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 529
        mmWidth = 25612
        BandType = 4
      end
      object ppPaciente: TppLabel
        UserName = 'Paciente'
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
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 529
        mmWidth = 10795
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'USUAICOD'
        DataPipeline = PipeAgendamento
        DisplayFormat = '##00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 529
        mmWidth = 7144
        BandType = 4
      end
      object ppDEP: TppLabel
        UserName = 'DEP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 28046
        mmTop = 529
        mmWidth = 4868
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'PROFICOD'
      DataPipeline = PipeAgendamento
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipeAgendamento'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object TblCliente: TTable
    DatabaseName = 'DB'
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
    DatabaseName = 'DB'
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
    object TblAtendenteUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object TblProfissional: TTable
    DatabaseName = 'DB'
    TableName = 'VENDEDOR'
    Left = 18
    Top = 351
    object TblProfissionalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Required = True
    end
    object TblProfissionalVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDN2COMISV: TBCDField
      FieldName = 'VENDN2COMISV'
      Precision = 15
      Size = 3
    end
    object TblProfissionalVENDN2COMISP: TBCDField
      FieldName = 'VENDN2COMISP'
      Precision = 15
      Size = 3
    end
    object TblProfissionalVENDCTIPCOMIS: TStringField
      FieldName = 'VENDCTIPCOMIS'
      FixedChar = True
      Size = 1
    end
    object TblProfissionalVENDCCOMISACRESC: TStringField
      FieldName = 'VENDCCOMISACRESC'
      FixedChar = True
      Size = 1
    end
    object TblProfissionalPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblProfissionalREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object TblProfissionalVENDA60EMAIL: TStringField
      FieldName = 'VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDA5FISJURID: TStringField
      FieldName = 'VENDA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object TblProfissionalVENDA14CGC: TStringField
      FieldName = 'VENDA14CGC'
      FixedChar = True
      Size = 14
    end
    object TblProfissionalVENDA20IE: TStringField
      FieldName = 'VENDA20IE'
      FixedChar = True
    end
    object TblProfissionalVENDA11CPF: TStringField
      FieldName = 'VENDA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblProfissionalVENDA10RG: TStringField
      FieldName = 'VENDA10RG'
      FixedChar = True
      Size = 10
    end
    object TblProfissionalVENDA60CONTATO: TStringField
      FieldName = 'VENDA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDA15FONE1: TStringField
      FieldName = 'VENDA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblProfissionalVENDA15FONE2: TStringField
      FieldName = 'VENDA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblProfissionalVENDA15FAX: TStringField
      FieldName = 'VENDA15FAX'
      FixedChar = True
      Size = 15
    end
    object TblProfissionalVENDA60END: TStringField
      FieldName = 'VENDA60END'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDA60BAI: TStringField
      FieldName = 'VENDA60BAI'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDA60CID: TStringField
      FieldName = 'VENDA60CID'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDA2UF: TStringField
      FieldName = 'VENDA2UF'
      FixedChar = True
      Size = 2
    end
    object TblProfissionalVENDA8CEP: TStringField
      FieldName = 'VENDA8CEP'
      FixedChar = True
      Size = 8
    end
    object TblProfissionalBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object TblProfissionalVENDA5AGENCIA: TStringField
      FieldName = 'VENDA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object TblProfissionalVENDA10CONTA: TStringField
      FieldName = 'VENDA10CONTA'
      FixedChar = True
      Size = 10
    end
    object TblProfissionalVENDA60TITULAR: TStringField
      FieldName = 'VENDA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDDABERTCONTA: TDateTimeField
      FieldName = 'VENDDABERTCONTA'
    end
    object TblProfissionalVENDA254OBS: TStringField
      FieldName = 'VENDA254OBS'
      FixedChar = True
      Size = 254
    end
    object TblProfissionalVENDA30CORE: TStringField
      FieldName = 'VENDA30CORE'
      FixedChar = True
      Size = 30
    end
    object TblProfissionalVENDA60RAZAOSOCIAL: TStringField
      FieldName = 'VENDA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalVENDIDIASVALFIDEL: TIntegerField
      FieldName = 'VENDIDIASVALFIDEL'
    end
    object TblProfissionalVENDN2PERCFIDEL: TBCDField
      FieldName = 'VENDN2PERCFIDEL'
      Precision = 15
      Size = 2
    end
    object TblProfissionalVENDN2PERCIRRF: TBCDField
      FieldName = 'VENDN2PERCIRRF'
      Precision = 15
      Size = 2
    end
    object TblProfissionalESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
    end
  end
  object TblMotivo: TTable
    DatabaseName = 'DB'
    TableName = 'MOTIVONAOATEND'
    Left = 18
    Top = 380
    object TblMotivoMONAICOD: TIntegerField
      FieldName = 'MONAICOD'
      Required = True
    end
    object TblMotivoMONAA60DESCR: TStringField
      FieldName = 'MONAA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLEspecialidade: TDataSource
    DataSet = SQLEspecialidade
    Left = 310
    Top = 11
  end
  object SQLEspecialidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Especialidade'
      'Order by ESPEA60DESCR')
    Macros = <>
    Left = 338
    Top = 11
    object SQLEspecialidadeESPEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Especialidade'
      FieldName = 'ESPEICOD'
      Origin = 'DB.ESPECIALIDADE.ESPEICOD'
    end
    object SQLEspecialidadeESPEA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ESPEA60DESCR'
      Origin = 'DB.ESPECIALIDADE.ESPEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLEspecialidadeESPEN3VLRCONSULTA: TBCDField
      DisplayLabel = 'Valor Consulta'
      FieldName = 'ESPEN3VLRCONSULTA'
      Origin = 'DB.ESPECIALIDADE.ESPEN3VLRCONSULTA'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 3
    end
  end
  object SQLProfissional: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from VENDEDOR'
      'Where ESPEICOD = :Especialidade'
      'Order by VENDA60NOME')
    Macros = <>
    Left = 396
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Especialidade'
        ParamType = ptUnknown
      end>
    object SQLProfissionalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLProfissionalVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDN2COMISV: TBCDField
      FieldName = 'VENDN2COMISV'
      Origin = 'DB.VENDEDOR.VENDN2COMISV'
      Precision = 15
      Size = 3
    end
    object SQLProfissionalVENDN2COMISP: TBCDField
      FieldName = 'VENDN2COMISP'
      Origin = 'DB.VENDEDOR.VENDN2COMISP'
      Precision = 15
      Size = 3
    end
    object SQLProfissionalVENDCTIPCOMIS: TStringField
      FieldName = 'VENDCTIPCOMIS'
      Origin = 'DB.VENDEDOR.VENDCTIPCOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLProfissionalVENDCCOMISACRESC: TStringField
      FieldName = 'VENDCCOMISACRESC'
      Origin = 'DB.VENDEDOR.VENDCCOMISACRESC'
      FixedChar = True
      Size = 1
    end
    object SQLProfissionalPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProfissionalREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDOR.REGISTRO'
    end
    object SQLProfissionalVENDA60EMAIL: TStringField
      FieldName = 'VENDA60EMAIL'
      Origin = 'DB.VENDEDOR.VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDA5FISJURID: TStringField
      FieldName = 'VENDA5FISJURID'
      Origin = 'DB.VENDEDOR.VENDA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLProfissionalVENDA14CGC: TStringField
      FieldName = 'VENDA14CGC'
      Origin = 'DB.VENDEDOR.VENDA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLProfissionalVENDA20IE: TStringField
      FieldName = 'VENDA20IE'
      Origin = 'DB.VENDEDOR.VENDA20IE'
      FixedChar = True
    end
    object SQLProfissionalVENDA11CPF: TStringField
      FieldName = 'VENDA11CPF'
      Origin = 'DB.VENDEDOR.VENDA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLProfissionalVENDA10RG: TStringField
      FieldName = 'VENDA10RG'
      Origin = 'DB.VENDEDOR.VENDA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLProfissionalVENDA60CONTATO: TStringField
      FieldName = 'VENDA60CONTATO'
      Origin = 'DB.VENDEDOR.VENDA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDA15FONE1: TStringField
      FieldName = 'VENDA15FONE1'
      Origin = 'DB.VENDEDOR.VENDA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLProfissionalVENDA15FONE2: TStringField
      FieldName = 'VENDA15FONE2'
      Origin = 'DB.VENDEDOR.VENDA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLProfissionalVENDA15FAX: TStringField
      FieldName = 'VENDA15FAX'
      Origin = 'DB.VENDEDOR.VENDA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLProfissionalVENDA60END: TStringField
      FieldName = 'VENDA60END'
      Origin = 'DB.VENDEDOR.VENDA60END'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDA60BAI: TStringField
      FieldName = 'VENDA60BAI'
      Origin = 'DB.VENDEDOR.VENDA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDA60CID: TStringField
      FieldName = 'VENDA60CID'
      Origin = 'DB.VENDEDOR.VENDA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDA2UF: TStringField
      FieldName = 'VENDA2UF'
      Origin = 'DB.VENDEDOR.VENDA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLProfissionalVENDA8CEP: TStringField
      FieldName = 'VENDA8CEP'
      Origin = 'DB.VENDEDOR.VENDA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLProfissionalBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.VENDEDOR.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLProfissionalVENDA5AGENCIA: TStringField
      FieldName = 'VENDA5AGENCIA'
      Origin = 'DB.VENDEDOR.VENDA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLProfissionalVENDA10CONTA: TStringField
      FieldName = 'VENDA10CONTA'
      Origin = 'DB.VENDEDOR.VENDA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLProfissionalVENDA60TITULAR: TStringField
      FieldName = 'VENDA60TITULAR'
      Origin = 'DB.VENDEDOR.VENDA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDDABERTCONTA: TDateTimeField
      FieldName = 'VENDDABERTCONTA'
      Origin = 'DB.VENDEDOR.VENDDABERTCONTA'
    end
    object SQLProfissionalVENDA254OBS: TStringField
      FieldName = 'VENDA254OBS'
      Origin = 'DB.VENDEDOR.VENDA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLProfissionalVENDA30CORE: TStringField
      FieldName = 'VENDA30CORE'
      Origin = 'DB.VENDEDOR.VENDA30CORE'
      FixedChar = True
      Size = 30
    end
    object SQLProfissionalVENDA60RAZAOSOCIAL: TStringField
      FieldName = 'VENDA60RAZAOSOCIAL'
      Origin = 'DB.VENDEDOR.VENDA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalVENDIDIASVALFIDEL: TIntegerField
      FieldName = 'VENDIDIASVALFIDEL'
      Origin = 'DB.VENDEDOR.VENDIDIASVALFIDEL'
    end
    object SQLProfissionalVENDN2PERCFIDEL: TBCDField
      FieldName = 'VENDN2PERCFIDEL'
      Origin = 'DB.VENDEDOR.VENDN2PERCFIDEL'
      Precision = 15
      Size = 2
    end
    object SQLProfissionalVENDN2PERCIRRF: TBCDField
      FieldName = 'VENDN2PERCIRRF'
      Origin = 'DB.VENDEDOR.VENDN2PERCIRRF'
      Precision = 15
      Size = 2
    end
    object SQLProfissionalESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.VENDEDOR.ESPEICOD'
    end
  end
  object DSSQLProfissional: TDataSource
    DataSet = SQLProfissional
    Left = 368
    Top = 11
  end
end
