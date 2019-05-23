inherited FormTelaRelGerConsultasPorPeriodo: TFormTelaRelGerConsultasPorPeriodo
  Caption = 'Gerencial - Consultas por Per'#237'odo'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited LabelTitulo: TLabel
        Left = 3
      end
      inherited PanelNavigator: TPanel
        object BtnImprimir: TSpeedButton
          Tag = 3
          Left = 26
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
        Width = 0
      end
      object GroupBoxDependente: TGroupBox
        Left = 128
        Top = 13
        Width = 504
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
          Left = 13
          Top = 17
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
          Left = 13
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
          Left = 11
          Top = 73
          Width = 480
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos os Profissionais'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PROFICOD'
          LookupDisplay = 'PROFA60NOME'
          LookupSource = DSSQLProfissional
          ParentFont = False
          TabOrder = 1
        end
        object ComboEspecialidade: TRxDBLookupCombo
          Left = 10
          Top = 31
          Width = 480
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
        Left = 128
        Top = 118
        Width = 265
        Height = 52
        Caption = ' Per'#237'odo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 16
          Top = 13
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
          Left = 143
          Top = 13
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
          Left = 12
          Top = 27
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
          Left = 138
          Top = 27
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
      object RadioStatus: TRadioGroup
        Left = 129
        Top = 171
        Width = 504
        Height = 95
        Caption = ' Status '
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Simples (Agendamento)'
          'Dupla   (Agendamento)'
          'Tripla  (Agendamento)'
          'Simples (Atendido)'
          'Dupla   (Atendido)'
          'Tripla  (Atendido)'
          'Simples (N'#227'o Atendido)'
          'Dupla   (N'#227'o Atendido)'
          'Tripla  (N'#227'o Atendido)')
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox2: TGroupBox
        Left = 130
        Top = 267
        Width = 504
        Height = 50
        Caption = ' Cidade '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboCidade: TRxDBLookupCombo
          Left = 9
          Top = 19
          Width = 485
          Height = 21
          DropDownCount = 8
          LookupField = 'CLIEA60CIDRES'
          LookupDisplay = 'CLIEA60CIDRES'
          LookupSource = DSSQLCidade
          TabOrder = 0
        end
      end
      object RadioTipo: TRadioGroup
        Left = 398
        Top = 118
        Width = 235
        Height = 52
        Caption = ' Tipo de Visualiza'#231#227'o '
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Layout 01'
          'Layout 02')
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox3: TGroupBox
        Left = 130
        Top = 318
        Width = 255
        Height = 50
        Caption = ' Conv'#234'nio  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object EditConvenio: TEdit
          Left = 10
          Top = 22
          Width = 231
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
      end
    end
  end
  object DSSQLEspecialidade: TDataSource
    DataSet = SQLEspecialidade
    Left = 614
    Top = 11
  end
  object SQLEspecialidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Especialidade'
      'Order by ESPEA60DESCR')
    Macros = <>
    Left = 642
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
    object SQLEspecialidadeESPEN3VLRPRICONSU: TBCDField
      DisplayLabel = 'Valor 1'#170' Consulta'
      FieldName = 'ESPEN3VLRPRICONSU'
      Origin = 'DB.ESPECIALIDADE.ESPEN3VLRPRICONSU'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLProfissional: TDataSource
    DataSet = SQLProfissional
    Left = 672
    Top = 11
  end
  object SQLProfissional: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Profissional'
      'Where ESPEICOD = :Especialidade AND PROFCOCULTAR = '#39'N'#39
      'Order by PROFA60NOME')
    Macros = <>
    Left = 700
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Especialidade'
        ParamType = ptUnknown
      end>
    object SQLProfissionalPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.PROFISSIONAL.PROFICOD'
    end
    object SQLProfissionalPROFA60NOME: TStringField
      FieldName = 'PROFA60NOME'
      Origin = 'DB.PROFISSIONAL.PROFA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.PROFISSIONAL.ESPEICOD'
    end
    object SQLProfissionalPROFDREG: TDateTimeField
      FieldName = 'PROFDREG'
      Origin = 'DB.PROFISSIONAL.PROFDREG'
    end
    object SQLProfissionalPROFCSIMPLES: TStringField
      FieldName = 'PROFCSIMPLES'
      Origin = 'DB.PROFISSIONAL.PROFCSIMPLES'
      FixedChar = True
      Size = 1
    end
    object SQLProfissionalPROFCDUPLA: TStringField
      FieldName = 'PROFCDUPLA'
      Origin = 'DB.PROFISSIONAL.PROFCDUPLA'
      FixedChar = True
      Size = 1
    end
    object SQLProfissionalPROFCTRIPLA: TStringField
      FieldName = 'PROFCTRIPLA'
      Origin = 'DB.PROFISSIONAL.PROFCTRIPLA'
      FixedChar = True
      Size = 1
    end
    object SQLProfissionalPROFCINFORMAQTDE: TStringField
      FieldName = 'PROFCINFORMAQTDE'
      Origin = 'DB.PROFISSIONAL.PROFCINFORMAQTDE'
      FixedChar = True
      Size = 1
    end
    object SQLProfissionalPROFCOCULTAR: TStringField
      FieldName = 'PROFCOCULTAR'
      Origin = 'DB.PROFISSIONAL.PROFCOCULTAR'
      FixedChar = True
      Size = 1
    end
  end
  object SQLAgendamento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Status) and'
      '(%Convenio) and'
      '(%Cidade)'
      'Order by ESPEICOD, AGENDMARCACAO'
      '')
    Macros = <
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
      end
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
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 575
    Top = 11
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
    object SQLAgendamentoPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDAMENTO.PROFICOD'
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
    object SQLAgendamentoProfissional: TStringField
      FieldKind = fkLookup
      FieldName = 'Profissional'
      LookupDataSet = TblProfissional
      LookupKeyFields = 'PROFICOD'
      LookupResultField = 'PROFA60NOME'
      KeyFields = 'PROFICOD'
      Size = 30
      Lookup = True
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
    object SQLAgendamentoMOTIICOD: TIntegerField
      FieldName = 'MOTIICOD'
      Origin = 'DB.AGENDAMENTO.MOTIICOD'
    end
    object SQLAgendamentoMotivoNome: TStringField
      DisplayLabel = 'Motivo N'#227'o Pagto'
      FieldKind = fkLookup
      FieldName = 'MotivoNome'
      LookupDataSet = TblMotivo
      LookupKeyFields = 'MOTIICOD'
      LookupResultField = 'MOTIA60DESCR'
      KeyFields = 'MOTIICOD'
      Size = 30
      Lookup = True
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
    object SQLAgendamentoAtendenteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AtendenteNome'
      LookupDataSet = TblAtendente
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60NOME'
      KeyFields = 'USUAICOD'
      Size = 60
      Lookup = True
    end
  end
  object DSSQLAgendamento: TDataSource
    DataSet = SQLAgendamento
    Left = 546
    Top = 11
  end
  object TblCliente: TTable
    DatabaseName = 'DBGestao'
    TableName = 'CLIENTE'
    Left = 690
    Top = 98
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
    Left = 718
    Top = 98
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
    Left = 718
    Top = 127
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
    Left = 690
    Top = 127
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
    Left = 690
    Top = 156
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
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = PipeAgendamento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Cart'#227'o de '#237'ndice 4x6 pol.'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 1270
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 126
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReportPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 432
    Top = 11
    Version = '10.06'
    mmColumnWidth = 208280
    DataPipelineName = 'PipeAgendamento'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'CAIXA DE ASSISTENCIA DOS ADVOGADOS DO RIO GRANDE DO SUL      -  ' +
          '    CNPJ: 87.093.092/0001-80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 136314
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
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'd.Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 20638
        mmWidth = 16510
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
        mmLeft = 40481
        mmTop = 20638
        mmWidth = 22648
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
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
        mmLeft = 40481
        mmTop = 529
        mmWidth = 10795
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCodigoAntigo'
        DataPipeline = PipeAgendamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 529
        mmWidth = 24871
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
  object PipeAgendamento: TppBDEPipeline
    DataSource = DSSQLAgendamento
    UserName = 'PipeAgendamento'
    Left = 460
    Top = 11
    object PipeAgendamentoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'AGENICOD'
      FieldName = 'AGENICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
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
      Alignment = taRightJustify
      FieldAlias = 'USUAICOD'
      FieldName = 'USUAICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object PipeAgendamentoppField19: TppField
      FieldAlias = 'AtendenteNome'
      FieldName = 'AtendenteNome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = PipeAgendamento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Cart'#227'o de '#237'ndice 4x6 pol.'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 126
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 488
    Top = 11
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeAgendamento'
    object ppHeaderBand3: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'CAIXA DE ASSISTENCIA DOS ADVOGADOS DO RIO GRANDE DO SUL      -  ' +
          '    CNPJ: 87.093.092/0001-80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 169598
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LISTAGEM DE CONSULTAS DO PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 7408
        mmWidth = 68527
        BandType = 0
      end
      object ppDE1: TppLabel
        UserName = 'ppDE1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91546
        mmTop = 7408
        mmWidth = 4763
        BandType = 0
      end
      object ppATE1: TppLabel
        UserName = 'ppATE1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146050
        mmTop = 7408
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AT'#201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 129646
        mmTop = 7408
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Doc Nro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1058
        mmTop = 23548
        mmWidth = 12912
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Titular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 23548
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 23548
        mmWidth = 13494
        BandType = 0
      end
      object ppCidade: TppLabel
        UserName = 'ppCidade'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CIDADE: TODAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1058
        mmTop = 17992
        mmWidth = 27517
        BandType = 0
      end
      object ppEspecialidade: TppLabel
        UserName = 'ppEspecialidade'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ESPECIALIDADE: TODAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1058
        mmTop = 13494
        mmWidth = 42122
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1058
        mmTop = 28310
        mmWidth = 200819
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppPaciente1: TppLabel
        UserName = 'ppPaciente1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 265
        mmWidth = 86784
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteNome'
        DataPipeline = PipeAgendamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 265
        mmWidth = 89959
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCodigoAntigo'
        DataPipeline = PipeAgendamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeAgendamento'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1058
        mmTop = 265
        mmWidth = 201084
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quantidade de consultas agendadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 6350
        mmWidth = 57573
        BandType = 7
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor total de consultas pagas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 14817
        mmWidth = 47625
        BandType = 7
      end
      object ppNroTotalConsultasAgendadas: TppLabel
        UserName = 'ppNroTotalConsultasAgendadas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 6350
        mmWidth = 6615
        BandType = 7
      end
      object ppNroTotalConsultasAtendidas: TppLabel
        UserName = 'ppNroTotalConsultasAtendidas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 19844
        mmWidth = 6615
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor total de consultas atendidas e recebidas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 24077
        mmWidth = 72496
        BandType = 7
      end
      object ppNroTotalConsultasNaoAtendidas: TppLabel
        UserName = 'ppNroTotalConsultasNaoAtendidas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 29104
        mmWidth = 6615
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quantidade de consultas atendidas e recebidas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 19844
        mmWidth = 74930
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quantidade de consultas N'#227'o atendidas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 29104
        mmWidth = 62865
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor total de consultas N'#227'o atendidas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 33338
        mmWidth = 60537
        BandType = 7
      end
      object ppVlrTotalConsultasAgendadasPagas: TppLabel
        UserName = 'ppVlrTotalConsultasAgendadasPagas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 14817
        mmWidth = 6615
        BandType = 7
      end
      object ppVlrTotalConsultasAtendidas: TppLabel
        UserName = 'ppVlrTotalConsultasAtendidas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 24077
        mmWidth = 6615
        BandType = 7
      end
      object ppVlrTotalConsultasNaoAtendidas: TppLabel
        UserName = 'ppVlrTotalConsultasNaoAtendidas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 33338
        mmWidth = 6615
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'ppNroTotalConsultasAgendadas1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quadro de Resumos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 1165
        mmTop = 1323
        mmWidth = 35348
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor total de consultas agendadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 10583
        mmWidth = 55245
        BandType = 7
      end
      object ppVlrTotalConsultasAgendadas: TppLabel
        UserName = 'ppVlrTotalConsultasAgendadas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 10583
        mmWidth = 6615
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quantidade de consultas desmarcadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 101600
        mmTop = 6350
        mmWidth = 61595
        BandType = 7
      end
    end
  end
  object SQLNroTotalAgendado: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Count(*) from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Convenio) and'
      '(%Cidade) and'
      '(%Status)')
    Macros = <
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
      end
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
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 16
    Top = 275
    object SQLNroTotalAgendadoCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
  end
  object SQLNroTotalAtendido: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Count(*) from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Convenio) and'
      '(%Cidade) and'
      '(%Status)'
      '')
    Macros = <
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
      end
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
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 45
    Top = 275
    object SQLNroTotalAtendidoCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
  end
  object SQLNroTotalNaoAtendido: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Count(*) from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Convenio) and'
      '(%Cidade) and'
      '(%Status)')
    Macros = <
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
      end
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
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 74
    Top = 275
    object SQLNroTotalNaoAtendidoCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
  end
  object SQLVlrTotalAgendado: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Sum(AGENN3VLRCONSULTA) from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Convenio) and'
      '(%Cidade) and'
      '(%Status)')
    Macros = <
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
      end
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
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 16
    Top = 305
    object SQLVlrTotalAgendadoSUM: TBCDField
      FieldName = 'SUM'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRCONSULTA'
      Precision = 15
      Size = 3
    end
  end
  object SQLVlrTotalAtendido: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Sum(AGENN3VLRPAGO) from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Convenio) and'
      '(%Cidade) and'
      'AGENINRORECIBO > 0 and'
      '(%Status)')
    Macros = <
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
      end
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
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 45
    Top = 305
    object SQLVlrTotalAtendidoSUM: TBCDField
      FieldName = 'SUM'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRPAGO'
      Precision = 15
      Size = 3
    end
  end
  object SQLVlrTotalNaoAtendido: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Sum(AGENN3VLRCONSULTA) from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Convenio) and'
      '(%Cidade) and'
      '(%Status)'
      '')
    Macros = <
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
      end
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
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 75
    Top = 305
    object SQLVlrTotalNaoAtendidoSUM: TBCDField
      FieldName = 'SUM'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRCONSULTA'
      Precision = 15
      Size = 3
    end
  end
  object SQLCidade: TQuery
    DatabaseName = 'DBGestao'
    SQL.Strings = (
      'Select CLIEA60CIDRES from CLIENTE'
      'Group by CLIEA60CIDRES Order by CLIEA60CIDRES')
    Left = 648
    Top = 328
  end
  object DSSQLCidade: TDataSource
    DataSet = SQLCidade
    Left = 672
    Top = 328
  end
  object SQLVlrTotalAgendadoPago: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Sum(AGENN3VLRPAGO) from Agendamento'
      'Where'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Inicial) and'
      '(%Final) and'
      '(%Convenio) and'
      '(%Cidade) and'
      '(%Status)')
    Macros = <
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
      end
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
        Name = 'Convenio'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 15
    Top = 335
    object SQLVlrTotalAgendadoPagoSUM: TBCDField
      FieldName = 'SUM'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRPAGO'
      Precision = 15
      Size = 3
    end
  end
end
