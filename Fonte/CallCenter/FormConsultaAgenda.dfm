object FormTelaConsultaCompromisso: TFormTelaConsultaCompromisso
  Left = 210
  Top = 110
  Width = 800
  Height = 516
  Caption = 'FormTelaConsultaCompromisso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCodigoDescricao: TPanel
    Left = 0
    Top = 57
    Width = 792
    Height = 152
    Align = alTop
    BevelOuter = bvNone
    Color = 14536396
    TabOrder = 0
    Visible = False
    object MonthCalendar1: TMonthCalendar
      Left = 608
      Top = 0
      Width = 190
      Height = 153
      Date = 0.695467939811351
      TabOrder = 0
    end
  end
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = 14731440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 209
    Width = 792
    Height = 280
    Align = alClient
    BevelOuter = bvNone
    Color = 15461355
    TabOrder = 2
    Visible = False
    object Bevel1: TBevel
      Left = 561
      Top = 0
      Width = 231
      Height = 280
      Align = alClient
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 561
      Height = 280
      Align = alLeft
      Shape = bsFrame
      Style = bsRaised
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 545
      Height = 269
      BorderStyle = bsNone
      Color = clNone
      DataSource = DataSource1
      FixedColor = clNone
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'AGENA13ID'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENDCADASTRO'
          Title.Caption = 'Data Cadastro'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENDCOMPROMISSO'
          Title.Caption = 'Data Compromisso'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENHCOMPROMISSO'
          Title.Caption = 'Hora'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENDALERTA'
          Title.Caption = 'Data Alerta'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENHALERTA'
          Title.Caption = 'Hora'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENDCONCLUSAO'
          Title.Caption = 'Data Conclus'#227'o'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HELPA13ID'
          Title.Caption = 'Atendimento'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENA15STATUS'
          Title.Caption = 'Status'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CATEICOD'
          Title.Caption = 'Categoria'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAREICOD'
          Title.Caption = 'Tarefa'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 561
      Top = 0
      Width = 231
      Height = 280
      Align = alClient
      DataSource = DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object SQLGeral: TQuery
    Active = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM AGENDA')
    Left = 120
    Top = 8
    object SQLGeralAGENA13ID: TStringField
      FieldName = 'AGENA13ID'
      Origin = 'DB.AGENDA.AGENA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLGeralEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDA.EMPRICOD'
    end
    object SQLGeralTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.AGENDA.TERMICOD'
    end
    object SQLGeralAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDA.AGENICOD'
    end
    object SQLGeralAGENDCADASTRO: TDateTimeField
      FieldName = 'AGENDCADASTRO'
      Origin = 'DB.AGENDA.AGENDCADASTRO'
    end
    object SQLGeralAGENDCOMPROMISSO: TDateTimeField
      FieldName = 'AGENDCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENDCOMPROMISSO'
    end
    object SQLGeralAGENHCOMPROMISSO: TStringField
      FieldName = 'AGENHCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENHCOMPROMISSO'
      FixedChar = True
      Size = 8
    end
    object SQLGeralAGENDALERTA: TDateTimeField
      FieldName = 'AGENDALERTA'
      Origin = 'DB.AGENDA.AGENDALERTA'
    end
    object SQLGeralAGENHALERTA: TStringField
      FieldName = 'AGENHALERTA'
      Origin = 'DB.AGENDA.AGENHALERTA'
      FixedChar = True
      Size = 8
    end
    object SQLGeralAGENTCOMPROMISSO: TMemoField
      FieldName = 'AGENTCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENTCOMPROMISSO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLGeralAGENDCONCLUSAO: TDateTimeField
      FieldName = 'AGENDCONCLUSAO'
      Origin = 'DB.AGENDA.AGENDCONCLUSAO'
    end
    object SQLGeralHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.AGENDA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLGeralAGENA15STATUS: TStringField
      FieldName = 'AGENA15STATUS'
      Origin = 'DB.AGENDA.AGENA15STATUS'
      FixedChar = True
      Size = 15
    end
    object SQLGeralUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.AGENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLGeralCATEICOD: TIntegerField
      FieldName = 'CATEICOD'
      Origin = 'DB.AGENDA.CATEICOD'
    end
    object SQLGeralTAREICOD: TIntegerField
      FieldName = 'TAREICOD'
      Origin = 'DB.AGENDA.TAREICOD'
    end
  end
  object DataSource1: TDataSource
    DataSet = SQLGeral
    Left = 152
    Top = 8
  end
  object SQLTarefa: TQuery
    Active = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select * from tarefa, agenda where agenda.TAREICOD = tarefa.tare' +
        'icod')
    Left = 240
    Top = 8
    object SQLTarefaTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object SQLTarefaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TAREFA.TERMICOD'
    end
    object SQLTarefaTAREICOD: TIntegerField
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object SQLTarefaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFA.USUAICOD'
    end
    object SQLTarefaUSUAICODDEST: TIntegerField
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object SQLTarefaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTAREDDIGITACAO: TDateTimeField
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object SQLTarefaTAREDLEMBRETE: TDateTimeField
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
    object SQLTarefaTARETSOLICITACAO: TMemoField
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTarefaTAREDINICIO: TDateTimeField
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object SQLTarefaTARETEXECUCAO: TMemoField
      FieldName = 'TARETEXECUCAO'
      Origin = 'DB.TAREFA.TARETEXECUCAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTarefaTAREDTERMINO: TDateTimeField
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
    end
    object SQLTarefaPENDETE: TStringField
      FieldName = 'PENDETE'
      Origin = 'DB.TAREFA.PENDETE'
      FixedChar = True
      Size = 1
    end
    object SQLTarefaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
    object SQLTarefaTARECODATEND: TStringField
      FieldName = 'TARECODATEND'
      Origin = 'DB.TAREFA.TARECODATEND'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TAREFA.TPTAICOD'
    end
    object SQLTarefaTAREA30TITULO: TStringField
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = SQLTarefa
    Left = 280
    Top = 8
  end
end
