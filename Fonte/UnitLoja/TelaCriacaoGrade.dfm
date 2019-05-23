inherited FormTelaCriacaoGrade: TFormTelaCriacaoGrade
  Left = 17
  Top = 35
  Height = 541
  Caption = 'Gera'#231#227'o da Grade'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 514
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object BtnOk: TSpeedButton
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Caption = 'OK'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            DE040000424DDE0400000000000036040000280000000C0000000E0000000100
            080000000000A8000000130B0000130B0000000100000001000000000000A7C2
            B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
            88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
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
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000111111111100
            11111111111111111111000B0011111111111111110009090011111111111111
            1100090F10001111111111110009090D0E0011111111110009090B000C060011
            11111100090800000A0200111111000909000011000206001111000708001111
            0003020011111100001111111100030600111111111111111100050200111111
            1111111111110003040011111111111111110001020011111111111111111100
            0011}
          ParentFont = False
          OnClick = BtnOkClick
        end
      end
    end
    inherited PanelCentral: TPanel
      Height = 430
      object Label1: TLabel [0]
        Left = 130
        Top = 26
        Width = 69
        Height = 13
        Caption = 'C'#243'd.Produto'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel [1]
        Left = 233
        Top = 26
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Width = 0
        Height = 414
      end
      object DBEdit1: TDBEdit
        Left = 130
        Top = 42
        Width = 99
        Height = 21
        TabStop = False
        DataField = 'PRODA60DESCR'
        DataSource = FormCadastroProduto.DSTemplate
        ReadOnly = True
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 130
        Top = 75
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Cores Poss'#237'veis'
        Color = 12615808
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 130
        Top = 244
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Tamanhos Poss'#237'veis'
        Color = 12615808
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel6: TPanel
        Left = 450
        Top = 73
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Cores Selecionadas'
        Color = 12615808
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Panel7: TPanel
        Left = 450
        Top = 242
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Tamanhos Selecionados'
        Color = 12615808
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object Button1: TButton
        Left = 398
        Top = 115
        Width = 28
        Height = 25
        Caption = '>>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 398
        Top = 140
        Width = 28
        Height = 25
        Caption = '>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 398
        Top = 165
        Width = 28
        Height = 25
        Caption = '<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 398
        Top = 190
        Width = 28
        Height = 25
        Caption = '<<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 398
        Top = 283
        Width = 28
        Height = 25
        Caption = '>>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 398
        Top = 308
        Width = 28
        Height = 25
        Caption = '>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 398
        Top = 333
        Width = 28
        Height = 25
        Caption = '<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 398
        Top = 358
        Width = 28
        Height = 25
        Caption = '<<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = Button8Click
      end
      object ListaCorDisp: TListBox
        Left = 130
        Top = 98
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 14
      end
      object ListaTamDisp: TListBox
        Left = 130
        Top = 267
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 15
      end
      object ListaTamSel: TListBox
        Left = 450
        Top = 265
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 16
      end
      object ListaCorSel: TListBox
        Left = 450
        Top = 96
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 17
      end
      object DBEdit2: TDBEdit
        Left = 232
        Top = 42
        Width = 464
        Height = 21
        TabStop = False
        DataField = 'PRODA60DESCR'
        DataSource = FormCadastroProduto.DSTemplate
        ReadOnly = True
        TabOrder = 18
      end
      object ProgressBar: TProgressBar
        Left = 0
        Top = 414
        Width = 757
        Height = 16
        Align = alBottom
        Min = 0
        Max = 100
        TabOrder = 19
        Visible = False
      end
    end
  end
  object TblCorPossivel: TMemoryTable
    TableName = 'TblCorPossivel'
    Left = 24
    Top = 120
  end
  object TblTamanhoPossivel: TMemoryTable
    TableName = 'TblTamanhoPossivel'
    Left = 24
    Top = 186
  end
  object TblCorSelecionada: TMemoryTable
    TableName = 'TblCorSelecionada'
    Left = 52
    Top = 120
  end
  object TblTamanhoSelecionado: TMemoryTable
    TableName = 'TblTamanhoSelecionado'
    Left = 52
    Top = 186
  end
  object DSTamanhoPossivel: TDataSource
    DataSet = TblTamanhoPossivel
    Left = 24
    Top = 214
  end
  object DSTamanhoSelecionado: TDataSource
    DataSet = TblTamanhoSelecionado
    Left = 52
    Top = 214
  end
  object DSCorPossivel: TDataSource
    DataSet = TblCorPossivel
    Left = 24
    Top = 148
  end
  object DSCorSelecionada: TDataSource
    DataSet = TblCorSelecionada
    Left = 52
    Top = 148
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    DataSource = FormCadastroProduto.DSTemplate
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    GRADETAMANHO'
      'Where '
      '    GRADICOD = :GRADICOD'
      'order by '
      '    GRADICOD'
      '')
    Macros = <>
    Left = 92
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLGradeTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLGradeTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLGradeTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    DataSource = FormCadastroProduto.DSTemplate
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    COR'
      'order by '
      '   CORA30DESCR')
    Macros = <>
    Left = 92
    Top = 148
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLProduto: TRxQuery
    Tag = 1
    AutoCalcFields = False
    BeforePost = SQLProdutoBeforePost
    AfterPost = SQLProdutoAfterPost
    OnPostError = SQLProdutoPostError
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTO Where PRODICOD is NULL')
    UpdateObject = UpdateSQLProduto
    Macros = <>
    Left = 92
    Top = 186
  end
  object UpdateSQLProduto: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  PRODICOD = :PRODICOD,'
      '  PRODA30CODESTRUT = :PRODA30CODESTRUT,'
      '  PRODA60CODBAR = :PRODA60CODBAR,'
      '  PRODA15CODANT = :PRODA15CODANT,'
      '  PRODIAGRUPGRADE = :PRODIAGRUPGRADE,'
      '  PRODA60REFER = :PRODA60REFER,'
      '  PRODA60DESCR = :PRODA60DESCR,'
      '  PRODA30ADESCRREDUZ = :PRODA30ADESCRREDUZ,'
      '  PRODA255DESCRTEC = :PRODA255DESCRTEC,'
      '  PRODICODBALANCA = :PRODICODBALANCA,'
      '  PRODA15APAVIM = :PRODA15APAVIM,'
      '  PRODA15RUA = :PRODA15RUA,'
      '  PRODA15PRATEL = :PRODA15PRATEL,'
      '  CLFSICOD = :CLFSICOD,'
      '  MARCICOD = :MARCICOD,'
      '  UNIDICOD = :UNIDICOD,'
      '  GRADICOD = :GRADICOD,'
      '  GRTMICOD = :GRTMICOD,'
      '  GRUPICOD = :GRUPICOD,'
      '  SUBGICOD = :SUBGICOD,'
      '  VARIICOD = :VARIICOD,'
      '  ICMSICOD = :ICMSICOD,'
      '  PRODN3PESOBRUTO = :PRODN3PESOBRUTO,'
      '  PRODN3PESOLIQ = :PRODN3PESOLIQ,'
      '  PRODN3CAPACEMBAL = :PRODN3CAPACEMBAL,'
      '  PRODDCAD = :PRODDCAD,'
      '  PRODDULTALTER = :PRODDULTALTER,'
      '  PRODN3VLRVENDA = :PRODN3VLRVENDA,'
      '  PRODN3VLRVENDAPROM = :PRODN3VLRVENDAPROM,'
      '  PRODDINIPROMO = :PRODDINIPROMO,'
      '  PRODDFIMPROMO = :PRODDFIMPROMO,'
      '  PRODN3VLRCOMPRA = :PRODN3VLRCOMPRA,'
      '  PRODN3VLRCUSTO = :PRODN3VLRCUSTO,'
      '  PRODN3VLRCUSTOMED = :PRODN3VLRCUSTOMED,'
      '  PRODN3PERCIPI = :PRODN3PERCIPI,'
      '  PRODN3PERCMARGLUCR = :PRODN3PERCMARGLUCR,'
      '  PRODCATIVO = :PRODCATIVO,'
      '  PRODCSERVICO = :PRODCSERVICO,'
      '  PRODCGERACOMIS = :PRODCGERACOMIS,'
      '  PRODN2COMISVISTA = :PRODN2COMISVISTA,'
      '  PRODN2COMISPRAZO = :PRODN2COMISPRAZO,'
      '  PRODDIMOBOLIZ = :PRODDIMOBOLIZ,'
      '  PRODICODPAI = :PRODICODPAI,'
      '  PRODCTIPOBAIXA = :PRODCTIPOBAIXA,'
      '  PRODN3QTDEBAIXA = :PRODN3QTDEBAIXA,'
      '  CORICOD = :CORICOD,'
      '  PRODIORIGEM = :PRODIORIGEM,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  PRODDULTATUALIZ = :PRODDULTATUALIZ'
      'where'
      '  PRODICOD = :OLD_PRODICOD')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (PRODICOD, PRODA30CODESTRUT, PRODA60CODBAR, PRODA15CODANT, PRO' +
        'DIAGRUPGRADE, '
      
        '   PRODA60REFER, PRODA60DESCR, PRODA30ADESCRREDUZ, PRODA255DESCR' +
        'TEC, PRODICODBALANCA, '
      
        '   PRODA15APAVIM, PRODA15RUA, PRODA15PRATEL, CLFSICOD, MARCICOD,' +
        ' UNIDICOD, '
      
        '   GRADICOD, GRTMICOD, GRUPICOD, SUBGICOD, VARIICOD, ICMSICOD, P' +
        'RODN3PESOBRUTO, '
      
        '   PRODN3PESOLIQ, PRODN3CAPACEMBAL, PRODDCAD, PRODDULTALTER, PRO' +
        'DN3VLRVENDA, '
      
        '   PRODN3VLRVENDAPROM, PRODDINIPROMO, PRODDFIMPROMO, PRODN3VLRCO' +
        'MPRA, PRODN3VLRCUSTO, '
      
        '   PRODN3VLRCUSTOMED, PRODN3PERCIPI, PRODN3PERCMARGLUCR, PRODCAT' +
        'IVO, PRODCSERVICO, '
      
        '   PRODCGERACOMIS, PRODN2COMISVISTA, PRODN2COMISPRAZO, PRODDIMOB' +
        'OLIZ, PRODICODPAI, '
      
        '   PRODCTIPOBAIXA, PRODN3QTDEBAIXA, CORICOD, PRODIORIGEM, PENDEN' +
        'TE, REGISTRO, '
      '   PRODDULTATUALIZ)'
      'values'
      
        '  (:PRODICOD, :PRODA30CODESTRUT, :PRODA60CODBAR, :PRODA15CODANT,' +
        ' :PRODIAGRUPGRADE, '
      
        '   :PRODA60REFER, :PRODA60DESCR, :PRODA30ADESCRREDUZ, :PRODA255D' +
        'ESCRTEC, '
      
        '   :PRODICODBALANCA, :PRODA15APAVIM, :PRODA15RUA, :PRODA15PRATEL' +
        ', :CLFSICOD, '
      
        '   :MARCICOD, :UNIDICOD, :GRADICOD, :GRTMICOD, :GRUPICOD, :SUBGI' +
        'COD, :VARIICOD, '
      
        '   :ICMSICOD, :PRODN3PESOBRUTO, :PRODN3PESOLIQ, :PRODN3CAPACEMBA' +
        'L, :PRODDCAD, '
      
        '   :PRODDULTALTER, :PRODN3VLRVENDA, :PRODN3VLRVENDAPROM, :PRODDI' +
        'NIPROMO, '
      
        '   :PRODDFIMPROMO, :PRODN3VLRCOMPRA, :PRODN3VLRCUSTO, :PRODN3VLR' +
        'CUSTOMED, '
      
        '   :PRODN3PERCIPI, :PRODN3PERCMARGLUCR, :PRODCATIVO, :PRODCSERVI' +
        'CO, :PRODCGERACOMIS, '
      
        '   :PRODN2COMISVISTA, :PRODN2COMISPRAZO, :PRODDIMOBOLIZ, :PRODIC' +
        'ODPAI, '
      
        '   :PRODCTIPOBAIXA, :PRODN3QTDEBAIXA, :CORICOD, :PRODIORIGEM, :P' +
        'ENDENTE, '
      '   :REGISTRO, :PRODDULTATUALIZ)')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  PRODICOD = :OLD_PRODICOD')
    Left = 92
    Top = 214
  end
  object DSProduto: TDataSource
    DataSet = SQLProduto
    Left = 121
    Top = 186
  end
  object SQLProdutoSaldo: TRxQuery
    BeforePost = SQLProdutoSaldoBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From PRODUTOSALDO '
      'Where PRODICOD is NULL and EMPRICOD is NULL')
    UpdateObject = UpdateSQLProdutoSaldo
    Macros = <>
    Left = 91
    Top = 251
    object SQLProdutoSaldoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPSLDN3QTDMIN: TBCDField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPSLDN3QTDMAX: TBCDField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSaldoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object UpdateSQLProdutoSaldo: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTOSALDO'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  PRODICOD = :PRODICOD,'
      '  PSLDN3QTDE = :PSLDN3QTDE,'
      '  PSLDN3QTDMIN = :PSLDN3QTDMIN,'
      '  PSLDN3QTDMAX = :PSLDN3QTDMAX,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    InsertSQL.Strings = (
      'insert into PRODUTOSALDO'
      
        '  (EMPRICOD, PRODICOD, PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX, P' +
        'ENDENTE, '
      '   REGISTRO)'
      'values'
      
        '  (:EMPRICOD, :PRODICOD, :PSLDN3QTDE, :PSLDN3QTDMIN, :PSLDN3QTDM' +
        'AX, :PENDENTE, '
      '   :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOSALDO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    Left = 91
    Top = 279
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From EMPRESA')
    Macros = <>
    Left = 91
    Top = 307
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
  end
  object ConsultaGrade: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 50
    Top = 254
  end
end
