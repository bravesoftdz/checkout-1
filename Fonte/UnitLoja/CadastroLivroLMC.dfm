inherited FormCadastroLivroLMC: TFormCadastroLivroLMC
  Left = 112
  Top = 72
  Caption = 'Cadastro de Livros para o LMC - Postos de Combust'#237'veis'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 57
            Height = 392
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 319
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 13
                Top = 11
                Width = 28
                Height = 13
                Caption = 'Livro'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 169
                Top = 11
                Width = 71
                Height = 13
                Caption = 'P'#225'gina Atual'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 255
                Top = 12
                Width = 65
                Height = 13
                Caption = 'P'#225'gina M'#225'x'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 341
                Top = 11
                Width = 67
                Height = 13
                Caption = 'Dt.Abertura'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 434
                Top = 11
                Width = 86
                Height = 13
                Caption = 'Dt.Fechamento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 81
                Top = 11
                Width = 75
                Height = 13
                Caption = 'P'#225'gina Inicial'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 9
                Top = 51
                Width = 173
                Height = 13
                Caption = 'Distribuidora com a qual opera'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 10
                Top = 24
                Width = 64
                Height = 21
                DataField = 'LILMICOD'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 165
                Top = 24
                Width = 83
                Height = 21
                DataField = 'LILMIPAGATUAL'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 251
                Top = 24
                Width = 83
                Height = 21
                DataField = 'LILMIPAGMAX'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBDataPromoIni: TDBDateEdit
                Left = 338
                Top = 24
                Width = 89
                Height = 21
                DataField = 'LILMDDTABERT'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 4
              end
              object DBDateEdit1: TDBDateEdit
                Left = 431
                Top = 24
                Width = 89
                Height = 21
                TabStop = False
                DataField = 'LILMDDTFECHA'
                DataSource = DSTemplate
                ReadOnly = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit5: TDBEdit
                Left = 77
                Top = 24
                Width = 83
                Height = 21
                DataField = 'LILMIPAGINI'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 9
                Top = 64
                Width = 512
                Height = 21
                DataField = 'LILMA60DISTRIB'
                DataSource = DSTemplate
                TabOrder = 6
              end
            end
          end
          inherited PanelMaster: TPanel
            Height = 16
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 9
              Top = 3
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 77
              Top = 16
              Width = 392
              Height = 21
              DropDownCount = 8
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRA60RAZAOSOC'
              LookupSource = DSSQLEmpresa
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object TermodeAbertura1: TMenuItem
      Caption = 'Termo de &Abertura'
      OnClick = TermodeAbertura1Click
    end
    object ermodeEncerramento1: TMenuItem
      Caption = 'Termo de &Encerramento'
      OnClick = ermodeEncerramento1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From LIVROLMC Where (%MFiltro)')
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.LIVROLMC.EMPRICOD'
    end
    object SQLTemplateLILMICOD: TIntegerField
      DisplayLabel = 'Livro N'#176
      DisplayWidth = 10
      FieldName = 'LILMICOD'
      Origin = 'DB.LIVROLMC.LILMICOD'
    end
    object SQLTemplateLILMIPAGATUAL: TIntegerField
      DisplayLabel = 'P'#225'g. Inicial'
      FieldName = 'LILMIPAGATUAL'
      Origin = 'DB.LIVROLMC.LILMIPAGATUAL'
    end
    object SQLTemplateLILMIPAGMAX: TIntegerField
      DisplayLabel = 'P'#225'g. Final'
      FieldName = 'LILMIPAGMAX'
      Origin = 'DB.LIVROLMC.LILMIPAGMAX'
    end
    object SQLTemplateLILMDDTABERT: TDateTimeField
      DisplayLabel = 'Data Abertura'
      FieldName = 'LILMDDTABERT'
      Origin = 'DB.LIVROLMC.LILMDDTABERT'
    end
    object SQLTemplateLILMDDTFECHA: TDateTimeField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'LILMDDTFECHA'
      Origin = 'DB.LIVROLMC.LILMDDTFECHA'
    end
    object SQLTemplateLILMIPAGINI: TIntegerField
      FieldName = 'LILMIPAGINI'
      Origin = 'DB.LIVROLMC.LILMIPAGINI'
    end
    object SQLTemplateLILMA60DISTRIB: TStringField
      FieldName = 'LILMA60DISTRIB'
      Origin = 'DB.LIVROLMC.LILMA60DISTRIB'
      Size = 60
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT EMPRICOD, EMPRA60RAZAOSOC, EMPRA14CGC, EMPRA20IE, '
      'EMPRA60END, EMPRA60BAI, EMPRA60CID, EMPRA2UF, EMPRA8CEP ,'
      'EMPRA20IMUNIC '
      'FROM EMPRESA'
      'ORDER BY EMPRA60RAZAOSOC')
    Macros = <>
    Left = 463
    Top = 2
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaEMPRA20IMUNIC: TStringField
      FieldName = 'EMPRA20IMUNIC'
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 491
    Top = 2
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
    UsaGerenciadorImpr = False
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
    Left = 144
    Top = 272
  end
  object SQLCapacidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Sum(TANQN2CAPACID) as Capacidade from tanque')
    Macros = <>
    Left = 536
    object SQLCapacidadeCAPACIDADE: TBCDField
      FieldName = 'CAPACIDADE'
      Origin = 'DB.TANQUE.TANQN2CAPACID'
      Precision = 15
      Size = 2
    end
  end
end
