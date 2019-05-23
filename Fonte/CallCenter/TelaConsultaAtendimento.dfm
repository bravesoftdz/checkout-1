object FormTelaConsultaAtendimento: TFormTelaConsultaAtendimento
  Left = 188
  Top = 268
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Tela Vizualiza'#231#227'o Atendimento'
  ClientHeight = 315
  ClientWidth = 480
  Color = 15461355
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
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    Color = 14731440
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LabelTitulo: TLabel
      Left = 2
      Top = 4
      Width = 284
      Height = 25
      Caption = 'Tela Vizualiza'#231#227'o Atendimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelCentral: TPanel
    Left = 0
    Top = 38
    Width = 480
    Height = 245
    Align = alClient
    BevelOuter = bvNone
    Color = 15461355
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 480
      Height = 145
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 3
        Top = 4
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
      object Label4: TLabel
        Left = 3
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
      object Label3: TLabel
        Left = 244
        Top = 48
        Width = 47
        Height = 13
        Caption = 'Solu'#231#227'o'
        FocusControl = DBMemoSolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 243
        Top = 4
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 20
        Width = 233
        Height = 21
        TabStop = False
        DataField = 'TPTAA30DESCRICAO'
        DataSource = DSHelp
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
      object DBCheckPendente: TDBCheckBox
        Left = 8
        Top = 124
        Width = 81
        Height = 17
        Caption = 'Pendente'
        DataField = 'PENDENTE'
        DataSource = DSHelp
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
        Left = 3
        Top = 65
        Width = 233
        Height = 57
        TabStop = False
        DataField = 'HELPTSOLICITACAO'
        DataSource = DSHelp
        Enabled = False
        ParentColor = True
        TabOrder = 3
      end
      object DBMemoSolucao: TDBMemo
        Left = 243
        Top = 65
        Width = 225
        Height = 57
        DataField = 'HELPTSOLUCAO'
        DataSource = DSHelp
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = DBMemoSolucaoKeyPress
      end
      object DBEdit2: TDBEdit
        Left = 243
        Top = 20
        Width = 117
        Height = 21
        TabStop = False
        DataField = 'HELPA13ID'
        DataSource = DSHelp
        Enabled = False
        ParentColor = True
        TabOrder = 4
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 145
      Width = 480
      Height = 100
      Align = alClient
      BevelOuter = bvNone
      Color = 15461355
      TabOrder = 1
      object Label6: TLabel
        Left = 8
        Top = 48
        Width = 32
        Height = 13
        Caption = 'Inicio'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 336
        Top = 48
        Width = 30
        Height = 13
        Caption = 'Nivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 136
        Top = 48
        Width = 46
        Height = 13
        Caption = 'T'#233'rmino'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 8
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
      object Label5: TLabel
        Left = 336
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 256
        Top = 48
        Width = 26
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 336
        Top = 24
        Width = 73
        Height = 21
        DataField = 'HELPCCONTATO'
        DataSource = DSHelp
        Enabled = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 64
        Width = 113
        Height = 21
        DataField = 'HELPDINICIO'
        DataSource = DSHelp
        Enabled = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 64
        Width = 113
        Height = 21
        DataField = 'HELPDTERMINO'
        DataSource = DSHelp
        Enabled = False
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 8
        Top = 24
        Width = 321
        Height = 21
        DataField = 'CLIEA60RAZAOSOC'
        DataSource = DSHelp
        Enabled = False
        TabOrder = 4
      end
      object txtNivel: TEdit
        Left = 336
        Top = 64
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 5
        Text = 'txtNivel'
      end
      object DBEdit5: TDBEdit
        Left = 256
        Top = 64
        Width = 73
        Height = 21
        DataField = 'HELPCTIPO'
        DataSource = DSHelp
        Enabled = False
        TabOrder = 6
      end
      object DBGridAtendimento: TDBGrid
        Left = 0
        Top = 0
        Width = 480
        Height = 100
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Color = 15461355
        Ctl3D = False
        DataSource = DSHelp
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridAtendimentoDblClick
        Columns = <
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
            Width = 220
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
            Width = 112
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
            FieldName = 'HELPDINICIO'
            Title.Caption = 'Inicio'
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
            FieldName = 'HELPDTERMINO'
            Title.Caption = 'T'#233'rmino'
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
            Title.Caption = 'Data'
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
            FieldName = 'HELPCCONTATO'
            Title.Caption = 'Contato'
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
            FieldName = 'PENDENTE'
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
  object PanelNavigator: TPanel
    Left = 0
    Top = 283
    Width = 480
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object BtOK: TSpeedButton
      Left = 312
      Top = 4
      Width = 81
      Height = 25
      Caption = 'OK'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      OnClick = BitBtn1Click
    end
    object BtCancel: TSpeedButton
      Left = 392
      Top = 4
      Width = 81
      Height = 25
      Caption = 'Cancel'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFF00000042399C4A42B5000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004A
        42B539318C000000FFFFFFFFFFFFFFFFFF0000004A42B542399C000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000736BC64A42B539318C000000FFFFFF00000042399C4A42B500
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005A5ABD4A42B539318C0000000000
        004A42B539318C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005A5ABD
        4A42B54A42B54A42B54A42B5000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0000005A5ABD4A42B54A42B54A42B5000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004A42B54A42B54A42B54A42B500
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004A42B54A42
        B54A42B54A42B542399C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        4A42B54A42B50000000000005A5ABD4A42B539318C000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0000004A42B542399C000000FFFFFF0000005A5ABD4A42B5312973
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000004A42B54A42B5000000FFFFFFFFFFFFFFFFFF00
        00005A5ABD4A42B5000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000736BC642399C000000FFFF
        FFFFFFFFFFFFFFFFFFFF0000004A42B5000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = BtCancelClick
    end
  end
  object DSHelp: TDataSource
    DataSet = SQLTemplate
    OnStateChange = DSHelpStateChange
    OnDataChange = DSHelpDataChange
    Left = 208
  end
  object SQLTemplate: TQuery
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM HELPDESK')
    UpdateMode = upWhereChanged
    Left = 248
    object SQLTemplateHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.HELPDESK.HELPA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.HELPDESK.EMPRICOD'
      Visible = False
    end
    object SQLTemplateTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.HELPDESK.TERMICOD'
      Visible = False
    end
    object SQLTemplateHELPICOD: TIntegerField
      FieldName = 'HELPICOD'
      Origin = 'DB.HELPDESK.HELPICOD'
      Visible = False
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.HELPDESK.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateHELPCCONTATO: TStringField
      FieldName = 'HELPCCONTATO'
      Origin = 'DB.HELPDESK.HELPCCONTATO'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object SQLTemplateHELPDINICIO: TDateTimeField
      FieldName = 'HELPDINICIO'
      Origin = 'DB.HELPDESK.HELPDINICIO'
      Visible = False
    end
    object SQLTemplateHELPTSOLICITACAO: TMemoField
      FieldName = 'HELPTSOLICITACAO'
      Origin = 'DB.HELPDESK.HELPTSOLICITACAO'
      Visible = False
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateHELPTSOLUCAO: TMemoField
      FieldName = 'HELPTSOLUCAO'
      Origin = 'DB.HELPDESK.HELPTSOLUCAO'
      Visible = False
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateHELPCTIPO: TStringField
      FieldName = 'HELPCTIPO'
      Origin = 'DB.HELPDESK.HELPCTIPO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTPHPICOD: TIntegerField
      FieldName = 'TPHPICOD'
      Origin = 'DB.HELPDESK.TPHPICOD'
      Visible = False
    end
    object SQLTemplateHELPCNIVEL: TStringField
      FieldName = 'HELPCNIVEL'
      Origin = 'DB.HELPDESK.HELPCNIVEL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateHELPDTERMINO: TDateTimeField
      FieldName = 'HELPDTERMINO'
      Origin = 'DB.HELPDESK.HELPDTERMINO'
      Visible = False
    end
    object SQLTemplateHELPCPERGUNTACHAVE: TStringField
      FieldName = 'HELPCPERGUNTACHAVE'
      Origin = 'DB.HELPDESK.HELPCPERGUNTACHAVE'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object SQLTemplatePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.HELPDESK.PRODICOD'
      Visible = False
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.HELPDESK.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.HELPDESK.REGISTRO'
      Visible = False
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60RAZAOSOC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60CIDRES: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60CIDRES'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA2UFRES: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA2UFRES'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 2
      Lookup = True
    end
    object SQLTemplateCLIEA60EMAIL: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60EMAIL'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60EMAIL'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateTPTAA30DESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'TPTAA30DESCRICAO'
      LookupDataSet = SQLTptarefa
      LookupKeyFields = 'TPTAICOD'
      LookupResultField = 'TPTAA30DESCRICAO'
      KeyFields = 'TPHPICOD'
      Visible = False
      Size = 30
      Lookup = True
    end
  end
  object SQLTptarefa: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM TIPOTAREFA ')
    Left = 416
    object SQLTptarefaTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TIPOTAREFA.TPTAICOD'
    end
    object SQLTptarefaTPTAA30DESCRICAO: TStringField
      FieldName = 'TPTAA30DESCRICAO'
      Origin = 'DB.TIPOTAREFA.TPTAA30DESCRICAO'
      Visible = False
      FixedChar = True
      Size = 30
    end
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 448
  end
end
