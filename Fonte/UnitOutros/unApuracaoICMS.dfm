object FrmApuracaoICMS: TFrmApuracaoICMS
  Left = 267
  Top = 282
  Width = 271
  Height = 187
  Caption = 'Apura'#231#227'o de ICMS'
  Color = 12572888
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 7
    Width = 168
    Height = 13
    Caption = 'Informe Per'#237'odo de Apura'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 56
    Width = 244
    Height = 40
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 2
    Items.Strings = (
      'Cupons'
      'Notas'
      'Ambos')
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 128
    Width = 157
    Height = 25
    Caption = 'Visualizar Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Kind = bkClose
  end
  object edtDataini: TDateEdit
    Left = 8
    Top = 24
    Width = 116
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object edtDataFim: TDateEdit
    Left = 136
    Top = 24
    Width = 116
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object CheckProd: TCheckBox
    Left = 8
    Top = 100
    Width = 241
    Height = 17
    Caption = 'Visualizar produtos vendidos '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object ibCupons: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select cup.*, cli.cliea60razaosoc From Cupom cup left join clien' +
        'te cli on cli.cliea13id = cup.cliea13id where CUPODEMIS >= :xDat' +
        'aini and CUPODEMIS <= :xDataFim')
    Left = 12
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xDataini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataFim'
        ParamType = ptUnknown
      end>
    object ibCuponsCUPOA13ID: TIBStringField
      FieldName = 'CUPOA13ID'
      Origin = 'CUPOM.CUPOA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object ibCuponsEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'CUPOM.EMPRICOD'
    end
    object ibCuponsTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'CUPOM.TERMICOD'
    end
    object ibCuponsCUPOICOD: TIntegerField
      FieldName = 'CUPOICOD'
      Origin = 'CUPOM.CUPOICOD'
      Required = True
    end
    object ibCuponsCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'CUPOM.CUPODEMIS'
    end
    object ibCuponsCLIEA13ID: TIBStringField
      FieldName = 'CLIEA13ID'
      Origin = 'CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object ibCuponsPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'CUPOM.PLRCICOD'
    end
    object ibCuponsVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'CUPOM.VENDICOD'
    end
    object ibCuponsCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'CUPOM.CONVICOD'
    end
    object ibCuponsCUPOCSTATUS: TIBStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object ibCuponsCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
      Origin = 'CUPOM.CUPON2TOTITENS'
    end
    object ibCuponsCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
      Origin = 'CUPOM.CUPON2DESC'
    end
    object ibCuponsCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
      Origin = 'CUPOM.CUPON2ACRESC'
    end
    object ibCuponsCUPON2TOTITENSRET: TFloatField
      FieldName = 'CUPON2TOTITENSRET'
      Origin = 'CUPOM.CUPON2TOTITENSRET'
    end
    object ibCuponsCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
      Origin = 'CUPOM.CUPOINRO'
    end
    object ibCuponsCUPOCTIPOPADRAO: TIBStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object ibCuponsCUPON2CONVTAXA: TFloatField
      FieldName = 'CUPON2CONVTAXA'
      Origin = 'CUPOM.CUPON2CONVTAXA'
    end
    object ibCuponsCUPOINROORDCOMPRA: TIntegerField
      FieldName = 'CUPOINROORDCOMPRA'
      Origin = 'CUPOM.CUPOINROORDCOMPRA'
    end
    object ibCuponsCUPOA13IDTROCA: TIBStringField
      FieldName = 'CUPOA13IDTROCA'
      Origin = 'CUPOM.CUPOA13IDTROCA'
      FixedChar = True
      Size = 13
    end
    object ibCuponsCUPON2VLRCOMISSAO: TFloatField
      FieldName = 'CUPON2VLRCOMISSAO'
      Origin = 'CUPOM.CUPON2VLRCOMISSAO'
    end
    object ibCuponsCUPOA20CODANT: TIBStringField
      FieldName = 'CUPOA20CODANT'
      Origin = 'CUPOM.CUPOA20CODANT'
      FixedChar = True
    end
    object ibCuponsCUPODCANC: TDateTimeField
      FieldName = 'CUPODCANC'
      Origin = 'CUPOM.CUPODCANC'
    end
    object ibCuponsCUPON2JUROATRAS: TFloatField
      FieldName = 'CUPON2JUROATRAS'
      Origin = 'CUPOM.CUPON2JUROATRAS'
    end
    object ibCuponsCUPON2MULTAATRAS: TFloatField
      FieldName = 'CUPON2MULTAATRAS'
      Origin = 'CUPOM.CUPON2MULTAATRAS'
    end
    object ibCuponsCUPODPAGTOCONSIG: TDateTimeField
      FieldName = 'CUPODPAGTOCONSIG'
      Origin = 'CUPOM.CUPODPAGTOCONSIG'
    end
    object ibCuponsCUPON3BONUSTROCA: TFloatField
      FieldName = 'CUPON3BONUSTROCA'
      Origin = 'CUPOM.CUPON3BONUSTROCA'
    end
    object ibCuponsCUPODENTREGA: TDateTimeField
      FieldName = 'CUPODENTREGA'
      Origin = 'CUPOM.CUPODENTREGA'
    end
    object ibCuponsTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
      Origin = 'CUPOM.TPVDICOD'
    end
    object ibCuponsUSUAICODCANC: TIntegerField
      FieldName = 'USUAICODCANC'
      Origin = 'CUPOM.USUAICODCANC'
    end
    object ibCuponsPENDENTE: TIBStringField
      FieldName = 'PENDENTE'
      Origin = 'CUPOM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object ibCuponsREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'CUPOM.REGISTRO'
    end
    object ibCuponsCUPON3CREDTAXA: TFloatField
      FieldName = 'CUPON3CREDTAXA'
      Origin = 'CUPOM.CUPON3CREDTAXA'
    end
    object ibCuponsCUPOCCONSIG: TIBStringField
      FieldName = 'CUPOCCONSIG'
      Origin = 'CUPOM.CUPOCCONSIG'
      FixedChar = True
      Size = 1
    end
    object ibCuponsCUPOV254OBS: TIBStringField
      FieldName = 'CUPOV254OBS'
      Origin = 'CUPOM.CUPOV254OBS'
      Size = 254
    end
    object ibCuponsCUPOA30DATACARTAO: TIBStringField
      FieldName = 'CUPOA30DATACARTAO'
      Origin = 'CUPOM.CUPOA30DATACARTAO'
      FixedChar = True
      Size = 30
    end
    object ibCuponsCUPOA30HORACARTAO: TIBStringField
      FieldName = 'CUPOA30HORACARTAO'
      Origin = 'CUPOM.CUPOA30HORACARTAO'
      FixedChar = True
      Size = 30
    end
    object ibCuponsCUPOA30NSUPROVEDOR: TIBStringField
      FieldName = 'CUPOA30NSUPROVEDOR'
      Origin = 'CUPOM.CUPOA30NSUPROVEDOR'
      FixedChar = True
      Size = 30
    end
    object ibCuponsCUPOA30NSUINSTITUICAO: TIBStringField
      FieldName = 'CUPOA30NSUINSTITUICAO'
      Origin = 'CUPOM.CUPOA30NSUINSTITUICAO'
      FixedChar = True
      Size = 30
    end
    object ibCuponsCUPON2DESCITENS: TFloatField
      FieldName = 'CUPON2DESCITENS'
      Origin = 'CUPOM.CUPON2DESCITENS'
    end
    object ibCuponsCATCA13ID: TIBStringField
      FieldName = 'CATCA13ID'
      Origin = 'CUPOM.CATCA13ID'
      FixedChar = True
      Size = 13
    end
    object ibCuponsAVALA13ID: TIBStringField
      FieldName = 'AVALA13ID'
      Origin = 'CUPOM.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object ibCuponsCFOPA5COD: TIBStringField
      FieldName = 'CFOPA5COD'
      Origin = 'CUPOM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object ibCuponsCUPOA13IDCUPNEG: TIBStringField
      FieldName = 'CUPOA13IDCUPNEG'
      Origin = 'CUPOM.CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object ibCuponsCUPODQUITACAO: TDateTimeField
      FieldName = 'CUPODQUITACAO'
      Origin = 'CUPOM.CUPODQUITACAO'
    end
    object ibCuponsCUPON2BASEICMS: TFloatField
      FieldName = 'CUPON2BASEICMS'
      Origin = 'CUPOM.CUPON2BASEICMS'
    end
    object ibCuponsCUPON2VLRICMS: TFloatField
      FieldName = 'CUPON2VLRICMS'
      Origin = 'CUPOM.CUPON2VLRICMS'
    end
    object ibCuponsOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'CUPOM.OPESICOD'
    end
    object ibCuponsPLCTA15CODCRED: TIBStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'CUPOM.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object ibCuponsPLCTA15CODDEB: TIBStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'CUPOM.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object ibCuponsCLIENTENOME: TIBStringField
      FieldName = 'CLIENTENOME'
      Origin = 'CUPOM.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object ibCuponsCLIENTECNPJ: TIBStringField
      FieldName = 'CLIENTECNPJ'
      Origin = 'CUPOM.CLIENTECNPJ'
      FixedChar = True
    end
    object ibCuponsCLIENTEENDE: TIBStringField
      FieldName = 'CLIENTEENDE'
      Origin = 'CUPOM.CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object ibCuponsCLIENTECIDA: TIBStringField
      FieldName = 'CLIENTECIDA'
      Origin = 'CUPOM.CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object ibCuponsCLIEA60RAZAOSOC: TIBStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object ibNotas: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select n.*, c.cliea60razaosoc from NOTAFISCAL n '
      'left join cliente c on c.cliea13id = n.cliea13id '
      'where NOFIDEMIS >= :xDataIni and NOFIDEMIS <= :xDataFim')
    Left = 44
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xDataIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataFim'
        ParamType = ptUnknown
      end>
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
    Left = 180
    Top = 28
  end
  object ibItens: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 80
    Top = 32
  end
end
