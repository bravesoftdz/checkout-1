object FormTelaConsultaTarefa: TFormTelaConsultaTarefa
  Left = 286
  Top = 277
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Tela Vizualiza'#231#227'o Tarefa'
  ClientHeight = 305
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCentral: TPanel
    Left = 0
    Top = 36
    Width = 480
    Height = 243
    Align = alClient
    BevelOuter = bvNone
    Color = 15461355
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 480
      Height = 145
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15461355
      TabOrder = 0
      object Label13: TLabel
        Left = 8
        Top = 49
        Width = 64
        Height = 13
        Caption = 'Solicita'#231#227'o'
        FocusControl = DBMemo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 249
        Top = 48
        Width = 47
        Height = 13
        Caption = 'Solu'#231#227'o'
        FocusControl = MemoSolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 132
        Top = 8
        Width = 71
        Height = 13
        Caption = 'Atendimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 9
        Top = 9
        Width = 53
        Height = 13
        Caption = 'Lembrete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 222
        Top = 8
        Width = 46
        Height = 13
        Caption = 'T'#233'rmino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 364
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 78
        Top = 8
        Width = 28
        Height = 13
        Caption = 'Hora'
        FocusControl = EditHora
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AdicionarDataHora: TSpeedButton
        Left = 345
        Top = 25
        Width = 16
        Height = 18
        Cursor = crHandPoint
        Caption = '...'
        Flat = True
        OnClick = AdicionarDataHoraClick
      end
      object DBCheckPendente: TDBCheckBox
        Left = 9
        Top = 125
        Width = 81
        Height = 17
        Cursor = crHandPoint
        TabStop = False
        Caption = 'Pendente'
        DataField = 'TARECPENDENTE'
        DataSource = DSTemplate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBMemo2: TDBMemo
        Left = 8
        Top = 65
        Width = 233
        Height = 57
        TabStop = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'TARETSOLICITACAO'
        DataSource = DSTemplate
        Enabled = False
        ParentColor = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object MemoSolucao: TDBMemo
        Left = 248
        Top = 65
        Width = 217
        Height = 57
        TabStop = False
        DataField = 'TARETEXECUCAO'
        DataSource = DSTemplate
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 25
        Width = 65
        Height = 21
        TabStop = False
        Color = clWhite
        DataField = 'TAREDLEMBRETE'
        DataSource = DSTemplate
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit2: TDBEdit
        Left = 130
        Top = 25
        Width = 86
        Height = 21
        TabStop = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'HELPA13ID'
        DataSource = DSTemplate
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 363
        Top = 23
        Width = 105
        Height = 21
        TabStop = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'TPTAA30DESCRICAO'
        DataSource = DSTemplate
        Enabled = False
        ParentColor = True
        TabOrder = 5
      end
      object EditHora: TDBEdit
        Left = 77
        Top = 25
        Width = 48
        Height = 21
        DataField = 'TAREHLEMBRETE'
        DataSource = DSTemplate
        TabOrder = 6
      end
      object DBTermino: TDBEdit
        Left = 224
        Top = 24
        Width = 121
        Height = 21
        DataField = 'TAREDTERMINO'
        DataSource = DSTemplate
        TabOrder = 7
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 145
      Width = 480
      Height = 98
      Align = alClient
      BevelOuter = bvNone
      Color = 15461355
      TabOrder = 1
      object Label6: TLabel
        Left = 144
        Top = 8
        Width = 35
        Height = 13
        Caption = 'T'#237'tulo'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 88
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 48
        Width = 126
        Height = 13
        Caption = 'Prazo Para Conclus'#227'o'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 8
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 146
        Top = 48
        Width = 32
        Height = 13
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 144
        Top = 64
        Width = 113
        Height = 21
        Color = 14737632
        DataField = 'TAREDINICIO'
        DataSource = DSTemplate
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 144
        Top = 24
        Width = 282
        Height = 21
        Color = 14737632
        DataField = 'TAREA30TITULO'
        DataSource = DSTemplate
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 8
        Top = 64
        Width = 113
        Height = 21
        Color = 14737632
        DataField = 'TAREDPRAZOMAX'
        DataSource = DSTemplate
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 8
        Top = 24
        Width = 113
        Height = 21
        Color = 14737632
        DataField = 'TAREA13ID'
        DataSource = DSTemplate
        Enabled = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 8
        Top = 104
        Width = 417
        Height = 21
        Color = 14737632
        DataField = 'CLIEA60RAZAOSOC'
        DataSource = DSTemplate
        Enabled = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBGridTarefa: TDBGrid
        Left = 0
        Top = 0
        Width = 480
        Height = 98
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Color = 15461355
        Ctl3D = False
        DataSource = DSTemplate
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridTarefaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TAREA30TITULO'
            Title.Caption = 'Titulo'
            Title.Color = 16767449
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 251
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAREDLEMBRETE'
            Title.Caption = 'Lembrete'
            Title.Color = 16767449
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REGISTRO'
            Title.Caption = 'Data Registro'
            Title.Color = 16767449
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Title.Caption = 'Cliente'
            Title.Color = 16767449
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60CIDRES'
            Title.Caption = 'Cidade'
            Title.Color = 16767449
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA2UFRES'
            Title.Caption = 'UF'
            Title.Color = 16767449
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60EMAIL'
            Title.Caption = 'E-mail'
            Title.Color = 16767449
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object PanelBarra: TPanel
    Left = 0
    Top = 36
    Width = 0
    Height = 243
    Align = alLeft
    BevelOuter = bvNone
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    Color = 14731440
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object LabelTitulo: TLabel
      Left = 2
      Top = 4
      Width = 179
      Height = 25
      Caption = 'Vizualiza'#231#227'o Tarefa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelNavigator: TPanel
    Left = 0
    Top = 279
    Width = 480
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Color = 15461355
    TabOrder = 3
    object BtOK: TConerBtn
      Left = 327
      Top = 0
      Width = 75
      Height = 25
      Cursor = crHandPoint
      TabOrder = 0
      OnClick = BtOKClick
      Kind = bkOK
      Flat = True
      PlaceConer = pcNone
      SymbolState = ssClose
      SymbolColorOpen = clRed
      SymbolColorClose = clMaroon
      Transparent = True
    end
    object BtCancel: TConerBtn
      Left = 403
      Top = 0
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = BtCancelClick
      Kind = bkCancel
      Flat = True
      PlaceConer = pcNone
      SymbolState = ssClose
      SymbolColorOpen = clRed
      SymbolColorClose = clMaroon
      Transparent = True
    end
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 376
    Top = 8
  end
  object SQLTptarefa: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM TIPOTAREFA ')
    Left = 344
    Top = 8
  end
  object DSTemplate: TDataSource
    OnDataChange = DSTemplateDataChange
    Left = 280
    Top = 8
  end
  object SQLTemplate: TRxQuery
    BeforeOpen = SQLTemplateBeforeOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TAREFA '
      'where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 312
    Top = 8
    object SQLTemplateTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TAREFA.TERMICOD'
    end
    object SQLTemplateTAREICOD: TIntegerField
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object SQLTemplateTAREA30TITULO: TStringField
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateTAREDDIGITACAO: TDateTimeField
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object SQLTemplateTAREDLEMBRETE: TDateTimeField
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
    object SQLTemplateTAREHLEMBRETE: TStringField
      FieldName = 'TAREHLEMBRETE'
      Origin = 'DB.TAREFA.TAREHLEMBRETE'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateTARETSOLICITACAO: TMemoField
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplateTARECPENDENTE: TStringField
      FieldName = 'TARECPENDENTE'
      Origin = 'DB.TAREFA.TARECPENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTAREDINICIO: TDateTimeField
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object SQLTemplateTAREDTERMINO: TDateTimeField
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
    end
    object SQLTemplateTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TAREFA.TPTAICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePRCLA13ID: TStringField
      FieldName = 'PRCLA13ID'
      Origin = 'DB.TAREFA.PRCLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.TAREFA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePRNEA13ID: TStringField
      FieldName = 'PRNEA13ID'
      Origin = 'DB.TAREFA.PRNEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTAREDPRAZOMAX: TDateTimeField
      FieldName = 'TAREDPRAZOMAX'
      Origin = 'DB.TAREFA.TAREDPRAZOMAX'
    end
    object SQLTemplateTAREDULTAGEND: TDateTimeField
      FieldName = 'TAREDULTAGEND'
      Origin = 'DB.TAREFA.TAREDULTAGEND'
    end
    object SQLTemplateTAREA60MOTIVOADIO: TStringField
      FieldName = 'TAREA60MOTIVOADIO'
      Origin = 'DB.TAREFA.TAREA60MOTIVOADIO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFA.USUAICOD'
    end
    object SQLTemplateUSUAICODDEST: TIntegerField
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object SQLTemplateCLASSICOD: TIntegerField
      FieldName = 'CLASSICOD'
      Origin = 'DB.TAREFA.CLASSICOD'
    end
    object SQLTemplateTAREA1000CHECKLIST: TMemoField
      FieldName = 'TAREA1000CHECKLIST'
      Origin = 'DB.TAREFA.TAREA1000CHECKLIST'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateTARECATULIZEMAIL: TStringField
      FieldName = 'TARECATULIZEMAIL'
      Origin = 'DB.TAREFA.TARECATULIZEMAIL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTAREA13MODOTAREFA: TStringField
      FieldName = 'TAREA13MODOTAREFA'
      Origin = 'DB.TAREFA.TAREA13MODOTAREFA'
      FixedChar = True
      Size = 13
    end
  end
end
