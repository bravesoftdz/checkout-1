object FormPrincipal: TFormPrincipal
  Left = 692
  Top = 310
  Width = 144
  Height = 158
  Caption = 'Extrato Venda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TblPreVendaItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TblMemPreVendaItem.DB'
    Left = 16
    Top = 26
    object TblPreVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblPreVendaItemDescricaoRed: TStringField
      FieldName = 'DescricaoRed'
      Size = 30
    end
    object TblPreVendaItemPVITN3QTD: TBCDField
      FieldName = 'PVITN3QTD'
      Precision = 32
      Size = 3
    end
    object TblPreVendaItemPVITN3VLRUNIT: TBCDField
      FieldName = 'PVITN3VLRUNIT'
      Precision = 32
      Size = 3
    end
    object TblPreVendaItemTotalItem: TFloatField
      FieldName = 'TotalItem'
    end
    object TblPreVendaItemVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object TblPreVendaItemMesaICod: TIntegerField
      FieldName = 'MesaICod'
    end
    object TblPreVendaItemContaICod: TIntegerField
      FieldName = 'ContaICod'
    end
    object TblPreVendaItemMarcado: TBooleanField
      FieldName = 'Marcado'
    end
  end
  object rdp: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Impressao Prevenda'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Impressao Prevenda'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 10
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S12cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 64
    Top = 26
  end
end
