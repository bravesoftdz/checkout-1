object FrmControleCilindros: TFrmControleCilindros
  Left = 128
  Top = 106
  Width = 883
  Height = 547
  Caption = 'Controle de Cilindros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 4
      Width = 265
      Height = 20
      Caption = 'Controle de Emprestimos de Cilindros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 875
    Height = 135
    Align = alTop
    BevelOuter = bvNone
    Color = 12572888
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 772
      Top = 91
      Width = 94
      Height = 33
      Caption = 'Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 772
      Top = 49
      Width = 94
      Height = 37
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn2Click
    end
    object GroupProduto: TGroupBox
      Left = 6
      Top = 88
      Width = 400
      Height = 40
      Caption = 'Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object ComboProduto: TRxDBLookupCombo
        Left = 6
        Top = 14
        Width = 390
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DisplayEmpty = 'Procura pela Descri'#231#227'o Principal...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'PRODICOD'
        LookupDisplay = 'PRODICOD;PRODA60DESCR'
        LookupDisplayIndex = 1
        LookupSource = DSSQLProduto
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 6
      Top = 46
      Width = 400
      Height = 40
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object ComboCliente: TRxDBLookupCombo
        Left = 6
        Top = 14
        Width = 390
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'CLIEA13ID'
        LookupDisplay = 'CLIEA60RAZAOSOC'
        LookupSource = DSSQLCliente
        ParentFont = False
        TabOrder = 0
      end
    end
    object Grupo: TGroupBox
      Left = 6
      Top = 4
      Width = 400
      Height = 40
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ComboGrupo: TRxDBLookupCombo
        Left = 7
        Top = 13
        Width = 390
        Height = 21
        DropDownCount = 8
        DataField = 'GRUPICOD'
        LookupField = 'GRUPICOD'
        LookupDisplay = 'GRUPA60DESCR'
        LookupSource = DSSQLGrupo
        TabOrder = 0
        OnExit = ComboGrupoExit
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 416
      Top = 4
      Width = 449
      Height = 41
      Caption = ' Exibir Lan'#231'amentos '
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        'Devolvidos'
        'Entregues'
        'Todos')
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 415
      Top = 87
      Width = 354
      Height = 40
      Caption = ' Opera'#231#227'o de Devolu'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 6
        Top = 14
        Width = 341
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'OPESICOD'
        LookupDisplay = 'OPESA60DESCR'
        LookupSource = dtsOp2
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 415
      Top = 47
      Width = 354
      Height = 40
      Caption = ' Opera'#231#227'o de Devolu'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 6
        Top = 14
        Width = 341
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'OPESICOD'
        LookupDisplay = 'OPESA60DESCR'
        LookupSource = dtsOp1
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 169
    Width = 875
    Height = 278
    Align = alClient
    Ctl3D = False
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIEA60RAZAOSOC'
        Title.Caption = 'Cliente / Raz'#227'o Social'
        Width = 334
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOFIDEMIS'
        Title.Caption = 'Data'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOFIINUMERO'
        Title.Caption = 'N'#176' Nota'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OPESCENTRADASAIDA'
        Title.Caption = 'E/S'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODA30ADESCRREDUZ'
        Title.Caption = 'Item'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFITN3QUANT'
        Title.Caption = 'Qtde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPESA60DESCR'
        Title.Caption = 'Opera'#231#227'o de Estoque'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 447
    Width = 875
    Height = 73
    Align = alBottom
    BevelOuter = bvNone
    Color = 12572888
    TabOrder = 3
    object Label2: TLabel
      Left = 16
      Top = 12
      Width = 114
      Height = 13
      Caption = 'Cilindros Entregues:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 40
      Width = 120
      Height = 13
      Caption = 'Cilindros Devolvidos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 436
      Top = 8
      Width = 189
      Height = 13
      Caption = 'Cilindros que est'#227'o com o cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtEntregue: TCurrencyEdit
      Left = 148
      Top = 6
      Width = 121
      Height = 25
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '#######0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtDevolvido: TCurrencyEdit
      Left = 148
      Top = 34
      Width = 121
      Height = 25
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '#######0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtTotal: TCurrencyEdit
      Left = 476
      Top = 32
      Width = 121
      Height = 25
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '#######0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object SQLGrupo: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPO'
      'order by GRUPA60DESCR')
    Left = 524
    Top = 228
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'GRUPO.GRUPICOD'
      Required = True
    end
    object SQLGrupoGRUPA60DESCR: TIBStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'GRUPO.GRUPA60DESCR'
      Required = True
      FixedChar = True
      Size = 60
    end
    object SQLGrupoPENDENTE: TIBStringField
      FieldName = 'PENDENTE'
      Origin = 'GRUPO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLGrupoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'GRUPO.REGISTRO'
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 555
    Top = 228
  end
  object SQLCliente: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Left = 524
    Top = 260
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 555
    Top = 260
  end
  object SQLProduto: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'Select PRODICOD, PRODA60REFER, PRODA60DESCR from PRODUTO'
      ' where grupicod = :grupicod'
      'Order by PRODA60DESCR')
    Left = 524
    Top = 292
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grupicod'
        ParamType = ptUnknown
      end>
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 555
    Top = 292
  end
  object IBQuery: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select cl.cliea60razaosoc, nf.NOFiINUMERO, '
      
        '  NF.NOFIDEMIS, p.proda30adescrreduz, ni.nfitn3quant, ni.nfitn2v' +
        'lrunit,'
      
        '  OP.OPESA60DESCR, op.opescentradasaida  from notafiscalitem ni ' +
        '            inner join notafiscal nf on nf.nofia13id = ni.nofia1' +
        '3id   '
      '  left join operacaoestoque op on op.opesicod = nf.opesicod '
      '  left join cliente cl on cl.cliea13id = nf.cliea13id       '
      '  left join produto p on p.prodicod = ni.prodicod           ')
    Left = 460
    Top = 232
    object IBQueryCLIEA60RAZAOSOC: TIBStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object IBQueryNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'NOTAFISCAL.NOFIINUMERO'
    end
    object IBQueryNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'NOTAFISCAL.NOFIDEMIS'
    end
    object IBQueryPRODA30ADESCRREDUZ: TIBStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object IBQueryNFITN3QUANT: TFloatField
      FieldName = 'NFITN3QUANT'
      Origin = 'NOTAFISCALITEM.NFITN3QUANT'
    end
    object IBQueryNFITN2VLRUNIT: TFloatField
      FieldName = 'NFITN2VLRUNIT'
      Origin = 'NOTAFISCALITEM.NFITN2VLRUNIT'
    end
    object IBQueryOPESA60DESCR: TIBStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object IBQueryOPESCENTRADASAIDA: TIBStringField
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery
    Left = 492
    Top = 232
  end
  object SQLOp1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Left = 592
    Top = 228
  end
  object dtsOp1: TDataSource
    DataSet = SQLOp1
    Left = 623
    Top = 228
  end
  object SQLOp2: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Left = 596
    Top = 260
  end
  object dtsOp2: TDataSource
    DataSet = SQLOp2
    Left = 627
    Top = 260
  end
end
