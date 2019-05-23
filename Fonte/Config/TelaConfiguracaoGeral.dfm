inherited FormTelaConfiguracaoGeral: TFormTelaConfiguracaoGeral
  Left = -8
  Top = -8
  Width = 1382
  Height = 744
  Caption = 'Configura'#231#245'es Gerais'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1366
    Height = 706
    inherited PanelCentral: TPanel
      Width = 1362
      Height = 622
      ParentFont = False
      object Label1: TLabel [0]
        Left = 134
        Top = 4
        Width = 92
        Height = 13
        Caption = 'Empresa Padr'#227'o'
        FocusControl = ComboEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Height = 622
      end
      object ComboEmpresa: TRxDBLookupCombo
        Left = 134
        Top = 20
        Width = 460
        Height = 21
        DropDownCount = 8
        DataField = 'CFGEIEMPPADRAO'
        DataSource = DSSQLConfigGeral
        Enabled = False
        LookupField = 'EMPRICOD'
        LookupDisplay = 'EMPRA60RAZAOSOC'
        LookupSource = DSSQLEmpresa
        TabOrder = 1
      end
      object GroupBox4: TGroupBox
        Left = 135
        Top = 218
        Width = 460
        Height = 44
        Caption = ' Localiza'#231#227'o dos arquivos de relat'#243'rios '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object DBEdit11: TDBEdit
          Left = 3
          Top = 16
          Width = 433
          Height = 21
          DataField = 'CFGEA255PATHREPORT'
          DataSource = DSSQLConfigGeral
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object FilePath: TDirectoryEdit
          Left = 433
          Top = 16
          Width = 21
          Height = 21
          DialogKind = dkWin32
          BorderStyle = bsNone
          NumGlyphs = 1
          TabOrder = 1
          OnChange = FilePathChange
        end
      end
      object DBCheckBox1: TDBCheckBox
        Left = 134
        Top = 44
        Width = 316
        Height = 19
        Caption = 'Testar refer'#234'ncias repetidas no cadastro do produto'
        DataField = 'CFGECTESTREFPROD'
        DataSource = DSSQLConfigGeral
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 134
        Top = 64
        Width = 329
        Height = 18
        Caption = 'Testar c'#243'digo barras repetidos no cadastro do produto'
        DataField = 'CFGECTESTEANPROD'
        DataSource = DSSQLConfigGeral
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GroupBox1: TGroupBox
        Left = 135
        Top = 263
        Width = 460
        Height = 44
        Caption = 'Localiza'#231#227'o do aplicativo para impress'#227'o de duplicatas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ButtonDialog: TSpeedButton
          Left = 435
          Top = 16
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = ButtonDialogClick
        end
        object DBEdit4: TDBEdit
          Left = 3
          Top = 17
          Width = 431
          Height = 21
          DataField = 'CFGEA255EXEDUPLICATA'
          DataSource = DSSQLConfigGeral
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBCheckBox3: TDBCheckBox
        Left = 134
        Top = 82
        Width = 329
        Height = 18
        Caption = 'Controla Estoque por Lote'
        DataField = 'CFGECESTOQUEPORLOTE'
        DataSource = DSSQLConfigGeral
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 134
        Top = 118
        Width = 411
        Height = 18
        Caption = 
          'N'#227'o quero calcular pre'#231'os automaticamente no cadastro de produto' +
          's'
        DataField = 'CFGECALCPRECOAUTOM'
        DataSource = DSSQLConfigGeral
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'N'
        ValueUnchecked = 'S'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 134
        Top = 100
        Width = 329
        Height = 18
        Caption = 'Atualiza saldo di'#225'rio de estoque'
        DataField = 'CFGECATUSALDODIA'
        DataSource = DSSQLConfigGeral
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 135
        Top = 161
        Width = 460
        Height = 57
        Caption = 'Margem de lucro X pre'#231'o de venda'
        DataField = 'CFGECTIPOMARGLUCRO'
        DataSource = DSSQLConfigGeral
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Usar margem l'#237'quida para o c'#225'lculo do pre'#231'o de venda'
          'Usar margem bruta para o c'#225'lculo do pre'#231'o de venda')
        ParentFont = False
        TabOrder = 10
        Values.Strings = (
          'L'
          'B')
      end
      object GroupBox2: TGroupBox
        Left = 136
        Top = 308
        Width = 457
        Height = 105
        Caption = 'Opera'#231#227'o de Estoque para Transfer'#234'ncia de Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        object Label11: TLabel
          Left = 9
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Entrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 9
          Top = 58
          Width = 31
          Height = 13
          Caption = 'Sa'#237'da'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dblOpEntradaTransf: TRxDBLookupCombo
          Left = 7
          Top = 35
          Width = 314
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'OPESICODTRANSFENTR'
          DataSource = DSSQLConfigGeral
          DisplayEmpty = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESICOD;OPESA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 0
          OnChange = dblOpEntradaTransfChange
        end
        object dblOpSaidaTransf: TRxDBLookupCombo
          Left = 7
          Top = 72
          Width = 314
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'OPESICODTRANSFSAID'
          DataSource = DSSQLConfigGeral
          DisplayEmpty = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESICOD;OPESA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLOperacaoEstoque
          ParentFont = False
          TabOrder = 1
          OnChange = dblOpSaidaTransfChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 136
        Top = 418
        Width = 193
        Height = 45
        Caption = ' Ultimo Bonus p/Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        object DBEdit7: TDBEdit
          Left = 11
          Top = 17
          Width = 130
          Height = 21
          DataField = 'CFGEIULTBONUS'
          DataSource = DSSQLConfigGeral
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBCheckBox6: TDBCheckBox
        Left = 134
        Top = 137
        Width = 411
        Height = 18
        Caption = 'Solicitar troco na abertura do Caixa'
        DataField = 'SOLICITA_TROCO_ABERTURA'
        DataSource = DSSQLConfigGeral
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        ValueChecked = 'N'
        ValueUnchecked = 'S'
      end
      object GroupBox6: TGroupBox
        Left = 400
        Top = 418
        Width = 193
        Height = 45
        Caption = 'Dias Aviso Bloqueio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        object DBEdit2: TDBEdit
          Left = 11
          Top = 17
          Width = 130
          Height = 21
          DataField = 'DIAS_AVISO'
          DataSource = DSSQLConfigGeral
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1362
      inherited PanelCabecalho: TPanel
        Width = 1362
        inherited PanelNavigator: TPanel
          Width = 1362
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1362
            inherited BtnFecharTela: TSpeedButton
              Left = 494
            end
            object BotaoGravar: TSpeedButton
              Tag = 3
              Left = 131
              Top = 3
              Width = 66
              Height = 25
              Cursor = crHandPoint
              Hint = '[F9] - Gravar Registro Atual'
              Caption = '&Gravar'
              Enabled = False
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                C2040000424DC204000000000000420000002800000018000000180000000100
                1000030000008004000000000000000000000000000000000000007C0000E003
                00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F00000911742E4B199B6F524200000000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00006C19742E742E7B6BBD77D652
                7B6B313EA4100000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7F0000D746742E4B19DD77A50C95367B6F9C73D65A6B2100000000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000112EB63A742E185FDE7B2A197B6B
                9C739B6F7B6F313E742EA50C00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                0000D746742E742E4B193967DD77DD77BC739C73D6520911742E081185080000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ABD73BD73742E742E0811B552
                BD779C730821742E4B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                184FBD73DE7B304ADE77BD73742E742E0811E7146C19742E4B19742E0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ADD77DE7B304A00000000DE77BD73
                742E742E4B194B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001853
                BD73DE7B304ADE7BCD626339000000009B6FBD73742E742E742E0000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EF31D746DD77DE7B304ADE7BDE7B0000EC6AE845
                0000DE7BBD73742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000D7463957
                7C6BDE7BDE7B304ADE7BDE7B0000EC6AE8450000BD73742E0000FF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7F00000000B63A39575B63DE7BDE7BDE7BDE7B0000
                EC6AE8450000A50C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                000000005B6318535B63DE7BDE7BDE7B0000EC6AE8450000FF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000005B6318535B63DE7B
                DD770000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7F000000005B631853BD73742E0000EC6AE8450000FF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
                742EE71400000000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7F0000EC6AE8450000
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7F0000EC6A0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F}
              Margin = 0
              ParentFont = False
              Spacing = 1
              OnClick = BotaoGravarClick
            end
          end
        end
      end
    end
  end
  object SQLConfigGeral: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGGERAL')
    Left = 114
    Top = 11
    object SQLConfigGeralCFGECATIVAEXPORT: TStringField
      DisplayLabel = 'Ativar Exporta'#231#227'o'
      FieldName = 'CFGECATIVAEXPORT'
      Origin = 'DB.CONFIGGERAL.CFGECATIVAEXPORT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECATUSALDODIA: TStringField
      DisplayLabel = 'Atualizar Saldo Di'#225'rio'
      FieldName = 'CFGECATUSALDODIA'
      Origin = 'DB.CONFIGGERAL.CFGECATUSALDODIA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField
      FieldName = 'CFGEITIPMOVCONTENT'
      Origin = 'DB.CONFIGGERAL.CFGEITIPMOVCONTENT'
    end
    object SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField
      FieldName = 'CFGEITIPMOVCONTSAI'
      Origin = 'DB.CONFIGGERAL.CFGEITIPMOVCONTSAI'
    end
    object SQLConfigGeralCFGEA255PATHBLOQ: TStringField
      FieldName = 'CFGEA255PATHBLOQ'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHBLOQ'
      Size = 255
    end
    object SQLConfigGeralCFGECSETAREMPADREL: TStringField
      DisplayLabel = 'Sugerir Empresa Padr'#227'o Filtros Relat'#243'rios'
      FieldName = 'CFGECSETAREMPADREL'
      Origin = 'DB.CONFIGGERAL.CFGECSETAREMPADREL'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField
      DisplayLabel = 'Caminho Fotos de Clientes'
      FieldName = 'CFGEA255PATHFOTOCLI'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHFOTOCLI'
      Size = 255
    end
    object SQLConfigGeralCFGE1255PATHMALDIR: TStringField
      DisplayLabel = 'Caminhos Programa Mala Direta'
      FieldName = 'CFGE1255PATHMALDIR'
      Origin = 'DB.CONFIGGERAL.CFGE1255PATHMALDIR'
      Size = 255
    end
    object SQLConfigGeralCFGECDELARQTEMPREL: TStringField
      DisplayLabel = 'Apagar ARquivos Tempor'#225'rios de Relat'#243'rios'
      FieldName = 'CFGECDELARQTEMPREL'
      Origin = 'DB.CONFIGGERAL.CFGECDELARQTEMPREL'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField
      DisplayLabel = 'Caminho Logo Empresa'
      FieldName = 'CFGEA255PATHLOGOEMP'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHLOGOEMP'
      Size = 255
    end
    object SQLConfigGeralCFGECATUALSALDOMES: TStringField
      DisplayLabel = 'Atualizar Saldo Final do M'#234's'
      FieldName = 'CFGECATUALSALDOMES'
      Origin = 'DB.CONFIGGERAL.CFGECATUALSALDOMES'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECVALCODBARPROD: TStringField
      FieldName = 'CFGECVALCODBARPROD'
      Origin = 'DB.CONFIGGERAL.CFGECVALCODBARPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECVALCODANTPRO: TStringField
      FieldName = 'CFGECVALCODANTPRO'
      Origin = 'DB.CONFIGGERAL.CFGECVALCODANTPRO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECVALREFPROD: TStringField
      FieldName = 'CFGECVALREFPROD'
      Origin = 'DB.CONFIGGERAL.CFGECVALREFPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECBASEPRCVENDA: TStringField
      FieldName = 'CFGECBASEPRCVENDA'
      Origin = 'DB.CONFIGGERAL.CFGECBASEPRCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEIEMPPADRAO: TIntegerField
      DisplayLabel = 'Empresa Padr'#227'o'
      FieldName = 'CFGEIEMPPADRAO'
      Origin = 'DB.CONFIGGERAL.CFGEIEMPPADRAO'
    end
    object SQLConfigGeralCFGEA60HOSTSMTP: TStringField
      FieldName = 'CFGEA60HOSTSMTP'
      Origin = 'DB.CONFIGGERAL.CFGEA60HOSTSMTP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60ENDRETSMTP: TStringField
      FieldName = 'CFGEA60ENDRETSMTP'
      Origin = 'DB.CONFIGGERAL.CFGEA60ENDRETSMTP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField
      FieldName = 'CFGEA60ENDHOSTPOP'
      Origin = 'DB.CONFIGGERAL.CFGEA60ENDHOSTPOP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField
      FieldName = 'CFGEA60NOMEUSERPOP'
      Origin = 'DB.CONFIGGERAL.CFGEA60NOMEUSERPOP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60SENHAPOP: TStringField
      FieldName = 'CFGEA60SENHAPOP'
      Origin = 'DB.CONFIGGERAL.CFGEA60SENHAPOP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCGGEA30VERSAO: TStringField
      DisplayLabel = 'Vers'#227'o Sistema'
      FieldName = 'CGGEA30VERSAO'
      Origin = 'DB.CONFIGGERAL.CGGEA30VERSAO'
      FixedChar = True
      Size = 30
    end
    object SQLConfigGeralCFGEA255PATHVERSAO: TStringField
      DisplayLabel = 'Caminho Nova Vers'#227'o'
      FieldName = 'CFGEA255PATHVERSAO'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHVERSAO'
      Size = 255
    end
    object SQLConfigGeralCFGEA255PATHETIBAR: TStringField
      DisplayLabel = 'Caminho Programa Etiquetas C'#243'digo de Barras'
      FieldName = 'CFGEA255PATHETIBAR'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHETIBAR'
      Size = 255
    end
    object SQLConfigGeralCFGEA255PATHREPORT: TStringField
      FieldName = 'CFGEA255PATHREPORT'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHREPORT'
      FixedChar = True
      Size = 255
    end
    object SQLConfigGeralCFGECTROCAEMPLOGON: TStringField
      FieldName = 'CFGECTROCAEMPLOGON'
      Origin = 'DB.CONFIGGERAL.CFGECTROCAEMPLOGON'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECTESTEANPROD: TStringField
      FieldName = 'CFGECTESTEANPROD'
      Origin = 'DB.CONFIGGERAL.CFGECTESTEANPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECTESTREFPROD: TStringField
      FieldName = 'CFGECTESTREFPROD'
      Origin = 'DB.CONFIGGERAL.CFGECTESTREFPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField
      FieldName = 'CFGEA255EXEDUPLICATA'
      Origin = 'DB.CONFIGGERAL.CFGEA255EXEDUPLICATA'
      FixedChar = True
      Size = 255
    end
    object SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField
      FieldName = 'CFGECESTOQUEPORLOTE'
      Origin = 'DB.CONFIGGERAL.CFGECESTOQUEPORLOTE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECALCPRECOAUTOM: TStringField
      FieldName = 'CFGECALCPRECOAUTOM'
      Origin = 'DB.CONFIGGERAL.CFGECALCPRECOAUTOM'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECUSASALDODIARIO: TStringField
      FieldName = 'CFGECUSASALDODIARIO'
      Origin = 'DB.CONFIGGERAL.CFGECUSASALDODIARIO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField
      FieldName = 'CFGECTIPOMARGLUCRO'
      Origin = 'DB.CONFIGGERAL.CFGECTIPOMARGLUCRO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralOPESICODTRANSFENTR: TIntegerField
      FieldName = 'OPESICODTRANSFENTR'
      Origin = 'DB.CONFIGGERAL.OPESICODTRANSFENTR'
    end
    object SQLConfigGeralOPESICODTRANSFSAID: TIntegerField
      FieldName = 'OPESICODTRANSFSAID'
      Origin = 'DB.CONFIGGERAL.OPESICODTRANSFSAID'
    end
    object SQLConfigGeralCFGEIULTBONUS: TIntegerField
      FieldName = 'CFGEIULTBONUS'
      Origin = 'DB.CONFIGGERAL.CFGEIULTBONUS'
    end
    object SQLConfigGeralSOLICITA_TROCO_ABERTURA: TStringField
      FieldName = 'SOLICITA_TROCO_ABERTURA'
      Origin = 'DB.CONFIGGERAL.SOLICITA_TROCO_ABERTURA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralDIAS_AVISO: TIntegerField
      FieldName = 'DIAS_AVISO'
      Origin = 'DB.CONFIGGERAL.DIAS_AVISO'
    end
  end
  object DSSQLConfigGeral: TDataSource
    DataSet = SQLConfigGeral
    OnDataChange = DSSQLConfigGeralDataChange
    Left = 142
    Top = 11
  end
  object SQLEmpresa: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'order by EMPRICOD')
    Left = 210
    Top = 11
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
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 242
    Top = 11
  end
  object Dialog: TOpenDialog
    DefaultExt = '*.exe'
    Filter = 'Executaveis|*.exe'
    InitialDir = 'C:\Unti\Gestao'
    Left = 603
    Top = 333
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Macros = <>
    Left = 282
    Top = 7
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      DisplayWidth = 4
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      DisplayWidth = 60
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 310
    Top = 7
  end
end
