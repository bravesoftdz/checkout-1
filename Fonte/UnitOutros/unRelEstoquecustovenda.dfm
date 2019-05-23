object FormRelEstoqueCustoVenda: TFormRelEstoqueCustoVenda
  Left = 220
  Top = 220
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Estoque x Valor x Custo'
  ClientHeight = 127
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 10
    Width = 49
    Height = 13
    Caption = 'Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 103
    Height = 13
    Caption = 'Retorativo ao dia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 236
    Top = 56
    Width = 69
    Height = 13
    Caption = 'Grupo ICMS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 26
    Width = 433
    Height = 21
    KeyField = 'EMPRICOD'
    ListField = 'EMPRA60RAZAOSOC'
    ListSource = dtsEmpresa
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 377
    Top = 83
    Width = 72
    Height = 36
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Kind = bkClose
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 83
    Width = 130
    Height = 36
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 78
    Width = 217
    Height = 17
    Caption = 'Listar Somente Itens com Saldo +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DateEdit: TDateEdit
    Left = 128
    Top = 52
    Width = 101
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object CheckCusto: TCheckBox
    Left = 16
    Top = 102
    Width = 181
    Height = 17
    Caption = 'Listar Com Valores de Custo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 308
    Top = 52
    Width = 142
    Height = 21
    KeyField = 'ICMSICOD'
    ListField = 'ICMSA60DESCR'
    ListSource = dtsICMS
    TabOrder = 6
  end
  object ibEmpresa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Empresa')
    Left = 320
    Top = 18
  end
  object dtsEmpresa: TDataSource
    DataSet = ibEmpresa
    Left = 356
    Top = 18
  end
  object ibEstoque: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select p.prodicod, p.PRODA60DESCR, p.PRODN3VLRVENDA, p.prodn3vlr' +
        'custo, PS.PSLDN3QTDE, i.ICMSA60DESCR,P.ICMSICOD,  PS.PSLDN3QTDE*' +
        'P.PRODN3VLRVENDA AS TOTAL FROM PRODUTO P LEFT JOIN PRODUTOSALDO ' +
        'PS ON PS.PRODICOD = P.PRODICOD'
      'left join icms i on i.icmsicod = p.icmsicod')
    Left = 208
    Top = 18
    object ibEstoquePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'PRODUTO.PRODICOD'
      Required = True
    end
    object ibEstoquePRODA60DESCR: TIBStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object ibEstoquePRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = ',0.00'
    end
    object ibEstoquePRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'PRODUTO.PRODN3VLRCUSTO'
      DisplayFormat = ',0.00'
    end
    object ibEstoquePSLDN3QTDE: TFloatField
      FieldName = 'PSLDN3QTDE'
      Origin = 'PRODUTOSALDO.PSLDN3QTDE'
    end
    object ibEstoqueICMSA60DESCR: TIBStringField
      FieldName = 'ICMSA60DESCR'
      Origin = 'ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
    object ibEstoqueICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'PRODUTO.ICMSICOD'
    end
    object ibEstoqueTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00'
    end
  end
  object dtsEstoque: TDataSource
    DataSet = ibEstoque
    Left = 236
    Top = 18
  end
  object IBMovEstoque: TIBSQL
    Database = DM.IBDatabase
    ParamCheck = True
    SQL.Strings = (
      
        'Select Sum(MVESN3QTDENTRADA-MVESN3QTDSAIDA) as QtdMovimento from' +
        ' movimentoestoque where MVESDMOV >= :xDataMovimento')
    Transaction = DM.ibTrans
    Left = 148
    Top = 20
  end
  object ibicms: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from icms')
    Left = 468
    Top = 22
  end
  object dtsICMS: TDataSource
    DataSet = ibicms
    Left = 508
    Top = 22
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
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Vanderlei Matte'
    RegistroUsuario.SerieProduto = 'SINGLE-1206/01012'
    RegistroUsuario.AutorizacaoKey = 'WUKQ-4652-CKDL-2083-NXEO'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 284
    Top = 19
  end
end
