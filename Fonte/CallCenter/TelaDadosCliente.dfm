object FormTelaDadosCliente: TFormTelaDadosCliente
  Left = 256
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Dados do Cliente'
  ClientHeight = 310
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 565
    Height = 49
    Align = alTop
    Color = 14536396
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 105
      Height = 13
      Caption = 'Selecione o cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboCliente: TRxDBLookupCombo
      Left = 6
      Top = 18
      Width = 531
      Height = 21
      DropDownCount = 8
      DisplayEmpty = '...'
      EmptyValue = 'null'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LookupField = 'CLIEA13ID'
      LookupDisplay = 'CLIEA60RAZAOSOC'
      LookupSource = DSSQLCliente
      ParentFont = False
      TabOrder = 0
      OnChange = ComboClienteChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 565
    Height = 261
    Align = alClient
    Color = 15461355
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 563
      Height = 95
      Align = alTop
      Caption = 'Dados Estat'#237'sticos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 7
        Top = 15
        Width = 100
        Height = 13
        Caption = 'Data de Cadastro'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 140
        Top = 15
        Width = 107
        Height = 13
        Caption = 'Data Primeiro Help'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 273
        Top = 15
        Width = 97
        Height = 13
        Caption = 'Data '#218'ltimo Help'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 407
        Top = 15
        Width = 98
        Height = 13
        Caption = 'N'#250'mero de Helps'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 7
        Top = 53
        Width = 114
        Height = 13
        Caption = 'Data Primeiro Reset'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 139
        Top = 53
        Width = 104
        Height = 13
        Caption = 'Data '#218'ltimo Reset'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 272
        Top = 53
        Width = 105
        Height = 13
        Caption = 'N'#250'mero de Resets'
        FocusControl = DBEdit7
      end
      object lblBloqueio: TLabel
        Left = 408
        Top = 52
        Width = 110
        Height = 13
        Caption = 'Motivo de Bloqueio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 7
        Top = 31
        Width = 122
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'CLHPDCADASTRO'
        DataSource = DSSQLCliente
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 140
        Top = 31
        Width = 125
        Height = 21
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'CLHPDFIRSTHELP'
        DataSource = DSSQLCliente
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 273
        Top = 31
        Width = 120
        Height = 21
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'CLHPDLASTHELP'
        DataSource = DSSQLCliente
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 407
        Top = 31
        Width = 146
        Height = 21
        AutoSelect = False
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'CLHPINROHELP'
        DataSource = DSSQLCliente
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 7
        Top = 69
        Width = 122
        Height = 21
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'CLHPDFIRSTRESET'
        DataSource = DSSQLCliente
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 139
        Top = 69
        Width = 126
        Height = 21
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'CLHPDLASTRESET'
        DataSource = DSSQLCliente
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 272
        Top = 69
        Width = 121
        Height = 21
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'CLHPINRORESETS'
        DataSource = DSSQLCliente
        ReadOnly = True
        TabOrder = 6
      end
      object DBEditBloqueio: TDBEdit
        Left = 407
        Top = 69
        Width = 146
        Height = 21
        BorderStyle = bsNone
        Color = 15461355
        DataField = 'MTBLA60DESCR'
        DataSource = DSSQLMotivoBloqueio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 96
      Width = 563
      Height = 112
      Align = alTop
      Caption = 'Dados T'#233'cnicos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 559
        Height = 95
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 15461355
        Ctl3D = False
        DataField = 'CLHPTDADOSTEC'
        DataSource = DSSQLCliente
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object SpeedButton1: TConerBtn
      Left = 152
      Top = 216
      Width = 121
      Height = 33
      TabOrder = 2
      OnClick = BitBtn1Click
      Kind = bkOK
      Flat = True
      PlaceConer = pcNone
      SymbolState = ssNone
      SymbolColorOpen = clNone
      SymbolColorClose = clNone
      Transparent = True
    end
    object ConerBtn1: TConerBtn
      Left = 296
      Top = 216
      Width = 113
      Height = 33
      Caption = 'Cancela'
      TabOrder = 3
      OnClick = BitBtn2Click
      Kind = bkCancel
      Flat = False
      PlaceConer = pcNone
      SymbolState = ssClose
      SymbolColorOpen = clNone
      SymbolColorClose = clNone
      Transparent = True
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    OnDataChange = DSSQLClienteDataChange
    Left = 268
    Top = 8
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CLIENTEHELPDESK.CLIEA13ID,'
      'CLIENTEHELPDESK.CLHPDCADASTRO,'
      'CLIENTEHELPDESK.CLHPDFIRSTHELP,'
      'CLIENTEHELPDESK.CLHPDLASTHELP,'
      'CLIENTEHELPDESK.CLHPINROHELP,'
      'CLIENTEHELPDESK.CLHPDFIRSTRESET,'
      'CLIENTEHELPDESK.CLHPDLASTRESET,'
      'CLIENTEHELPDESK.CLHPINRORESETS,'
      'CLIENTEHELPDESK.CLHPTDADOSTEC,'
      'CLIENTE.CLIEA60RAZAOSOC'
      'FROM'
      'CLIENTEHELPDESK'
      
        'LEFT OUTER JOIN CLIENTE ON CLIENTEHELPDESK.CLIEA13ID = CLIENTE.C' +
        'LIEA13ID'
      'ORDER BY CLIENTE.CLIEA60RAZAOSOC')
    Macros = <>
    Left = 296
    Top = 8
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLHPDCADASTRO: TDateTimeField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'CLHPDCADASTRO'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDCADASTRO'
    end
    object SQLClienteCLHPDFIRSTHELP: TDateTimeField
      DisplayLabel = 'Data Primeiro Help'
      FieldName = 'CLHPDFIRSTHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDFIRSTHELP'
    end
    object SQLClienteCLHPDLASTHELP: TDateTimeField
      DisplayLabel = 'Data '#218'ltimo Help'
      FieldName = 'CLHPDLASTHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDLASTHELP'
    end
    object SQLClienteCLHPINROHELP: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#250'mero de Helps'
      FieldName = 'CLHPINROHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPINROHELP'
    end
    object SQLClienteCLHPDFIRSTRESET: TDateTimeField
      DisplayLabel = 'Data Primeiro Reset'
      FieldName = 'CLHPDFIRSTRESET'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDFIRSTRESET'
    end
    object SQLClienteCLHPDLASTRESET: TDateTimeField
      DisplayLabel = 'Data '#218'ltimo Reset'
      FieldName = 'CLHPDLASTRESET'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDLASTRESET'
    end
    object SQLClienteCLHPINRORESETS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#250'mero de Resets'
      FieldName = 'CLHPINRORESETS'
      Origin = 'DB.CLIENTEHELPDESK.CLHPINRORESETS'
    end
    object SQLClienteCLHPTDADOSTEC: TMemoField
      DisplayLabel = 'Dados T'#233'cnicos'
      FieldName = 'CLHPTDADOSTEC'
      Origin = 'DB.CLIENTEHELPDESK.CLHPTDADOSTEC'
      BlobType = ftMemo
      Size = 1000
    end
  end
  object SQLBloqueio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from motivobloqueio')
    Macros = <>
    Left = 388
    Top = 8
  end
  object DSSQLMotivoBloqueio: TDataSource
    DataSet = SQLBloqueio
    Left = 360
    Top = 8
  end
end
