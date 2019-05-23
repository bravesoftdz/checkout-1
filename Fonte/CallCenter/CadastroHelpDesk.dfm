inherited FormCadastroHelpDesk: TFormCadastroHelpDesk
  Left = 234
  Top = 123
  Caption = 'Atendimento Help-Desk'
  ClientHeight = 530
  ClientWidth = 756
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 756
    Height = 530
    inherited PanelCabecalho: TPanel
      Width = 754
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 754
        inherited Panel1: TPanel
          Width = 752
          inherited PanelNavigator: TPanel
            Width = 752
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 752
            end
          end
          inherited PanelLeft: TPanel
            Left = 295
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 754
      Height = 456
      inherited PanelBarra: TPanel
        Height = 456
        inherited Button3: TRxSpeedButton
          Caption = '&3 Hist'#243'rico Cliente'
          Visible = True
          OnClick = Button3Click
        end
        object LabelTempo: TLabel
          Left = 0
          Top = 75
          Width = 84
          Height = 29
          Alignment = taCenter
          Caption = 'Tempo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 624
        Height = 456
        inherited Panel5: TPanel
          Width = 624
          Height = 456
          inherited PagePrincipal: TPageControl
            Top = 78
            Width = 624
            Height = 378
            ActivePage = TabSheetHistorico
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 616
                Height = 305
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'HELPA13ID'
                    Title.Caption = 'ID Atendimento'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60RAZAOSOC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPCCONTATO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPDINICIO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPDTERMINO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPCTIPO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPHPICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPCNIVEL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPDINICIO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPTSOLICITACAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HELPTSOLUCAO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 616
                inherited PanelBetween: TPanel
                  Width = 222
                  inherited AdvPanel1: TAdvPanel
                    Width = 222
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 222
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 222
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
              object SplitterDeBaixo: TSplitter
                Left = 0
                Top = 121
                Width = 616
                Height = 5
                Cursor = crVSplit
                Align = alTop
                Beveled = True
                ResizeStyle = rsUpdate
              end
              object PanelSolicitacao: TPanel
                Left = 0
                Top = 0
                Width = 616
                Height = 121
                Align = alTop
                Color = 15461355
                TabOrder = 0
                object SplitterDeCima: TSplitter
                  Left = 1
                  Top = 89
                  Width = 614
                  Height = 5
                  Cursor = crVSplit
                  Align = alTop
                  AutoSnap = False
                  Beveled = True
                end
                object PainelPesquisa: TPanel
                  Left = 1
                  Top = 94
                  Width = 614
                  Height = 26
                  Align = alClient
                  Color = 15461355
                  TabOrder = 1
                  object PanelDadosPesquisa: TPanel
                    Left = 1
                    Top = 1
                    Width = 612
                    Height = 24
                    Align = alClient
                    BevelOuter = bvNone
                    Color = 15461355
                    TabOrder = 0
                    object DBGridResultPesquisa: TDBGrid
                      Left = 0
                      Top = 25
                      Width = 612
                      Height = 0
                      Cursor = crHandPoint
                      Align = alClient
                      BorderStyle = bsNone
                      DataSource = DSSQLHelp
                      FixedColor = 16767449
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                      ParentColor = True
                      ParentFont = False
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = [fsBold]
                      OnDblClick = DBGridResultPesquisaDblClick
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'HELPCPERGUNTACHAVE'
                          Title.Caption = 'Palavra Chave'
                          Width = 200
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'PRODA60DESCR'
                          Title.Caption = 'Produto'
                          Width = 143
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'HELPCNIVEL'
                          Title.Caption = 'Nivel'
                          Width = 130
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'REGISTRO'
                          Title.Caption = 'Data Registro'
                          Width = 133
                          Visible = True
                        end>
                    end
                    object Panel6: TPanel
                      Left = 0
                      Top = 0
                      Width = 612
                      Height = 25
                      Align = alTop
                      BevelOuter = bvNone
                      Color = 15461355
                      TabOrder = 0
                      object BtPesuisaOK: TSpeedButton
                        Left = 304
                        Top = 1
                        Width = 34
                        Height = 22
                        Cursor = crHandPoint
                        Caption = 'OK'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        OnClick = BtPesuisaOKClick
                      end
                      object Label9: TLabel
                        Left = 0
                        Top = 4
                        Width = 117
                        Height = 13
                        Caption = 'Chave Para Pesquisa'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object BtEsconder: TSpeedButton
                        Left = 344
                        Top = 0
                        Width = 96
                        Height = 23
                        Cursor = crHandPoint
                        Caption = 'Esconder'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Glyph.Data = {
                          A2010000424DA201000000000000760000002800000018000000190000000100
                          0400000000002C01000000000000000000001000000000000000000000000000
                          8000008000000080800080000000800080008080000080808000C0C0C0000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                          AAAAAAAAAAAAAAAAAAAA00AAAAAAAAAAAAAAAAAAAA0020AAAAAAAAAAAAAAAAAA
                          003770AAAAAAAAAAAAAAAA00377770AAAAAAAAAAAAAA0027777770AAAAAAAAAA
                          AA007777777770AAAAAAAAAA00277777777770AAAAAAAAAA008FF88FFFFF80AA
                          AAAAAAAAAA008FFFFFFF80AAAAAAAAAAAAAA008FFFFF80AAAAAAAAAAAAAAAA00
                          FFFF80AAAAAAAAAAAAAAAAAA00FF80AAAAAAAAAAAAAAAAAAAA0080AAAAAAAAAA
                          AAAAAAAAAAAA00AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                          AAAAAAAAAAAA}
                        ParentFont = False
                        Visible = False
                        OnClick = BtEsconderClick
                      end
                      object CheckTipoPesquisa: TCheckBox
                        Left = 448
                        Top = 3
                        Width = 89
                        Height = 17
                        Cursor = crHandPoint
                        Caption = 'Busca Exata'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 1
                      end
                      object PesquisaPalavra: TEdit
                        Left = 123
                        Top = 1
                        Width = 181
                        Height = 21
                        CharCase = ecUpperCase
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                        OnKeyDown = PesquisaPalavraKeyDown
                      end
                    end
                  end
                end
                object PainelSolicitacao: TPanel
                  Left = 1
                  Top = 1
                  Width = 614
                  Height = 88
                  Align = alTop
                  Caption = 'PainelSolicitacao'
                  Color = 15461355
                  TabOrder = 0
                  object Label3: TLabel
                    Left = 1
                    Top = 1
                    Width = 61
                    Height = 13
                    Align = alTop
                    Caption = 'Solicita'#231#227'o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object MemoSolicitacao: TDBMemo
                    Left = 1
                    Top = 14
                    Width = 612
                    Height = 73
                    Align = alClient
                    DataField = 'HELPTSOLICITACAO'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                end
              end
              object PanelBottom: TPanel
                Left = 0
                Top = 280
                Width = 616
                Height = 72
                Align = alBottom
                BevelOuter = bvNone
                Color = 15461355
                TabOrder = 2
                object Label6: TLabel
                  Left = 3
                  Top = 3
                  Width = 90
                  Height = 13
                  Caption = 'Pergunta Chave'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 350
                  Top = 3
                  Width = 101
                  Height = 13
                  Caption = 'Tipo Atendimento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object MemoPergunta: TDBMemo
                  Left = 3
                  Top = 18
                  Width = 343
                  Height = 43
                  DataField = 'HELPCPERGUNTACHAVE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
                object ComboTipoHelp: TRxDBLookupCombo
                  Left = 350
                  Top = 18
                  Width = 204
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'TPHPICOD'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'TPHPICOD'
                  LookupDisplay = 'TPHPA60DESCR'
                  LookupSource = DSSQLTipoHelp
                  ParentFont = False
                  TabOrder = 1
                  OnKeyDown = DBComboProdutoKeyDown
                end
              end
              object Panel4: TPanel
                Left = 0
                Top = 126
                Width = 616
                Height = 154
                Align = alClient
                Caption = 'Panel4'
                TabOrder = 1
                object PainelSolucao: TPanel
                  Left = 1
                  Top = 1
                  Width = 614
                  Height = 152
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'PainelSolucao'
                  TabOrder = 0
                  object PanelSolucao: TPanel
                    Left = 0
                    Top = 0
                    Width = 431
                    Height = 152
                    Align = alClient
                    BevelOuter = bvNone
                    Color = 15461355
                    TabOrder = 0
                    object Label4: TLabel
                      Left = 0
                      Top = 0
                      Width = 44
                      Height = 13
                      Align = alTop
                      Caption = 'Solu'#231#227'o'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object MemoSolucao: TDBMemo
                      Left = 0
                      Top = 13
                      Width = 431
                      Height = 131
                      Align = alClient
                      DataField = 'HELPTSOLUCAO'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ScrollBars = ssVertical
                      TabOrder = 0
                    end
                  end
                  object PainelPrioridadeNivel: TPanel
                    Left = 431
                    Top = 0
                    Width = 183
                    Height = 152
                    Align = alRight
                    BevelOuter = bvNone
                    Color = 15461355
                    TabOrder = 1
                    object Label8: TLabel
                      Left = 9
                      Top = 1
                      Width = 27
                      Height = 13
                      Caption = 'N'#237'vel'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBComboNivelHelp: TRxDBComboBox
                      Left = 8
                      Top = 14
                      Width = 169
                      Height = 21
                      Cursor = crHandPoint
                      Style = csDropDownList
                      DataField = 'HELPCNIVEL'
                      DataSource = DSTemplate
                      EnableValues = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ItemHeight = 13
                      Items.Strings = (
                        'Suporte'
                        'T'#233'cnico'
                        'Desenvolvimento')
                      ParentFont = False
                      TabOrder = 0
                      Values.Strings = (
                        'S'
                        'T'
                        'D')
                    end
                  end
                end
              end
            end
            object TabSheetHistorico: TTabSheet
              ImageIndex = 2
              object DBCtrlGrid: TDBCtrlGrid
                Left = 0
                Top = 21
                Width = 616
                Height = 331
                Align = alClient
                DataSource = dsSQLHistorico
                PanelBorder = gbNone
                PanelHeight = 165
                PanelWidth = 599
                TabOrder = 0
                RowCount = 2
                object pnDBControlClient: TPanel
                  Left = 0
                  Top = 0
                  Width = 599
                  Height = 165
                  Align = alClient
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  object pnDBControlBottom: TPanel
                    Left = 0
                    Top = 0
                    Width = 599
                    Height = 22
                    Align = alTop
                    BevelInner = bvLowered
                    ParentColor = True
                    TabOrder = 0
                    object Label15: TLabel
                      Left = 4
                      Top = 4
                      Width = 31
                      Height = 13
                      Caption = 'Inicio'
                      FocusControl = DBEdit2
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label16: TLabel
                      Left = 145
                      Top = 4
                      Width = 47
                      Height = 13
                      Caption = 'T'#233'rmino'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label12: TLabel
                      Left = 307
                      Top = 4
                      Width = 52
                      Height = 13
                      Caption = 'Tipo Help'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBEdit2: TDBEdit
                      Left = 38
                      Top = 4
                      Width = 104
                      Height = 16
                      BorderStyle = bsNone
                      Ctl3D = True
                      DataField = 'HELPDINICIO'
                      DataSource = dsSQLHistorico
                      ParentColor = True
                      ParentCtl3D = False
                      ReadOnly = True
                      TabOrder = 0
                    end
                    object DBEdit3: TDBEdit
                      Left = 195
                      Top = 4
                      Width = 104
                      Height = 16
                      BorderStyle = bsNone
                      Ctl3D = True
                      DataField = 'HELPDTERMINO'
                      DataSource = dsSQLHistorico
                      ParentColor = True
                      ParentCtl3D = False
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object DBEdit4: TDBEdit
                      Left = 363
                      Top = 4
                      Width = 137
                      Height = 16
                      BorderStyle = bsNone
                      Color = 15461355
                      DataField = 'TPHPA60DESCR'
                      DataSource = dsSQLHistorico
                      ReadOnly = True
                      TabOrder = 2
                    end
                  end
                  object Panel7: TPanel
                    Left = 305
                    Top = 22
                    Width = 294
                    Height = 143
                    Align = alClient
                    BevelOuter = bvNone
                    Caption = 'Panel7'
                    ParentColor = True
                    TabOrder = 1
                    object Label11: TLabel
                      Left = 0
                      Top = 0
                      Width = 294
                      Height = 13
                      Align = alTop
                      Caption = 'Solu'#231#227'o'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBMemo2: TDBMemo
                      Left = 0
                      Top = 13
                      Width = 294
                      Height = 130
                      Align = alClient
                      Color = 16514043
                      Ctl3D = False
                      DataField = 'HELPTSOLUCAO'
                      DataSource = dsSQLHistorico
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      ReadOnly = True
                      ScrollBars = ssVertical
                      TabOrder = 0
                    end
                  end
                  object Panel8: TPanel
                    Left = 0
                    Top = 22
                    Width = 305
                    Height = 143
                    Align = alLeft
                    BevelOuter = bvNone
                    Caption = 'Panel8'
                    ParentColor = True
                    TabOrder = 2
                    object Label10: TLabel
                      Left = 0
                      Top = 0
                      Width = 305
                      Height = 13
                      Align = alTop
                      Caption = 'Solicita'#231#227'o'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBMemo1: TDBMemo
                      Left = 0
                      Top = 13
                      Width = 305
                      Height = 130
                      Align = alClient
                      Color = 16514043
                      Ctl3D = False
                      DataField = 'HELPTSOLICITACAO'
                      DataSource = dsSQLHistorico
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      ReadOnly = True
                      ScrollBars = ssVertical
                      TabOrder = 0
                    end
                  end
                end
              end
              object pnTop: TPanel
                Left = 0
                Top = 0
                Width = 616
                Height = 21
                Align = alTop
                ParentColor = True
                TabOrder = 1
                object btnLinhaUp: TSpeedButton
                  Left = 48
                  Top = 3
                  Width = 49
                  Height = 16
                  Cursor = crHandPoint
                  Flat = True
                  Glyph.Data = {
                    2A020000424D2A020000000000002A0100002800000010000000100000000100
                    08000000000000010000430B0000430B00003D0000003D000000A1400B004050
                    58009860580031486000EAAB6A00A17373008F7B7300B67B7300A1847300AB84
                    7300AB7B7B00B67B7B00B6847B00C0987B00F4C07B00B68F8400C08F8400B698
                    8400C0988400F4C0840031608F00C0988F00CAA18F00D4AB8F00F4CA8F00D4AB
                    9800D4B69800E0B69800FFD49800FFE09800C0A1A100F4D4A100FFE0A100CAAB
                    AB00D4CAAB00E0D4AB005084B600E0CAB600FFEAB600FFF4B600F4E0C000FFF4
                    C000F4EACA00F4F4CA00FFF4CA00FFFFCA00116AD400FFFFD4000B6AE0000B73
                    E0001173EA00A1CAEA00F4F4EA00FFF4EA00FFFFEA00FFFFF400FF00FF0031A1
                    FF0038A1FF0038ABFF00FFFFFF0038030A383838383838383838383838382431
                    140B383838383838383838383838393A32140B3838383838383838383838383A
                    3A30140B3838383838383838383838383A3931140A3838383838383838383838
                    383A392E0138020F161038383838383838383B330608282D2D2D231538383838
                    3838381E16262D2D2D2F363405383838383838071F18292D0036373C22383838
                    383838171D0E2925002525362A0C38383838381B1C0400000000002F2B113838
                    3838381920040E2600262F2F2A0F38383838380C2626181300292C2D23383838
                    383838381A3C350E04132027093838383838383838212A261D201F1238383838
                    3838383838380D12171738383838}
                  OnClick = btnLinhaUpClick
                end
                object btnLinhaDown: TSpeedButton
                  Left = 98
                  Top = 3
                  Width = 49
                  Height = 16
                  Cursor = crHandPoint
                  Flat = True
                  Glyph.Data = {
                    2E020000424D2E020000000000002E0100002800000010000000100000000100
                    08000000000000010000430B0000430B00003E0000003E000000A1400B004050
                    58009860580031486000EAAB6A00A17373008F7B7300B67B7300A1847300AB84
                    7300AB7B7B00B67B7B00B6847B00C0987B00F4C07B00B68F8400C08F8400B698
                    8400C0988400F4C0840031608F00C0988F00CAA18F00D4AB8F00F4CA8F00D4AB
                    9800D4B69800E0B69800FFD49800FFE09800C0A1A100F4D4A100F4E0A100FFE0
                    A100CAABAB00D4CAAB00E0D4AB005084B600E0CAB600FFEAB600FFF4B600F4E0
                    C000FFF4C000F4EACA00F4F4CA00FFF4CA00FFFFCA00116AD400FFFFD4000B6A
                    E0000B73E0001173EA00A1CAEA00F4F4EA00FFF4EA00FFFFEA00FFFFF400FF00
                    FF0031A1FF0038A1FF0038ABFF00FFFFFF0039030A3939393939393939393939
                    39392532140B3939393939393939393939393A3B33140B393939393939393939
                    3939393B3B31140B3939393939393939393939393B3A32140A39393939393939
                    39393939393B3A2F0139020F161039393939393939393C340608292E2E2E2415
                    393939393939391E16272E2E2E30373505393939393939071F182A2E3037383D
                    23393939393939171D0E2626262626372B0C39393939391B1C04000000000030
                    2C1139393939391921040E27303030302B0F39393939390C27271813202A2D2E
                    24393939393939391A3D360E04132128093939393939393939222B271D211F12
                    393939393939393939390D12171739393939}
                  OnClick = btnLinhaDownClick
                end
                object Label17: TLabel
                  Left = 3
                  Top = 4
                  Width = 39
                  Height = 13
                  Caption = 'Linhas:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 78
            Width = 624
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 624
            Height = 78
            object Label1: TLabel
              Left = 6
              Top = 3
              Width = 39
              Height = 13
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 412
              Top = 2
              Width = 45
              Height = 13
              Caption = 'Contato'
              FocusControl = EditContato
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 6
              Top = 38
              Width = 45
              Height = 13
              Caption = 'Produto'
              FocusControl = EditContato
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditContato: TDBEdit
              Left = 412
              Top = 16
              Width = 198
              Height = 21
              CharCase = ecUpperCase
              DataField = 'HELPCCONTATO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnExit = EditContatoExit
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 403
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLIEA60RAZAOSOC'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBComboProduto: TRxDBLookupCombo
              Left = 5
              Top = 52
              Width = 404
              Height = 21
              Cursor = crHandPoint
              DropDownCount = 8
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              EmptyValue = 'null'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'PRODICOD'
              LookupDisplay = 'PRODA60DESCR'
              LookupSource = DSSQLClienteProduto
              ParentFont = False
              TabOrder = 2
              OnKeyDown = DBComboProdutoKeyDown
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    OnPopup = PopupMenuDiversosPopup
    object mnGerarTarefa: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFCB6908CB6908CB6908CB6908CB6908CB6908CB
        6908CB6908CB6908CB6908CB6908CB6908CB6908CB6908FF00FFFF00FFCB6806
        FFFFFFFFFFFFFFFFFF82C976FFEFDAFFEFDAFFEFDAC4945B8B8433FFDAB4FFDA
        B4FFDAB4CB6704FF00FFFF00FFCB6908FFFFFFFFFFFFFFFFFF82C976FFEFDAFF
        F0DDFFEED2958A871D637A8C8276DEBE9BFFDAB4CC6806FF00FFFF00FFC96704
        8AC77B81C67481C67657B3467DC06681C06681C06369AE5B567D89B381877565
        506D904BC96804FF00FFFF00FFCB6807F1F6EBF1F9F0F1F9F07CC570E3EBD1F1
        ECD5F1E7CAE8E1B9759559EBAAAFB482837B6352CF6400FF00FFFF00FFCB6807
        FFFFFAFDFDFFF9F9FF7DC47BF4F7E8FFFDF2FFF5ECFBECD481BE62E6B1AFE2A9
        AEC27E7C85764CFF00FFFF00FFD36900A2A1F55F60F24B4BEA3843D47D7DF9BA
        C9D9B9DE9FABD29469BA53B3D1919C9B6A8E98A013ACD5002CB4FF00FF8062B1
        6162D8ACA6C6B4AEC4BAB5CF7674CF2F43CA88B1AFB2DD9E68BA56B4D9A3C0D0
        9588BFBA0E74E70C1AB85B5BFB6F75F4DEDED2FFF3BEF7CD99FCD49FFFFBDC87
        85CC746DFFF1F1F587C974FFFDFFFFF3E5FFEBC8785F86FF00FF5B5BFBB3B2E0
        FFFFDEFEFDD6FCF7D1F7DCABF2CA95DFD1C25354D9C4C8EE92CF76FFFAF4FEF0
        DEFEE8C9C16416FF00FF6867F7C0C9EAFFFFF8FFFFE29D9E8E4A4D4D6F6658B6
        ABAB5B60DEA86151D97303D47107D47107D47107FF00FFFF00FF6060FAC3C3E7
        FFFFFFFFFFF6E1E1C77A7B6EC3AC85EDD7BB4E58EBA45A49FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF6060FA9692EAFAF7F0FFFFFFFFFFFFF5F5E6BAB592A9
        A5C54549FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6162FC
        9A97E7E5E1EBEFF7F4F2F6F8B9B8E45253EEFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF4F50FE5A58F46564EE5656F14040FBFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = 'Gerar Tarefa'
      OnClick = mnGerarTarefaClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    AfterInsert = SQLTemplateAfterInsert
    AutoRefresh = True
    SQL.Strings = (
      'Select * From HELPDESK Where (%MFiltro)')
    object SQLTemplateHELPA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'HELPA13ID'
      Origin = 'DB.HELPDESK.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.HELPDESK.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.HELPDESK.TERMICOD'
    end
    object SQLTemplateHELPICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'HELPICOD'
      Origin = 'DB.HELPDESK.HELPICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.HELPDESK.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateHELPCCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'HELPCCONTATO'
      Origin = 'DB.HELPDESK.HELPCCONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateHELPDINICIO: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'HELPDINICIO'
      Origin = 'DB.HELPDESK.HELPDINICIO'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.HELPDESK.PRODICOD'
    end
    object SQLTemplateHELPTSOLICITACAO: TMemoField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'HELPTSOLICITACAO'
      Origin = 'DB.HELPDESK.HELPTSOLICITACAO'
      BlobType = ftMemo
      Size = 1000
    end
    object a: TMemoField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Solu'#231#227'o'
      FieldName = 'HELPTSOLUCAO'
      Origin = 'DB.HELPDESK.HELPTSOLUCAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTemplateHELPCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'HELPCTIPO'
      Origin = 'DB.HELPDESK.HELPCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTPHPICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd. Tipo'
      FieldName = 'TPHPICOD'
      Origin = 'DB.HELPDESK.TPHPICOD'
    end
    object SQLTemplateHELPCNIVEL: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'HELPCNIVEL'
      Origin = 'DB.HELPDESK.HELPCNIVEL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateHELPDTERMINO: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'HELPDTERMINO'
      Origin = 'DB.HELPDESK.HELPDTERMINO'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    end
    object SQLTemplateHELPCPERGUNTACHAVE: TStringField
      DisplayLabel = 'Pergunta Chave'
      FieldName = 'HELPCPERGUNTACHAVE'
      Origin = 'DB.HELPDESK.HELPCPERGUNTACHAVE'
      FixedChar = True
      Size = 100
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.HELPDESK.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.HELPDESK.REGISTRO'
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'CLIEA60RAZAOSOC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateHELPHTEMPOATEND: TDateTimeField
      DisplayLabel = 'Tempo Atendimento'
      FieldName = 'HELPHTEMPOATEND'
      Origin = 'DB.HELPDESK.HELPHTEMPOATEND'
      DisplayFormat = 'hh:mm:ss'
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CLIENTEHELPDESK.CLIEA13ID,'
      'CLIENTEHELPDESK.CLHPDCADASTRO,'
      'CLIENTEHELPDESK.CLHPDFIRSTHELP,'
      'CLIENTEHELPDESK.CLHPDLASTHELP,'
      'CLIENTEHELPDESK.CLHPINROHELP,'
      'CLIENTEHELPDESK.CLHPDFIRSTRESET,'
      'CLIENTEHELPDESK.CLHPDLASTRESET,'
      'CLIENTEHELPDESK.CLHPINRORESETS,'
      'CLIENTEHELPDESK.CLHPTDADOSTEC,'
      'CLIENTE.CLIEA60RAZAOSOC'
      'FROM'
      'CLIENTEHELPDESK'
      
        'LEFT OUTER JOIN CLIENTE ON CLIENTEHELPDESK.CLIEA13ID = CLIENTE.C' +
        'LIEA13ID'
      'ORDER BY CLIENTE.CLIEA60RAZAOSOC')
    Macros = <>
    Left = 48
    Top = 224
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLHPDCADASTRO: TDateTimeField
      FieldName = 'CLHPDCADASTRO'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDCADASTRO'
    end
    object SQLClienteCLHPDFIRSTHELP: TDateTimeField
      FieldName = 'CLHPDFIRSTHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDFIRSTHELP'
    end
    object SQLClienteCLHPDLASTHELP: TDateTimeField
      FieldName = 'CLHPDLASTHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDLASTHELP'
    end
    object SQLClienteCLHPINROHELP: TIntegerField
      FieldName = 'CLHPINROHELP'
      Origin = 'DB.CLIENTEHELPDESK.CLHPINROHELP'
    end
    object SQLClienteCLHPDFIRSTRESET: TDateTimeField
      FieldName = 'CLHPDFIRSTRESET'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDFIRSTRESET'
    end
    object SQLClienteCLHPDLASTRESET: TDateTimeField
      FieldName = 'CLHPDLASTRESET'
      Origin = 'DB.CLIENTEHELPDESK.CLHPDLASTRESET'
    end
    object SQLClienteCLHPINRORESETS: TIntegerField
      FieldName = 'CLHPINRORESETS'
      Origin = 'DB.CLIENTEHELPDESK.CLHPINRORESETS'
    end
    object SQLClienteCLHPTDADOSTEC: TMemoField
      FieldName = 'CLHPTDADOSTEC'
      Origin = 'DB.CLIENTEHELPDESK.CLHPTDADOSTEC'
      BlobType = ftMemo
      Size = 1000
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 20
    Top = 224
  end
  object SQLClienteProduto: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT'
      'CLIEA13ID,'
      'PRODICOD'
      'FROM'
      'CLIENTEHELPDESKPRODUTO'
      'WHERE'
      'CLIEA13ID = :CLIEA13ID'
      'ORDER BY'
      'PRODICOD')
    Macros = <>
    Left = 48
    Top = 252
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLClienteProdutoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEHELPDESKPRODUTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.CLIENTEHELPDESKPRODUTO.PRODICOD'
    end
    object SQLClienteProdutoPRODA60DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
  end
  object DSSQLClienteProduto: TDataSource
    DataSet = SQLClienteProduto
    Left = 20
    Top = 252
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'PRODICOD,'
      'PRODA60DESCR'
      'FROM'
      'PRODUTO'
      'ORDER BY'
      'PRODA60DESCR')
    Macros = <>
    Left = 48
    Top = 280
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 20
    Top = 280
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 20
    Top = 196
  end
  object SQLTipoHelp: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM TIPOHELPDESK')
    Macros = <>
    Left = 48
    Top = 308
    object SQLTipoHelpTPHPICOD: TIntegerField
      FieldName = 'TPHPICOD'
      Origin = 'DB.TIPOHELPDESK.TPHPICOD'
    end
    object SQLTipoHelpTPHPA60DESCR: TStringField
      FieldName = 'TPHPA60DESCR'
      Origin = 'DB.TIPOHELPDESK.TPHPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTipoHelpTPHPCGERATAREFA: TStringField
      FieldName = 'TPHPCGERATAREFA'
      Origin = 'DB.TIPOHELPDESK.TPHPCGERATAREFA'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLTipoHelp: TDataSource
    DataSet = SQLTipoHelp
    Left = 20
    Top = 308
  end
  object DSSQLHelp: TDataSource
    AutoEdit = False
    DataSet = SQLHelp
    Left = 20
    Top = 336
  end
  object SQLHelp: TRxQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from helpdesk')
    Macros = <>
    Left = 48
    Top = 336
    object SQLHelpHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.HELPDESK.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLHelpEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.HELPDESK.EMPRICOD'
    end
    object SQLHelpTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.HELPDESK.TERMICOD'
    end
    object SQLHelpHELPICOD: TIntegerField
      FieldName = 'HELPICOD'
      Origin = 'DB.HELPDESK.HELPICOD'
    end
    object SQLHelpCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.HELPDESK.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLHelpHELPCCONTATO: TStringField
      FieldName = 'HELPCCONTATO'
      Origin = 'DB.HELPDESK.HELPCCONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLHelpHELPDINICIO: TDateTimeField
      FieldName = 'HELPDINICIO'
      Origin = 'DB.HELPDESK.HELPDINICIO'
    end
    object SQLHelpHELPTSOLICITACAO: TMemoField
      FieldName = 'HELPTSOLICITACAO'
      Origin = 'DB.HELPDESK.HELPTSOLICITACAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLHelpHELPTSOLUCAO: TMemoField
      FieldName = 'HELPTSOLUCAO'
      Origin = 'DB.HELPDESK.HELPTSOLUCAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLHelpHELPCTIPO: TStringField
      FieldName = 'HELPCTIPO'
      Origin = 'DB.HELPDESK.HELPCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLHelpTPHPICOD: TIntegerField
      FieldName = 'TPHPICOD'
      Origin = 'DB.HELPDESK.TPHPICOD'
    end
    object SQLHelpHELPCNIVEL: TStringField
      FieldName = 'HELPCNIVEL'
      Origin = 'DB.HELPDESK.HELPCNIVEL'
      FixedChar = True
      Size = 1
    end
    object SQLHelpHELPDTERMINO: TDateTimeField
      FieldName = 'HELPDTERMINO'
      Origin = 'DB.HELPDESK.HELPDTERMINO'
    end
    object SQLHelpHELPCPERGUNTACHAVE: TStringField
      FieldName = 'HELPCPERGUNTACHAVE'
      Origin = 'DB.HELPDESK.HELPCPERGUNTACHAVE'
      FixedChar = True
      Size = 100
    end
    object SQLHelpPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.HELPDESK.PRODICOD'
    end
    object SQLHelpPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.HELPDESK.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLHelpREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.HELPDESK.REGISTRO'
    end
  end
  object dsSQLHistorico: TDataSource
    DataSet = SQLHistorico
    Left = 20
    Top = 368
  end
  object SQLHistorico: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From HELPDESK Where (%MFiltro)'
      'order by HELPDTERMINO, HELPDINICIO  desc')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 48
    Top = 368
    object SQLHistoricoHELPTSOLICITACAO: TMemoField
      FieldName = 'HELPTSOLICITACAO'
      Origin = 'DB.HELPDESK.HELPTSOLICITACAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLHistoricoHELPTSOLUCAO: TMemoField
      FieldName = 'HELPTSOLUCAO'
      Origin = 'DB.HELPDESK.HELPTSOLUCAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLHistoricoHELPCTIPO: TStringField
      FieldName = 'HELPCTIPO'
      Origin = 'DB.HELPDESK.HELPCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLHistoricoTPHPICOD: TIntegerField
      FieldName = 'TPHPICOD'
      Origin = 'DB.HELPDESK.TPHPICOD'
    end
    object SQLHistoricoHELPCNIVEL: TStringField
      FieldName = 'HELPCNIVEL'
      Origin = 'DB.HELPDESK.HELPCNIVEL'
      FixedChar = True
      Size = 1
    end
    object SQLHistoricoTPHPA60DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'TPHPA60DESCR'
      LookupDataSet = SQLTipoHelp
      LookupKeyFields = 'TPHPICOD'
      LookupResultField = 'TPHPA60DESCR'
      KeyFields = 'TPHPICOD'
      Size = 60
      Lookup = True
    end
    object SQLHistoricoHELPDINICIO: TDateTimeField
      FieldName = 'HELPDINICIO'
      Origin = 'DB.HELPDESK.HELPDINICIO'
      DisplayFormat = 'dd/mm/yy hh:mm:ss'
    end
    object SQLHistoricoHELPDTERMINO: TDateTimeField
      FieldName = 'HELPDTERMINO'
      Origin = 'DB.HELPDESK.HELPDTERMINO'
      DisplayFormat = 'dd/mm/yy hh:mm:ss'
    end
  end
end
