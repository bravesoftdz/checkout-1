object FrmMapaResumo: TFrmMapaResumo
  Left = 349
  Top = 249
  Width = 348
  Height = 174
  Caption = 'Mapa Resumo'
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
    Left = 88
    Top = 47
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
  object Label2: TLabel
    Left = 4
    Top = 4
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
  object edtDataini: TDateEdit
    Left = 88
    Top = 64
    Width = 116
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object edtDataFim: TDateEdit
    Left = 216
    Top = 64
    Width = 116
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 92
    Top = 120
    Width = 157
    Height = 25
    Caption = 'Visualizar Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
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
    Left = 256
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Kind = bkClose
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 3
    Top = 20
    Width = 330
    Height = 21
    KeyField = 'EMPRICOD'
    ListField = 'EMPRA60RAZAOSOC'
    ListSource = dtsEmpresa
    TabOrder = 0
    OnEnter = DBLookupComboBox2Enter
  end
  object CheckCabeca: TCheckBox
    Left = 88
    Top = 96
    Width = 245
    Height = 17
    Caption = 'Imprimir Cabe'#231'alho em todas as p'#225'ginas'
    TabOrder = 5
  end
  object ibMapa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from REDUCAOZDIA where (REDUDEMIS >= :xDataIni) and (RE' +
        'DUDEMIS <= :xDataFim) order by REDUDEMIS, ECFA13ID')
    Left = 272
    Top = 48
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
    object ibMapaREDUDEMIS: TDateTimeField
      FieldName = 'REDUDEMIS'
      Origin = 'REDUCAOZDIA.REDUDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object ibMapaREDUN3ALIQ1: TFloatField
      FieldName = 'REDUN3ALIQ1'
      Origin = 'REDUCAOZDIA.REDUN3ALIQ1'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3BASE1: TFloatField
      FieldName = 'REDUN3BASE1'
      Origin = 'REDUCAOZDIA.REDUN3BASE1'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3IMPO1: TFloatField
      FieldName = 'REDUN3IMPO1'
      Origin = 'REDUCAOZDIA.REDUN3IMPO1'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3ALIQ2: TFloatField
      FieldName = 'REDUN3ALIQ2'
      Origin = 'REDUCAOZDIA.REDUN3ALIQ2'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3BASE2: TFloatField
      FieldName = 'REDUN3BASE2'
      Origin = 'REDUCAOZDIA.REDUN3BASE2'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3IMPO2: TFloatField
      FieldName = 'REDUN3IMPO2'
      Origin = 'REDUCAOZDIA.REDUN3IMPO2'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3ALIQ3: TFloatField
      FieldName = 'REDUN3ALIQ3'
      Origin = 'REDUCAOZDIA.REDUN3ALIQ3'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3BASE3: TFloatField
      FieldName = 'REDUN3BASE3'
      Origin = 'REDUCAOZDIA.REDUN3BASE3'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3IMPO3: TFloatField
      FieldName = 'REDUN3IMPO3'
      Origin = 'REDUCAOZDIA.REDUN3IMPO3'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3ALIQ4: TFloatField
      FieldName = 'REDUN3ALIQ4'
      Origin = 'REDUCAOZDIA.REDUN3ALIQ4'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3BASE4: TFloatField
      FieldName = 'REDUN3BASE4'
      Origin = 'REDUCAOZDIA.REDUN3BASE4'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3IMPO4: TFloatField
      FieldName = 'REDUN3IMPO4'
      Origin = 'REDUCAOZDIA.REDUN3IMPO4'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3ALIQ5: TFloatField
      FieldName = 'REDUN3ALIQ5'
      Origin = 'REDUCAOZDIA.REDUN3ALIQ5'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3BASE5: TFloatField
      FieldName = 'REDUN3BASE5'
      Origin = 'REDUCAOZDIA.REDUN3BASE5'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3IMPO5: TFloatField
      FieldName = 'REDUN3IMPO5'
      Origin = 'REDUCAOZDIA.REDUN3IMPO5'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3ALIQ6: TFloatField
      FieldName = 'REDUN3ALIQ6'
      Origin = 'REDUCAOZDIA.REDUN3ALIQ6'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3BASE6: TFloatField
      FieldName = 'REDUN3BASE6'
      Origin = 'REDUCAOZDIA.REDUN3BASE6'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3IMPO6: TFloatField
      FieldName = 'REDUN3IMPO6'
      Origin = 'REDUCAOZDIA.REDUN3IMPO6'
      DisplayFormat = ',0.00'
    end
    object ibMapaREDUN3VENDABRUTA: TFloatField
      FieldName = 'REDUN3VENDABRUTA'
      Origin = 'REDUCAOZDIA.REDUN3VENDABRUTA'
    end
    object ibMapaREDUN3GRANDETOTAL: TFloatField
      FieldName = 'REDUN3GRANDETOTAL'
      Origin = 'REDUCAOZDIA.REDUN3GRANDETOTAL'
    end
    object ibMapaREDUA13ID: TIBStringField
      FieldName = 'REDUA13ID'
      Origin = 'REDUCAOZDIA.REDUA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object ibMapaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'REDUCAOZDIA.EMPRICOD'
      Required = True
    end
    object ibMapaREDUICOD: TIntegerField
      FieldName = 'REDUICOD'
      Origin = 'REDUCAOZDIA.REDUICOD'
      Required = True
    end
    object ibMapaECFA13ID: TIBStringField
      FieldName = 'ECFA13ID'
      Origin = 'REDUCAOZDIA.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object ibMapaREDUICONTINICIAL: TIntegerField
      FieldName = 'REDUICONTINICIAL'
      Origin = 'REDUCAOZDIA.REDUICONTINICIAL'
    end
    object ibMapaREDUICONTFINAL: TIntegerField
      FieldName = 'REDUICONTFINAL'
      Origin = 'REDUCAOZDIA.REDUICONTFINAL'
    end
    object ibMapaREDUICONTREDUZ: TIntegerField
      FieldName = 'REDUICONTREDUZ'
      Origin = 'REDUCAOZDIA.REDUICONTREDUZ'
    end
    object ibMapaREDUICONTREINICIO: TIntegerField
      FieldName = 'REDUICONTREINICIO'
      Origin = 'REDUCAOZDIA.REDUICONTREINICIO'
    end
    object ibMapaREDUN3ISSQN: TFloatField
      FieldName = 'REDUN3ISSQN'
      Origin = 'REDUCAOZDIA.REDUN3ISSQN'
    end
    object ibMapaREDUN3SUBST: TFloatField
      FieldName = 'REDUN3SUBST'
      Origin = 'REDUCAOZDIA.REDUN3SUBST'
    end
    object ibMapaREDUN3BASEISS: TFloatField
      FieldName = 'REDUN3BASEISS'
      Origin = 'REDUCAOZDIA.REDUN3BASEISS'
    end
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
    Left = 300
    Top = 48
  end
  object ibEmpresa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Empresa')
    Left = 160
    Top = 24
  end
  object dtsEmpresa: TDataSource
    DataSet = ibEmpresa
    Left = 200
    Top = 24
  end
end
