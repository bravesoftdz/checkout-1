inherited FormTelaManutHorario: TFormTelaManutHorario
  Caption = 'Manuten'#231#227'o dos Hor'#225'rios dos Profissionais'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object Label22: TLabel [0]
        Left = 10
        Top = 11
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
      inherited PanelBarra: TPanel
        Width = 0
      end
      object ComboProfissional: TRxDBLookupCombo
        Left = 6
        Top = 24
        Width = 301
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Escolha um Profissional...'
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
      object GroupBox1: TGroupBox
        Left = 6
        Top = 52
        Width = 301
        Height = 41
        Caption = ' Per'#237'odo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label3: TLabel
          Left = 11
          Top = 18
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = De
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 136
          Top = 18
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = Ate
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object De: TDateEdit
          Left = 39
          Top = 14
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object Ate: TDateEdit
          Left = 167
          Top = 14
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 104
        Width = 301
        Height = 41
        Caption = ' Horas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label1: TLabel
          Left = 11
          Top = 18
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
          Left = 146
          Top = 18
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
        object EditHoraInicial: TEdit
          Left = 49
          Top = 14
          Width = 78
          Height = 21
          TabOrder = 0
          Text = '00:00'
        end
        object EditHoraFinal: TEdit
          Left = 177
          Top = 14
          Width = 78
          Height = 21
          TabOrder = 1
          Text = '00:00'
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object ButtonGerarManual: TSpeedButton
              Tag = 3
              Left = 6
              Top = 4
              Width = 179
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Gerar Hor'#225'rios Manuais'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = ButtonGerarManualClick
            end
            object BtApagaHorarios: TSpeedButton
              Tag = 3
              Left = 193
              Top = 4
              Width = 179
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Apagar Hor'#225'rios'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object SQLProfissional: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Vendedor')
    Left = 296
    Top = 10
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
    object SQLProfissionalESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.VENDEDOR.ESPEICOD'
    end
  end
  object DSSQLProfissional: TDataSource
    DataSet = SQLProfissional
    Left = 325
    Top = 10
  end
  object SQLConfigAgenda: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ConfigAgendaProf Where PROFICOD = :Profissional')
    Left = 354
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptUnknown
      end>
    object SQLConfigAgendaCFAGICOD: TIntegerField
      FieldName = 'CFAGICOD'
      Origin = 'DB.CONFIGAGENDA.CFAGICOD'
    end
    object SQLConfigAgendaPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.CONFIGAGENDA.PROFICOD'
    end
    object SQLConfigAgendaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CONFIGAGENDA.USUAICOD'
    end
    object SQLConfigAgendaCFAGDFERIAINI: TDateTimeField
      FieldName = 'CFAGDFERIAINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDFERIAINI'
    end
    object SQLConfigAgendaCFAGDFERIAFIM: TDateTimeField
      FieldName = 'CFAGDFERIAFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDFERIAFIM'
    end
    object SQLConfigAgendaCFAGIINTERVALO: TIntegerField
      FieldName = 'CFAGIINTERVALO'
      Origin = 'DB.CONFIGAGENDA.CFAGIINTERVALO'
    end
    object SQLConfigAgendaCFAGCDOMINGO: TStringField
      FieldName = 'CFAGCDOMINGO'
      Origin = 'DB.CONFIGAGENDA.CFAGCDOMINGO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigAgendaCFAGCSEGUNDA: TStringField
      FieldName = 'CFAGCSEGUNDA'
      Origin = 'DB.CONFIGAGENDA.CFAGCSEGUNDA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigAgendaCFAGCTERCA: TStringField
      FieldName = 'CFAGCTERCA'
      Origin = 'DB.CONFIGAGENDA.CFAGCTERCA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigAgendaCFAGCQUARTA: TStringField
      FieldName = 'CFAGCQUARTA'
      Origin = 'DB.CONFIGAGENDA.CFAGCQUARTA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigAgendaCFAGCQUINTA: TStringField
      FieldName = 'CFAGCQUINTA'
      Origin = 'DB.CONFIGAGENDA.CFAGCQUINTA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigAgendaCFAGCSEXTA: TStringField
      FieldName = 'CFAGCSEXTA'
      Origin = 'DB.CONFIGAGENDA.CFAGCSEXTA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigAgendaCFAGCSABADO: TStringField
      FieldName = 'CFAGCSABADO'
      Origin = 'DB.CONFIGAGENDA.CFAGCSABADO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigAgendaCFAGDDOMINI: TDateTimeField
      FieldName = 'CFAGDDOMINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDDOMINI'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDDOMFIM: TDateTimeField
      FieldName = 'CFAGDDOMFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDDOMFIM'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDSEGINI: TDateTimeField
      FieldName = 'CFAGDSEGINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEGINI'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDSEGFIM: TDateTimeField
      FieldName = 'CFAGDSEGFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEGFIM'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDTERINI: TDateTimeField
      FieldName = 'CFAGDTERINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDTERINI'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDTERFIM: TDateTimeField
      FieldName = 'CFAGDTERFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDTERFIM'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDQUAINI: TDateTimeField
      FieldName = 'CFAGDQUAINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUAINI'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDQUAFIM: TDateTimeField
      FieldName = 'CFAGDQUAFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUAFIM'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDQUIINI: TDateTimeField
      FieldName = 'CFAGDQUIINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUIINI'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDQUIFIM: TDateTimeField
      FieldName = 'CFAGDQUIFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUIFIM'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDSEXINI: TDateTimeField
      FieldName = 'CFAGDSEXINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEXINI'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDSEXFIM: TDateTimeField
      FieldName = 'CFAGDSEXFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEXFIM'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDSABINI: TDateTimeField
      FieldName = 'CFAGDSABINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDSABINI'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object SQLConfigAgendaCFAGDSABFIM: TDateTimeField
      FieldName = 'CFAGDSABFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDSABFIM'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
  end
  object SQLFeriado: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Feriado')
    Left = 383
    Top = 10
    object SQLFeriadoFERIDDATA: TDateTimeField
      FieldName = 'FERIDDATA'
      Origin = 'DB.FERIADO.FERIDDATA'
    end
    object SQLFeriadoFERIA60DESCR: TStringField
      FieldName = 'FERIA60DESCR'
      Origin = 'DB.FERIADO.FERIA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLAgenda: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from AGENDACONSULTA'
      'Where'
      '(%Profissional)'
      'and'
      '(%Data)')
    Macros = <
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 411
    Top = 10
    object SQLAgendaAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDAMENTO.AGENICOD'
    end
    object SQLAgendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.AGENDAMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendaCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.AGENDAMENTO.CLDPICOD'
    end
    object SQLAgendaPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDAMENTO.PROFICOD'
    end
    object SQLAgendaAGENDMARCACAO: TDateTimeField
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDAMENTO.AGENDMARCACAO'
    end
  end
  object SQLAgendaFerias: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from AGENDACONSULTA'
      'Where'
      '(%Profissional)'
      'and'
      '(%Data)')
    Macros = <
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 439
    Top = 10
    object SQLAgendaFeriasAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDAMENTO.AGENICOD'
    end
    object SQLAgendaFeriasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.AGENDAMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendaFeriasCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.AGENDAMENTO.CLDPICOD'
    end
    object SQLAgendaFeriasPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDAMENTO.PROFICOD'
    end
    object SQLAgendaFeriasAGENDMARCACAO: TDateTimeField
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDAMENTO.AGENDMARCACAO'
    end
  end
  object DSSQLAgendamento: TDataSource
    AutoEdit = False
    DataSet = SQLAgendamento
    Left = 494
    Top = 10
  end
  object SQLAgendamento: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from AGENDACONSULTA where AGENICOD is null')
    Macros = <>
    Left = 522
    Top = 10
    object SQLAgendamentoAGENICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Interno'
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
    object SQLAgendamentoAGENICODAGRUP: TIntegerField
      FieldName = 'AGENICODAGRUP'
      Origin = 'DB.AGENDAMENTO.AGENICODAGRUP'
    end
    object SQLAgendamentoPROFICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Profissional'
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDAMENTO.PROFICOD'
    end
    object SQLAgendamentoAGENDMARCACAO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDAMENTO.AGENDMARCACAO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object SQLAgendamentoAGENCSTATUS: TStringField
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDAMENTO.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLAgendamentoAGENINRORECIBO: TIntegerField
      FieldName = 'AGENINRORECIBO'
      Origin = 'DB.AGENDAMENTO.AGENINRORECIBO'
    end
    object SQLAgendamentoUSUAICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Usu'#225'rio'
      FieldName = 'USUAICOD'
      Origin = 'DB.AGENDAMENTO.USUAICOD'
    end
    object SQLAgendamentoESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.AGENDAMENTO.ESPEICOD'
    end
    object SQLAgendamentoAGENA254OBS: TStringField
      FieldName = 'AGENA254OBS'
      Origin = 'DB.AGENDAMENTO.AGENA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLAgendamentoAGENDDIGIT: TDateTimeField
      FieldName = 'AGENDDIGIT'
      Origin = 'DB.AGENDAMENTO.AGENDDIGIT'
    end
    object SQLAgendamentoAGENN3VLRCONSULTA: TFloatField
      FieldName = 'AGENN3VLRCONSULTA'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRCONSULTA'
    end
    object SQLAgendamentoAGENN3VLRPAGO: TFloatField
      FieldName = 'AGENN3VLRPAGO'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRPAGO'
    end
  end
  object MemDias: TMemoryTable
    DatabaseName = 'UnitGestao_Temp'
    EnableDelete = False
    TableName = 'DiasSemana'
    Left = 550
    Top = 10
    object MemDiasDom: TIntegerField
      Tag = 1
      FieldName = 'Dom'
    end
    object MemDiasSeg: TIntegerField
      Tag = 1
      FieldName = 'Seg'
    end
    object MemDiasTer: TIntegerField
      Tag = 1
      FieldName = 'Ter'
    end
    object MemDiasQua: TIntegerField
      Tag = 1
      FieldName = 'Qua'
    end
    object MemDiasQui: TIntegerField
      Tag = 1
      FieldName = 'Qui'
    end
    object MemDiasSex: TIntegerField
      Tag = 1
      FieldName = 'Sex'
    end
    object MemDiasSab: TIntegerField
      Tag = 1
      FieldName = 'Sab'
    end
    object MemDiasDomHoraIni: TDateTimeField
      FieldName = 'DomHoraIni'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasDomHoraFim: TDateTimeField
      FieldName = 'DomHoraFim'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasSegHoraIni: TDateTimeField
      FieldName = 'SegHoraIni'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasSegHoraFim: TDateTimeField
      FieldName = 'SegHoraFim'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasTerHoraIni: TDateTimeField
      FieldName = 'TerHoraIni'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasTerHoraFim: TDateTimeField
      FieldName = 'TerHoraFim'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasQuaHoraIni: TDateTimeField
      FieldName = 'QuaHoraIni'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasQuaHoraFim: TDateTimeField
      FieldName = 'QuaHoraFim'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasQuiHoraIni: TDateTimeField
      FieldName = 'QuiHoraIni'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasQuiHoraFim: TDateTimeField
      FieldName = 'QuiHoraFim'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasSexHoraIni: TDateTimeField
      FieldName = 'SexHoraIni'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasSexHoraFim: TDateTimeField
      FieldName = 'SexHoraFim'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasSabHoraIni: TDateTimeField
      FieldName = 'SabHoraIni'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object MemDiasSabHoraFim: TDateTimeField
      FieldName = 'SabHoraFim'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
  end
  object SQLExisteData: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'Select * from Agendamento where (%ExisteDataHora) and (%Profissi' +
        'onal)')
    Macros = <
      item
        DataType = ftString
        Name = 'ExisteDataHora'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 629
    Top = 10
    object SQLExisteDataAGENDMARCACAO: TDateTimeField
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDAMENTO.AGENDMARCACAO'
    end
  end
  object SQLAgendamentoExcluir: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Delete From AgendaConsulta where (%Profissional) '
      'and (%DataInicial) and (%DataFinal)')
    Macros = <
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 346
    Top = 58
  end
end
