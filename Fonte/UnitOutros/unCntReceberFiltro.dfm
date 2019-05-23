object FormCntReceberFiltro: TFormCntReceberFiltro
  Left = 237
  Top = 193
  Width = 538
  Height = 338
  Caption = 'Relat'#243'rio Resumido de Contas a Receber'
  Color = 12572888
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 77
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
  object Label2: TLabel
    Left = 36
    Top = 36
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
  object Label3: TLabel
    Left = 36
    Top = 160
    Width = 138
    Height = 13
    Caption = 'Vencidas no Per'#237'odo de'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 144
    Top = 183
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
    Left = 36
    Top = 120
    Width = 163
    Height = 13
    Caption = 'Todos os Clientes da Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 36
    Top = 93
    Width = 461
    Height = 21
    KeyField = 'CLIEA13ID'
    ListField = 'CLIEA60RAZAOSOC'
    ListSource = dtsLocalcli
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 36
    Top = 52
    Width = 461
    Height = 21
    KeyField = 'EMPRICOD'
    ListField = 'EMPRA60RAZAOSOC'
    ListSource = dtsEmpresa
    TabOrder = 0
  end
  object Dataini: TDateEdit
    Left = 36
    Top = 179
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object datafim: TDateEdit
    Left = 164
    Top = 179
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 316
    Top = 209
    Width = 180
    Height = 49
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
      000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
      0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
      7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
      0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
      0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
      FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
      DDDDDDDDDDDDDDDD0000}
  end
  object BitBtn2: TBitBtn
    Left = 316
    Top = 172
    Width = 180
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Kind = bkClose
  end
  object ProgressBar1: TProgressBar
    Left = 35
    Top = 272
    Width = 461
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 9
  end
  object CheckBox1: TCheckBox
    Left = 36
    Top = 209
    Width = 273
    Height = 17
    Caption = 'Relat'#243'rio Resumido ( Cliente x D'#233'bito) '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object CheckFatura: TCheckBox
    Left = 36
    Top = 228
    Width = 269
    Height = 17
    Caption = 'Gerar Fatura de Cobran'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = -215
    Top = 292
    Width = 973
    Height = 345
    Lines.Strings = (
      'Memo1')
    TabOrder = 10
    Visible = False
  end
  object ComboCidade: TDBLookupComboBox
    Left = 36
    Top = 136
    Width = 461
    Height = 21
    KeyField = 'CLIEA60CIDRES'
    ListField = 'CLIEA60CIDRES'
    ListSource = dtsCidade
    TabOrder = 2
  end
  object CheckJuros: TCheckBox
    Left = 36
    Top = 246
    Width = 269
    Height = 17
    Caption = 'Calcular Juros Automaticamente'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 11
  end
  object ibLocalCli: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select CLIEA13ID, CLIEA60RAZAOSOC, CLIEA15FONE1, CLIEA15FONE2, C' +
        'LIEA60ENDRES, CLIEA60CIDRES, CLIEA60BAIRES from cliente order by' +
        ' cliea60razaosoc')
    Left = 152
    Top = 60
  end
  object dtsLocalcli: TDataSource
    DataSet = ibLocalCli
    Left = 192
    Top = 60
  end
  object ibEmpresa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Empresa')
    Left = 260
    Top = 60
    object ibEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'EMPRESA.EMPRICOD'
      Required = True
    end
    object ibEmpresaEMPRA60RAZAOSOC: TIBStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaEMPRA60NOMEFANT: TIBStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaEMPRCMATRIZFILIAL: TIBStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaEMPRA20FONE: TIBStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object ibEmpresaEMPRA20FAX: TIBStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object ibEmpresaEMPRA60END: TIBStringField
      FieldName = 'EMPRA60END'
      Origin = 'EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaEMPRA60BAI: TIBStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaEMPRA60CID: TIBStringField
      FieldName = 'EMPRA60CID'
      Origin = 'EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaEMPRA2UF: TIBStringField
      FieldName = 'EMPRA2UF'
      Origin = 'EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object ibEmpresaEMPRA8CEP: TIBStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object ibEmpresaEMPRCFISJURID: TIBStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaEMPRA14CGC: TIBStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object ibEmpresaEMPRA20IE: TIBStringField
      FieldName = 'EMPRA20IE'
      Origin = 'EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object ibEmpresaEMPRA11CPF: TIBStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object ibEmpresaEMPRA10RG: TIBStringField
      FieldName = 'EMPRA10RG'
      Origin = 'EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object ibEmpresaEMPRA60EMAIL: TIBStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaEMPRA60URL: TIBStringField
      FieldName = 'EMPRA60URL'
      Origin = 'EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaPENDENTE: TIBStringField
      FieldName = 'PENDENTE'
      Origin = 'EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'EMPRESA.REGISTRO'
    end
    object ibEmpresaEMPRA100INFSPC: TIBStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object ibEmpresaEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'EMPRESA.EMPRBLOGOTIPO'
      Size = 8
    end
    object ibEmpresaEMPRA15CODEAN: TIBStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object ibEmpresaEMPRA60CONTATO: TIBStringField
      FieldName = 'EMPRA60CONTATO'
      Origin = 'EMPRESA.EMPRA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaEMPRA20IMUNIC: TIBStringField
      FieldName = 'EMPRA20IMUNIC'
      Origin = 'EMPRESA.EMPRA20IMUNIC'
    end
    object ibEmpresaEMPRCLUCROREAL: TIBStringField
      FieldName = 'EMPRCLUCROREAL'
      Origin = 'EMPRESA.EMPRCLUCROREAL'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaEMPRN2VLRFUNDOPROMO: TFloatField
      FieldName = 'EMPRN2VLRFUNDOPROMO'
      Origin = 'EMPRESA.EMPRN2VLRFUNDOPROMO'
    end
    object ibEmpresaEMPRA15REGJUNTA: TIBStringField
      FieldName = 'EMPRA15REGJUNTA'
      Origin = 'EMPRESA.EMPRA15REGJUNTA'
      FixedChar = True
      Size = 15
    end
    object ibEmpresaNOMETECNICOAGRIC: TIBStringField
      FieldName = 'NOMETECNICOAGRIC'
      Origin = 'EMPRESA.NOMETECNICOAGRIC'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaENDTECNICOAGRIC: TIBStringField
      FieldName = 'ENDTECNICOAGRIC'
      Origin = 'EMPRESA.ENDTECNICOAGRIC'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaCIDTECNICOAGRIC: TIBStringField
      FieldName = 'CIDTECNICOAGRIC'
      Origin = 'EMPRESA.CIDTECNICOAGRIC'
      FixedChar = True
      Size = 60
    end
    object ibEmpresaCPFTECNICOAGRIC: TIBStringField
      FieldName = 'CPFTECNICOAGRIC'
      Origin = 'EMPRESA.CPFTECNICOAGRIC'
      FixedChar = True
    end
    object ibEmpresaCREATECNICOAGRIC: TIBStringField
      FieldName = 'CREATECNICOAGRIC'
      Origin = 'EMPRESA.CREATECNICOAGRIC'
      FixedChar = True
    end
    object ibEmpresaSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = 'EMPRESA.SERIE'
      FixedChar = True
      Size = 15
    end
    object ibEmpresaARTIGO: TIBStringField
      FieldName = 'ARTIGO'
      Origin = 'EMPRESA.ARTIGO'
      FixedChar = True
      Size = 10
    end
    object ibEmpresaNRORECEITATUAL: TIntegerField
      FieldName = 'NRORECEITATUAL'
      Origin = 'EMPRESA.NRORECEITATUAL'
    end
    object ibEmpresaNRORECEITAULT: TIntegerField
      FieldName = 'NRORECEITAULT'
      Origin = 'EMPRESA.NRORECEITAULT'
    end
  end
  object dtsEmpresa: TDataSource
    DataSet = ibEmpresa
    Left = 300
    Top = 60
  end
  object ibCntReceber: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsLocalcli
    Left = 356
    Top = 60
  end
  object dtsCntReceber: TDataSource
    DataSet = ibCntReceber
    Left = 396
    Top = 60
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
    Left = 272
    Top = 172
  end
  object ibCidade: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Distinct(CLIEA60CIDRES) from cliente')
    Left = 256
    Top = 108
  end
  object dtsCidade: TDataSource
    DataSet = ibCidade
    Left = 296
    Top = 108
  end
  object IBSQL1: TIBSQL
    Database = DM.IBDatabase
    ParamCheck = True
    SQL.Strings = (
      'select * from CONFIGCREDIARIO')
    Transaction = DM.ibTrans
    Left = 340
    Top = 112
  end
end
