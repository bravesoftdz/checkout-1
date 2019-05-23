object FrmLivroDefencivos: TFrmLivroDefencivos
  Left = 174
  Top = 294
  Width = 724
  Height = 140
  Caption = 'Livro de Registro de Defencivos Fitossanit'#225'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 64
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 16
      Width = 211
      Height = 13
      Caption = 'Movimento Realizado no Per'#237'odo de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 40
      Width = 218
      Height = 13
      Caption = 'Produto  ( ignore para imprimir todos ):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DateEdit1: TDateEdit
      Left = 244
      Top = 8
      Width = 136
      Height = 21
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 392
      Top = 8
      Width = 136
      Height = 21
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 1
    end
    object btnLIst: TBitBtn
      Left = 540
      Top = 9
      Width = 75
      Height = 38
      Caption = '&Listar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnLIstClick
    end
    object BitBtn3: TBitBtn
      Left = 620
      Top = 9
      Width = 75
      Height = 38
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 244
      Top = 32
      Width = 285
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      TabOrder = 2
      Visible = False
    end
  end
  object ProgressBar1: TProgressBar
    Left = 49
    Top = 76
    Width = 617
    Height = 25
    Min = 0
    Max = 100
    TabOrder = 1
  end
  object ibEmpresa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Empresa')
    Left = 88
    Top = 64
  end
  object RDprint: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 12
    Top = 73
  end
  object IBProd: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT  P.PRODICOD, P.PRODA60DESCR, P.PRODA30PRINCATV, S.PSLDN3Q' +
        'TDE FROM PRODUTO P LEFT JOIN PRODUTOSALDO S ON P.PRODICOD = S.PR' +
        'ODICOD WHERE P.PRODCIMPRECEITA = '#39'S'#39' ORDER BY P.PRODA60DESCR')
    Left = 120
    Top = 64
  end
  object IBComp: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsProd
    SQL.Strings = (
      'SELECT '
      
        'I.NOCIN3QTDEMBAL, C.NOCPA30NRO, C.NOCPDEMISSAO, F.OPESA60DESCR, ' +
        'FORN.FORNA60RAZAOSOC '
      'FROM  NOTACOMPRAITEM I'
      
        ' LEFT JOIN NOTACOMPRA C ON C.NOCPA13ID = I.NOCPA13ID LEFT JOIN O' +
        'PERACAOESTOQUE F ON F.OPESICOD = C.OPESICOD LEFT JOIN FORNECEDOR' +
        ' FORN ON FORN.FORNICOD = C.FORNICOD '
      
        ' WHERE C.NOCPDEMISSAO >=  :XDATAINI AND C.NOCPDEMISSAO <= :XDATA' +
        'FIM AND I.PRODICOD = :PRODICOD')
    Left = 148
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'XDATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XDATAFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
  end
  object dtsProd: TDataSource
    DataSet = IBProd
    Left = 120
    Top = 92
  end
  object IBVnd: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsProd
    SQL.Strings = (
      
        'SELECT DISTINCT NI.PRODICOD, N.NOFIINUMERO, N.NOFIA13ID, R.RECEI' +
        'TA, N.NOFIDEMIS, N.NOFIDCANCEL, F.OPESA60DESCR, CL.CLIEA60RAZAOS' +
        'OC '
      'FROM NOTAFISCALITEM NI '
      'LEFT JOIN NOTAFISCAL N ON N.NOFIA13ID = NI.NOFIA13ID '
      'LEFT JOIN OPERACAOESTOQUE F ON F.OPESICOD = N.OPESICOD'
      'LEFT JOIN CLIENTE CL ON CL.CLIEA13ID = N.CLIEA13ID'
      
        'LEFT JOIN CLIENTERECEITUARIO R ON R.NOFIA13ID = N.NOFIINUMERO AN' +
        'D R.PRODICOD = NI.PRODICOD'
      
        'WHERE N.NOFIDEMIS >=  :XDATAINI AND N.NOFIDEMIS <= :XDATAFIM AND' +
        ' NI.PRODICOD = :PRODICOD  ORDER BY N.NOFIINUMERO')
    Left = 176
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'XDATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XDATAFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
  end
  object IBQtds: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsVnd
    SQL.Strings = (
      
        'select i.PRODICOD, I.NFITN3QUANT  from NOTAFISCALITEM I WHERE  I' +
        '.NOFIA13ID = :NOFIA13ID  ORDER BY I.NOFIA13ID,I.NFITIITEM')
    Left = 208
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
      end>
  end
  object dtsVnd: TDataSource
    DataSet = IBVnd
    Left = 176
    Top = 92
  end
  object IBSQL1: TIBSQL
    Database = DM.IBDatabase
    ParamCheck = True
    SQL.Strings = (
      'delete from LIVRODEFENSIVO')
    Transaction = DM.ibTrans
    Left = 240
    Top = 64
  end
  object ibStLivro: TIBSQL
    Database = DM.IBDatabase
    ParamCheck = True
    SQL.Strings = (
      '  INSERT INTO LIVRODEFENSIVO ('
      '    CODIGO,'
      '    DESCRICAO,'
      '    PRINCIPIO,'
      '    N_NOTA,'
      '    COMPRADOR,'
      '    RECEITA,'
      '    DATA,'
      '    QUANTIDADE,'
      '    NATUREZA,'
      '    QTDESTOQUE)'
      '  VALUES ('
      '    :CODIGO,'
      '    :DESCRICAO,'
      '    :PRINCIPIO,'
      '    :N_NOTA,'
      '    :COMPRADOR,'
      '    :RECEITA,'
      '    :DATA,'
      '    :QUANTIDADE,'
      '    :NATUREZA,'
      '    :QTDESTOQUE)')
    Transaction = DM.ibTrans
    Left = 284
    Top = 64
  end
  object IBLVR: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from LIVRODESFENSIVO lv order by codigo')
    Left = 320
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = IBLVR
    Left = 320
    Top = 92
  end
end
