inherited FormAgenda1: TFormAgenda1
  Left = 182
  Top = 118
  Caption = 'Agenda'
  ClientHeight = 556
  ClientWidth = 828
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 828
    Height = 556
    inherited PanelCabecalho: TPanel
      Width = 824
      inherited Panel2: TPanel
        Width = 824
        inherited Panel3: TPanel
          Left = 495
        end
        inherited Panel1: TPanel
          Width = 824
        end
      end
      inherited PanelNavigator: TPanel
        Width = 824
        inherited Image1: TImage
          Width = 824
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 824
      Height = 472
      inherited PanelBarra: TPanel
        Height = 472
      end
      inherited PanelFundoDados: TPanel
        Width = 694
        Height = 472
        inherited Panel5: TPanel
          Width = 694
          Height = 472
          inherited PagePrincipal: TPageControl
            Top = 187
            Width = 694
            Height = 285
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 686
                Height = 212
              end
              inherited PanelProcura: TPanel
                Width = 686
                inherited PanelBetween: TPanel
                  Width = 292
                end
                inherited PanelEditProcura: TPanel
                  Width = 292
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label5: TLabel
                Left = 0
                Top = 8
                Width = 39
                Height = 13
                Caption = 'Assunto'
                FocusControl = DBMemo1
              end
              object DBMemo1: TDBMemo
                Left = 0
                Top = 24
                Width = 577
                Height = 201
                DataField = 'AGENTCOMPROMISSO'
                DataSource = DSTemplate
                TabOrder = 0
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 169
            Width = 694
            Height = 18
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 694
            Height = 169
            object Label2: TLabel
              Left = 8
              Top = 8
              Width = 123
              Height = 13
              Caption = 'Data do compromisso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 8
              Top = 55
              Width = 37
              Height = 13
              Caption = 'Status'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 279
              Top = 8
              Width = 82
              Height = 13
              Caption = 'Data do Alerta'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 144
              Top = 56
              Width = 104
              Height = 13
              Caption = 'Data de Conclus'#227'o'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 8
              Top = 104
              Width = 74
              Height = 13
              Caption = 'Atendimento'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 144
              Top = 8
              Width = 123
              Height = 13
              Caption = 'Hora do compromisso'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 378
              Top = 8
              Width = 86
              Height = 15
              Caption = 'Hora do alerta'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 144
              Top = 104
              Width = 37
              Height = 13
              Caption = 'Tarefa'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 279
              Top = 23
              Width = 80
              Height = 21
              DataField = 'AGENDALERTA'
              DataSource = DSTemplate
              TabOrder = 2
              OnExit = DBEdit5Exit
            end
            object DBComboBox1: TDBComboBox
              Left = 8
              Top = 71
              Width = 113
              Height = 21
              DataField = 'AGENA15STATUS'
              DataSource = DSTemplate
              ItemHeight = 13
              Items.Strings = (
                'EM ABERTO'
                'FECHADO'
                'EM ATENDIMENTO')
              TabOrder = 4
            end
            object MonthCalendar1: TMonthCalendar
              Left = 510
              Top = 8
              Width = 200
              Height = 153
              Date = 0.514463657404121
              TabOrder = 7
              OnClick = MonthCalendar1Click
            end
            object DBEdit1: TDBEdit
              Left = 144
              Top = 71
              Width = 105
              Height = 21
              DataField = 'AGENDCONCLUSAO'
              DataSource = DSTemplate
              TabOrder = 5
              OnDblClick = DBEdit1DblClick
            end
            object DBEdit3: TDBEdit
              Left = 8
              Top = 120
              Width = 88
              Height = 21
              DataField = 'HELPA13ID'
              DataSource = DSTemplate
              TabOrder = 6
            end
            object DBEdit4: TDBEdit
              Left = 144
              Top = 24
              Width = 73
              Height = 22
              TabStop = False
              DataField = 'AGENHCOMPROMISSO'
              DataSource = DSTemplate
              TabOrder = 8
              Visible = False
            end
            object DBEdit6: TDBEdit
              Left = 378
              Top = 24
              Width = 65
              Height = 20
              TabStop = False
              DataField = 'AGENHALERTA'
              DataSource = DSTemplate
              TabOrder = 9
              Visible = False
            end
            object HoraAlerta: TDateTimePicker
              Left = 377
              Top = 23
              Width = 68
              Height = 22
              CalAlignment = dtaLeft
              Date = 37853
              Time = 37853
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkTime
              ParseInput = False
              TabOrder = 3
              OnChange = HoraAlertaChange
              OnEnter = HoraAlertaEnter
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 24
              Width = 80
              Height = 21
              DataField = 'AGENDCOMPROMISSO'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object HoraCompromisso: TDateTimePicker
              Left = 144
              Top = 24
              Width = 73
              Height = 21
              CalAlignment = dtaLeft
              Date = 37853
              Time = 37853
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkTime
              ParseInput = False
              TabOrder = 1
              OnChange = HoraCompromissoChange
              OnEnter = HoraCompromissoEnter
            end
            object DBEdit7: TDBEdit
              Left = 144
              Top = 119
              Width = 177
              Height = 21
              DataField = 'TAREA30TITULO'
              DataSource = DSTemplate
              TabOrder = 10
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    AutoRefresh = True
    SQL.Strings = (
      'SELECT * FROM AGENDA WHERE (%MFiltro)')
    Left = 240
    object SQLTemplateAGENA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Agenda'
      FieldName = 'AGENA13ID'
      Origin = 'DB.AGENDA.AGENA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDA.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.AGENDA.TERMICOD'
    end
    object SQLTemplateAGENICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Cod Agenda'
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDA.AGENICOD'
    end
    object SQLTemplateAGENDCADASTRO: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'AGENDCADASTRO'
      Origin = 'DB.AGENDA.AGENDCADASTRO'
    end
    object SQLTemplateAGENDCOMPROMISSO: TDateTimeField
      DisplayLabel = 'Data Compromisso'
      FieldName = 'AGENDCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENDCOMPROMISSO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateAGENHCOMPROMISSO: TStringField
      DisplayLabel = 'Hora Compromisso'
      FieldName = 'AGENHCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENHCOMPROMISSO'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateAGENDALERTA: TDateTimeField
      DisplayLabel = 'Data Alerta'
      FieldName = 'AGENDALERTA'
      Origin = 'DB.AGENDA.AGENDALERTA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateAGENHALERTA: TStringField
      DisplayLabel = 'Hora Alerta'
      FieldName = 'AGENHALERTA'
      Origin = 'DB.AGENDA.AGENHALERTA'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateAGENTCOMPROMISSO: TMemoField
      DisplayLabel = 'Compromisso'
      FieldName = 'AGENTCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENTCOMPROMISSO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateAGENDCONCLUSAO: TDateTimeField
      DisplayLabel = 'Data Conclus'#227'o'
      FieldName = 'AGENDCONCLUSAO'
      Origin = 'DB.AGENDA.AGENDCONCLUSAO'
    end
    object SQLTemplateHELPA13ID: TStringField
      DisplayLabel = 'ID Atendimento'
      FieldName = 'HELPA13ID'
      Origin = 'DB.AGENDA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateAGENA15STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'AGENA15STATUS'
      Origin = 'DB.AGENDA.AGENA15STATUS'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.AGENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCATEICOD: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEICOD'
      Origin = 'DB.AGENDA.CATEICOD'
    end
    object SQLTemplateTAREICOD: TIntegerField
      DisplayLabel = 'Cod Tarefa'
      FieldName = 'TAREICOD'
      Origin = 'DB.AGENDA.TAREICOD'
    end
    object SQLTemplateTAREA30TITULO: TStringField
      DisplayLabel = 'Titulo Tarefa'
      FieldKind = fkLookup
      FieldName = 'TAREA30TITULO'
      LookupDataSet = SQLTarefa
      LookupKeyFields = 'TAREICOD'
      LookupResultField = 'TAREA30TITULO'
      KeyFields = 'TAREICOD'
      Size = 30
      Lookup = True
    end
  end
  object MSNPopUp1: TMSNPopUp
    Text = 'text'
    URL = 'http://www.url.com/'
    IconLeft = 8
    IconTop = 8
    Width = 148
    Height = 121
    GradientColor1 = 16764057
    GradientColor2 = clWhite
    ScrollSpeed = 9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HoverFont.Charset = DEFAULT_CHARSET
    HoverFont.Color = clBlue
    HoverFont.Height = -11
    HoverFont.Name = 'MS Sans Serif'
    HoverFont.Style = [fsUnderline]
    Title = 'Tarefas'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Options = [msnCascadePopups, msnAllowScroll]
    TextCursor = crDefault
    PopupMarge = 2
    PopupStartX = 100
    PopupStartY = 2
    DefaultMonitor = dmDesktop
    Left = 32
    Top = 176
  end
  object SQLAgendaHoje: TQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      '')
    Left = 32
    Top = 208
  end
  object TestePraVizualizar: TDataSource
    DataSet = SQLAgendaVer
    Left = 32
    Top = 240
  end
  object SQLAgendaVer: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from agenda')
    Left = 32
    Top = 272
    object SQLAgendaVerCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
  end
  object Timer1: TTimer
    Left = 32
    Top = 304
  end
  object SQLCategoria: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TipoTarefa')
    Left = 32
    Top = 336
  end
  object SQLTarefa: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from tarefa')
    Left = 32
    Top = 368
  end
end
