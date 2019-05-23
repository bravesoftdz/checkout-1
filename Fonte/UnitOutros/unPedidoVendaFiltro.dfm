object FormPedidoVendasFiltro: TFormPedidoVendasFiltro
  Left = 247
  Top = 165
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Itens a Entregar'
  ClientHeight = 260
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 60
    Width = 40
    Height = 13
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 152
    Width = 82
    Height = 13
    Caption = 'Emitidos Entre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 12
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
  object Label4: TLabel
    Left = 196
    Top = 172
    Width = 8
    Height = 13
    Caption = 'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 108
    Width = 108
    Height = 13
    Caption = 'Produto a Entregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 80
    Width = 461
    Height = 21
    KeyField = 'CLIEA13ID'
    ListField = 'CLIEA60RAZAOSOC'
    ListSource = dtsLocalcli
    TabOrder = 1
  end
  object Dataini: TDateEdit
    Left = 8
    Top = 168
    Width = 169
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object datafim: TDateEdit
    Left = 224
    Top = 168
    Width = 153
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 204
    Width = 373
    Height = 41
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 2
    Items.Strings = (
      'Abertos'
      'Entrega Parcial'
      'Ambos')
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 396
    Top = 216
    Width = 75
    Height = 25
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
    Left = 396
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Kind = bkClose
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 28
    Width = 461
    Height = 21
    KeyField = 'EMPRICOD'
    ListField = 'EMPRA60RAZAOSOC'
    ListSource = dtsEmpresa
    TabOrder = 0
  end
  object DBLookupComboBoxProduto: TDBLookupComboBox
    Left = 8
    Top = 128
    Width = 461
    Height = 21
    KeyField = 'PRODICOD'
    ListField = 'PRODA60DESCR'
    ListSource = dtsLocalProdutos
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = -481
    Top = 248
    Width = 973
    Height = 345
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
    Visible = False
  end
  object ibLocalCli: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select CLIEA13ID, CLIEA60RAZAOSOC from cliente order by cliea60r' +
        'azaosoc')
    Left = 124
    Top = 56
  end
  object dtsLocalcli: TDataSource
    DataSet = ibLocalCli
    Left = 164
    Top = 56
  end
  object ibEmpresa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Empresa')
    Left = 232
    Top = 56
  end
  object dtsEmpresa: TDataSource
    DataSet = ibEmpresa
    Left = 272
    Top = 56
  end
  object ibLocalProdutos: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select PRODA60DESCR, PRODICOD from PRODUTO order by proda60descr'
      '')
    Left = 128
    Top = 100
  end
  object dtsLocalProdutos: TDataSource
    DataSet = ibLocalProdutos
    Left = 164
    Top = 100
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
    Left = 316
    Top = 4
  end
end
