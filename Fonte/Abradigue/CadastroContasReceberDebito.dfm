inherited FormCadastroContasReceberDebito: TFormCadastroContasReceberDebito
  Top = 0
  Caption = 'Cadastro de D'#233'bitos Por Cliente'
  ClientHeight = 545
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 545
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object ActionMainMenuBar1: TActionMainMenuBar
          Left = 0
          Top = 32
          Width = 790
          Height = 29
          Caption = 'ActionMainMenuBar1'
          EdgeOuter = esNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Spacing = 0
        end
      end
    end
    inherited PanelCentral: TPanel
      Height = 471
      inherited PanelBarra: TPanel
        Height = 471
      end
      inherited PanelFundoDados: TPanel
        Height = 471
        inherited Panel5: TPanel
          Height = 471
          inherited PagePrincipal: TPageControl
            Top = 161
            Height = 310
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 93
                Height = 191
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTRCDEMIS'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCINROPARC'
                    Width = 46
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2VLR'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA30NRODUPLICBANCO'
                    Width = 150
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClienteCalcField'
                    Width = 214
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoDocumentoCalcField'
                    Width = 213
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PortadorCalcField'
                    Width = 198
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PlanodeContasCalcField'
                    Width = 228
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EmpresaUltRecCalcField'
                    Width = 211
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDULTREC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTREC'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Height = 41
                inherited PanelEditProcura: TPanel [0]
                  Height = 41
                end
                inherited PanelBetween: TPanel [1]
                  Height = 41
                end
                inherited PanelIndice: TPanel
                  Height = 41
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 177
                Lines.Strings = (
                  'RECEBIMENTO')
              end
              object PanelPesquisa: TPanel
                Left = 0
                Top = 41
                Width = 652
                Height = 52
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 3
                TabStop = True
                object SpeedButton1: TSpeedButton
                  Left = 554
                  Top = 4
                  Width = 95
                  Height = 22
                  Caption = '&Localizar'
                  Flat = True
                  Glyph.Data = {
                    F6000000424DF60000000000000076000000280000000E000000100000000100
                    04000000000080000000CE0E0000C40E00001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                    77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                    70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                    70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                    0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
                  OnClick = SpeedButton1Click
                end
                object SpeedButton2: TSpeedButton
                  Left = 554
                  Top = 26
                  Width = 95
                  Height = 22
                  Caption = 'Limpar &Pesquisa'
                  Flat = True
                  Glyph.Data = {
                    0E010000424D0E01000000000000360000002800000008000000090000000100
                    180000000000D8000000130B0000130B00000000000000000000BFBFBFBFBFBF
                    BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF290404340403BFBFBFBFBFBFBFBF
                    BFBFBFBF2F02001C0000BFBFBF330403692824BFBFBFBFBFBF661614390301BF
                    BFBFBFBFBFBFBFBF3D05047C4229CB7B6A9E4542BFBFBFBFBFBFBFBFBFBFBFBF
                    BFBFBF4F1A0BA05548BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4307053F0D045316
                    0DA0514FBFBFBFBFBFBFBFBFBFA9584F984B48BFBFBFBFBFBF6D2A29853532BF
                    BFBFCC6D6ACE786ABFBFBFBFBFBFBFBFBFBFBFBF5F18166A1816BFBFBFBFBFBF
                    BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
                  OnClick = SpeedButton2Click
                end
                object ComboCliente: TRxDBLookupCombo
                  Left = 3
                  Top = 3
                  Width = 274
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um cliente...'
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA60RAZAOSOC'
                  LookupSource = DSSQLCliente
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnKeyDown = ComboClienteKeyDown
                end
                object ComboConta: TRxDBLookupCombo
                  Left = 278
                  Top = 3
                  Width = 274
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione uma conta do plano de contas'
                  LookupField = 'PLCTA15COD'
                  LookupDisplay = 'PLCTA60DESCR'
                  LookupSource = DSSQLConta
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnKeyDown = ComboClienteKeyDown
                end
                object ComboTipoDoc: TRxDBLookupCombo
                  Left = 3
                  Top = 27
                  Width = 274
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um tipo de documento'
                  LookupField = 'TPDCICOD'
                  LookupDisplay = 'TPDCA60DESCR'
                  LookupSource = DSSQLTipoDocumento
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnKeyDown = ComboClienteKeyDown
                end
                object ComboPortador: TRxDBLookupCombo
                  Left = 278
                  Top = 27
                  Width = 274
                  Height = 21
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um portador...'
                  LookupField = 'PORTICOD'
                  LookupDisplay = 'PORTA60DESCR'
                  LookupSource = DSSQLPortador
                  TabOrder = 3
                  OnKeyDown = ComboClienteKeyDown
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label7: TLabel
                Left = 5
                Top = -2
                Width = 92
                Height = 13
                Caption = 'Tipo Documento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaTipoDoc: TSpeedButton
                Left = 301
                Top = 14
                Width = 21
                Height = 20
                Hint = 'Acessa Tipo de Documento'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                OnClick = RetornaTipoDocClick
              end
              object Label8: TLabel
                Left = 326
                Top = -2
                Width = 50
                Height = 13
                Caption = 'Portador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaPortador: TSpeedButton
                Left = 614
                Top = 14
                Width = 21
                Height = 20
                Hint = 'Acessa Portador'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                OnClick = RetornaPortadorClick
              end
              object Label13: TLabel
                Left = 118
                Top = 108
                Width = 50
                Height = 13
                Caption = 'Hist'#243'rico'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 5
                Top = 108
                Width = 93
                Height = 13
                Caption = 'Hist'#243'rico Padr'#227'o'
                FocusControl = DBEditHistoricoPadrao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnHistorico: TSpeedButton
                Left = 94
                Top = 122
                Width = 21
                Height = 21
                Hint = 'Acessa Hist'#243'ricos Padr'#245'es'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                OnClick = BtnHistoricoClick
              end
              object GroupBox1: TGroupBox
                Left = 0
                Top = 168
                Width = 652
                Height = 116
                Align = alBottom
                Caption = ' Hist'#243'rico de Baixas'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                TabStop = True
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 648
                  Height = 99
                  TabStop = False
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLRecebimento
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnDrawColumnCell = DBGridListaDrawColumnCell
                  OnDblClick = DBGrid1DblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'RECEDRECTO'
                      Width = 77
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEDDATAMOV'
                      Width = 75
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2VLRRECTO'
                      Width = 89
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'EmpresaLookup'
                      Width = 227
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEA254HISTORICO'
                      Visible = True
                    end>
                end
              end
              object MemoHistorico: TDBMemo
                Left = 117
                Top = 123
                Width = 521
                Height = 39
                DataField = 'CTRCA254HIST'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEditHistoricoPadrao: TDBEdit
                Left = 5
                Top = 123
                Width = 88
                Height = 21
                DataField = 'HTPDICOD'
                DataSource = DSTemplate
                TabOrder = 3
                OnExit = DBEditHistoricoPadraoExit
                OnKeyDown = DBEditHistoricoPadraoKeyDown
              end
              object GroupPlanoContas: TGroupBox
                Left = 4
                Top = 37
                Width = 633
                Height = 70
                Caption = '&Plano de Contas'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object PageControlPlanoContas: TPageControl
                  Left = 2
                  Top = 15
                  Width = 629
                  Height = 53
                  ActivePage = TabDebito
                  Align = alClient
                  MultiLine = True
                  RaggedRight = True
                  Style = tsFlatButtons
                  TabIndex = 1
                  TabOrder = 0
                  object TabCredito: TTabSheet
                    Caption = '&Cr'#233'dito'
                    object Label6: TLabel
                      Left = 3
                      Top = 1
                      Width = 77
                      Height = 13
                      Caption = 'Conta Cr'#233'dito'
                      FocusControl = DBEdit7
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object RetornaPlanoContas: TSpeedButton
                      Left = 173
                      Top = 1
                      Width = 21
                      Height = 20
                      Hint = 'Acessa Plano de Contas'
                      Flat = True
                      Glyph.Data = {
                        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                        18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                        0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                        48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                        0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                        FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                        7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                        B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                        FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                        00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                        EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                        FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                        00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                        B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        0000}
                      OnClick = RetornaPlanoContasClick
                    end
                    object DBEdit7: TDBEdit
                      Left = 84
                      Top = 1
                      Width = 88
                      Height = 21
                      DataField = 'PLCTA15COD'
                      DataSource = DSTemplate
                      TabOrder = 0
                      OnKeyDown = DBEdit7KeyDown
                    end
                    object DBEdit8: TDBEdit
                      Left = 196
                      Top = 2
                      Width = 425
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      DataField = 'PlanodeContasCalcField'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentColor = True
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object TabDebito: TTabSheet
                    Caption = '&D'#233'bito'
                    ImageIndex = 1
                    object Label14: TLabel
                      Left = 3
                      Top = 1
                      Width = 73
                      Height = 13
                      Caption = 'Conta D'#233'bito'
                      FocusControl = DBEdit5
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object RetornaPlanoContasDebito: TSpeedButton
                      Left = 173
                      Top = 1
                      Width = 21
                      Height = 20
                      Hint = 'Acessa Plano de Contas'
                      Flat = True
                      Glyph.Data = {
                        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                        18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                        0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                        00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                        48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                        0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                        FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                        7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                        B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                        FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                        00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                        EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                        FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                        00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                        B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                        0000}
                      OnClick = RetornaPlanoContasDebitoClick
                    end
                    object DBEdit5: TDBEdit
                      Left = 84
                      Top = 1
                      Width = 88
                      Height = 21
                      DataField = 'PLCTA15CODDEBITO'
                      DataSource = DSTemplate
                      TabOrder = 0
                      OnKeyDown = DBEdit5KeyDown
                    end
                    object DBEdit14: TDBEdit
                      Left = 196
                      Top = 2
                      Width = 425
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      DataField = 'PlanodeContasDebitoCalcField'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentColor = True
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                end
              end
              object ComboTipoDocCad: TRxDBLookupCombo
                Left = 4
                Top = 14
                Width = 295
                Height = 21
                DropDownCount = 8
                DataField = 'TPDCICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'TPDCICOD'
                LookupDisplay = 'TPDCA60DESCR'
                LookupSource = DSSQLTipoDocumento
                TabOrder = 0
                OnKeyDown = ComboTipoDocCadKeyDown
              end
              object ComboPortadorCad: TRxDBLookupCombo
                Left = 325
                Top = 14
                Width = 287
                Height = 21
                DropDownCount = 8
                DataField = 'PORTICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'PORTICOD'
                LookupDisplay = 'PORTA60DESCR'
                LookupSource = DSSQLPortador
                TabOrder = 1
                OnKeyDown = ComboPortadorCadKeyDown
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 120
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 120
            object Label1: TLabel
              Left = 101
              Top = 0
              Width = 49
              Height = 13
              Caption = 'Empresa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnEmpresa: TSpeedButton
              Left = 600
              Top = 16
              Width = 21
              Height = 21
              Hint = 'Acessa Empresa'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = BtnEmpresaClick
            end
            object Label2: TLabel
              Left = 6
              Top = 39
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
            object BtnCliente: TSpeedButton
              Left = 600
              Top = 54
              Width = 21
              Height = 21
              Hint = 'Acessa Cliente'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = BtnClienteClick
            end
            object Label3: TLabel
              Left = 6
              Top = 0
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 189
              Top = 78
              Width = 46
              Height = 13
              Caption = 'Emiss'#227'o'
              FocusControl = DBDateEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 279
              Top = 78
              Width = 29
              Height = 13
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 475
              Top = 78
              Width = 112
              Height = 13
              Caption = 'Nro.Duplicata Banco'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 101
              Top = 78
              Width = 42
              Height = 13
              Caption = 'Parcela'
              FocusControl = DBEdit15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 6
              Top = 78
              Width = 77
              Height = 13
              Caption = 'Valor Baixado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 385
              Top = 78
              Width = 67
              Height = 13
              Caption = 'Vencimento'
              FocusControl = DBDateEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 6
              Top = 16
              Width = 91
              Height = 21
              DataField = 'CTRCA13ID'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBDateEdit1: TDBDateEdit
              Left = 186
              Top = 94
              Width = 90
              Height = 21
              DataField = 'CTRCDEMIS'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 4
            end
            object EditValor: TEvDBNumEdit
              Left = 279
              Top = 94
              Width = 100
              Height = 21
              DataField = 'CTRCN2VLR'
              DataSource = DSTemplate
              Decimals = 2
              Enabled = False
              EnabledBtn = True
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ShowButton = False
              ShowSeparator = True
              TabOrder = 5
            end
            object DBEdit13: TDBEdit
              Left = 475
              Top = 94
              Width = 148
              Height = 21
              DataField = 'CTRCA30NRODUPLICBANCO'
              DataSource = DSTemplate
              TabOrder = 7
            end
            object DBEdit15: TDBEdit
              Left = 98
              Top = 94
              Width = 85
              Height = 21
              DataField = 'CTRCINROPARC'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 99
              Top = 16
              Width = 498
              Height = 21
              DropDownCount = 8
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRA60RAZAOSOC'
              LookupSource = DSSQLEmpresa
              TabOrder = 0
              OnKeyDown = ComboEmpresaKeyDown
            end
            object ComboClienteCad: TRxDBLookupCombo
              Left = 6
              Top = 54
              Width = 591
              Height = 21
              DropDownCount = 8
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'CLIEA13ID'
              LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
              LookupDisplayIndex = 1
              LookupSource = DSSQLCliente
              TabOrder = 1
              OnKeyDown = ComboClienteCadKeyDown
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 6
              Top = 94
              Width = 90
              Height = 21
              DataField = 'CTRCN2TOTREC'
              DataSource = DSTemplate
              Decimals = 2
              Enabled = False
              EnabledBtn = True
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ShowButton = False
              ShowSeparator = True
              TabOrder = 8
            end
            object DBDateEdit2: TDBDateEdit
              Left = 382
              Top = 94
              Width = 90
              Height = 21
              DataField = 'CTRCDVENC'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 6
            end
          end
        end
      end
    end
  end
  inherited DSTemplate: TDataSource
    Tag = 1
  end
  inherited PopupMenuDiversos: TPopupMenu
    object Geraroutrolanamentoapartirdodocumentoatual1: TMenuItem
      Caption = 'Replicar Lan'#231'amento(s)'
      OnClick = Geraroutrolanamentoapartirdodocumentoatual1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CONTASRECEBER Where '
      '(%MFiltro)'
      'and'
      '(CTRCA5TIPOPADRAO <> '#39'CHQ'#39' )  and'
      '(CTRCA5TIPOPADRAO <> '#39'CHQV'#39')  and'
      '(CTRCA5TIPOPADRAO <> '#39'CHQP'#39')  and'
      '(CTRCCTIPOREGISTRO = '#39'D'#39')'
      'and'
      '(%MEmpresa)')
    UpdateObject = UpdateSQLTemplate
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    object SQLTemplateCTRCA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLTemplateCTRCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLTemplateEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Empr.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLTemplateEmpresaUltRecCalcField: TStringField
      DisplayLabel = 'Empresa Ult.Rec.'
      FieldKind = fkCalculated
      FieldName = 'EmpresaUltRecCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTerminalCalcField: TStringField
      DisplayLabel = 'Terminal'
      FieldKind = fkCalculated
      FieldName = 'TerminalCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCLIEA13ID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'ID.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateClienteCalcField: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'ClienteCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLTemplateCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCN2VLR: TBCDField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2DESCFIN: TBCDField
      DisplayLabel = 'Desc.Fin.'
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateNUMEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Numer'#225'rio'
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
      OnChange = SQLTemplateNUMEICODChange
    end
    object SQLTemplateNumerarioCalcField: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'NumerarioCalcField'
      Visible = False
      Size = 30
      Calculated = True
    end
    object SQLTemplatePORTICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Portador'
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLTemplatePortadorCalcField: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkCalculated
      FieldName = 'PortadorCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCN2TXJURO: TBCDField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TXMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCA5TIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPODARAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Dt.'#218'lt.Rec.'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCN2TOTREC: TBCDField
      DisplayLabel = 'Total Rectos.'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TOTJUROREC: TBCDField
      DisplayLabel = 'Juro Rectos.'
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TOTMULTAREC: TBCDField
      DisplayLabel = 'Multa Rectos.'
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCN2TOTDESCREC: TBCDField
      DisplayLabel = 'Desc.Rectos.'
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTPDCICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Tipo Doc.'
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLTemplateTipoDocumentoCalcField: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldKind = fkCalculated
      FieldName = 'TipoDocumentoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplatePLCTA15COD: TStringField
      DisplayLabel = 'C'#243'd.Plano Contas'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePlanodeContasCalcField: TStringField
      DisplayLabel = 'Plano de Contas'
      FieldKind = fkCalculated
      FieldName = 'PlanodeContasCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEmpresaDestCalcField: TStringField
      DisplayLabel = 'Empresa Destino'
      FieldKind = fkCalculated
      FieldName = 'EmpresaDestCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCA30NRODUPLICBANCO: TStringField
      DisplayLabel = 'Nro.Duplic.Bancos'
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCDEMIS: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLTemplateCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTipoPadraoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoPadraoCalcField'
      Visible = False
      Size = 5
      Calculated = True
    end
    object SQLTemplateCTRCA254HIST: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateHTPDICOD: TIntegerField
      DisplayLabel = 'Hist'#243'rico Padr'#227'o'
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
      OnChange = SQLTemplateHTPDICODChange
    end
    object SQLTemplateHistoricoPadraoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'HistoricoPadraoCalcField'
      Visible = False
      Size = 100
      Calculated = True
    end
    object SQLTemplatePLCTA15CODDEBITO: TStringField
      DisplayLabel = 'Conta D'#233'bito'
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePlanodeContasDebitoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanodeContasDebitoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLTemplateBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLTemplateCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLTemplateALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLTemplatePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLTemplateFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLTemplateAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCCTIPOREGISTRO: TStringField
      DisplayLabel = 'Tipo Registro'
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTASRECEBER'
      'set'
      '  CTRCA13ID = :CTRCA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  TERMICOD = :TERMICOD,'
      '  CTRCICOD = :CTRCICOD,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  CTRCCSTATUS = :CTRCCSTATUS,'
      '  CTRCINROPARC = :CTRCINROPARC,'
      '  CTRCDVENC = :CTRCDVENC,'
      '  CTRCN2VLR = :CTRCN2VLR,'
      '  CTRCN2DESCFIN = :CTRCN2DESCFIN,'
      '  NUMEICOD = :NUMEICOD,'
      '  PORTICOD = :PORTICOD,'
      '  CTRCN2TXJURO = :CTRCN2TXJURO,'
      '  CTRCN2TXMULTA = :CTRCN2TXMULTA,'
      '  CTRCA5TIPOPADRAO = :CTRCA5TIPOPADRAO,'
      '  CTRCDULTREC = :CTRCDULTREC,'
      '  CTRCN2TOTREC = :CTRCN2TOTREC,'
      '  CTRCN2TOTJUROREC = :CTRCN2TOTJUROREC,'
      '  CTRCN2TOTMULTAREC = :CTRCN2TOTMULTAREC,'
      '  CTRCN2TOTDESCREC = :CTRCN2TOTDESCREC,'
      '  CTRCN2TOTMULTACOBR = :CTRCN2TOTMULTACOBR,'
      '  EMPRICODULTREC = :EMPRICODULTREC,'
      '  CUPOA13ID = :CUPOA13ID,'
      '  TPDCICOD = :TPDCICOD,'
      '  PLCTA15COD = :PLCTA15COD,'
      '  CTRCA30NRODUPLICBANCO = :CTRCA30NRODUPLICBANCO,'
      '  NOFIA13ID = :NOFIA13ID,'
      '  CTRCDEMIS = :CTRCDEMIS,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  CTRCDREABILSPC = :CTRCDREABILSPC,'
      '  BANCA5CODCHQ = :BANCA5CODCHQ,'
      '  CTRCA10AGENCIACHQ = :CTRCA10AGENCIACHQ,'
      '  CTRCA15CONTACHQ = :CTRCA15CONTACHQ,'
      '  CTRCA15NROCHQ = :CTRCA15NROCHQ,'
      '  CTRCA60TITULARCHQ = :CTRCA60TITULARCHQ,'
      '  CTRCA20CGCCPFCHQ = :CTRCA20CGCCPFCHQ,'
      '  CTRCDDEPOSCHQ = :CTRCDDEPOSCHQ,'
      '  ALINICOD = :ALINICOD,'
      '  PDVDA13ID = :PDVDA13ID,'
      '  CTRCDESTORNO = :CTRCDESTORNO,'
      '  FRETA13ID = :FRETA13ID,'
      '  CTRCCTEMREGRECEBER = :CTRCCTEMREGRECEBER,'
      '  COBRA13ID = :COBRA13ID,'
      '  CTRCDENVIOCOBRANCA = :CTRCDENVIOCOBRANCA,'
      '  CTRCA254HIST = :CTRCA254HIST,'
      '  DUPLA13ID = :DUPLA13ID,'
      '  HTPDICOD = :HTPDICOD,'
      '  PLCTA15CODDEBITO = :PLCTA15CODDEBITO'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID and'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  CTRCICOD = :OLD_CTRCICOD and'
      '  CLIEA13ID = :OLD_CLIEA13ID and'
      '  CTRCCSTATUS = :OLD_CTRCCSTATUS and'
      '  CTRCINROPARC = :OLD_CTRCINROPARC and'
      '  CTRCDVENC = :OLD_CTRCDVENC and'
      '  CTRCN2VLR = :OLD_CTRCN2VLR and'
      '  CTRCN2DESCFIN = :OLD_CTRCN2DESCFIN and'
      '  NUMEICOD = :OLD_NUMEICOD and'
      '  PORTICOD = :OLD_PORTICOD and'
      '  CTRCN2TXJURO = :OLD_CTRCN2TXJURO and'
      '  CTRCN2TXMULTA = :OLD_CTRCN2TXMULTA and'
      '  CTRCA5TIPOPADRAO = :OLD_CTRCA5TIPOPADRAO and'
      '  CTRCDULTREC = :OLD_CTRCDULTREC and'
      '  CTRCN2TOTREC = :OLD_CTRCN2TOTREC and'
      '  CTRCN2TOTJUROREC = :OLD_CTRCN2TOTJUROREC and'
      '  CTRCN2TOTMULTAREC = :OLD_CTRCN2TOTMULTAREC and'
      '  CTRCN2TOTDESCREC = :OLD_CTRCN2TOTDESCREC and'
      '  CTRCN2TOTMULTACOBR = :OLD_CTRCN2TOTMULTACOBR and'
      '  EMPRICODULTREC = :OLD_EMPRICODULTREC and'
      '  CUPOA13ID = :OLD_CUPOA13ID and'
      '  TPDCICOD = :OLD_TPDCICOD and'
      '  PLCTA15COD = :OLD_PLCTA15COD and'
      '  CTRCA30NRODUPLICBANCO = :OLD_CTRCA30NRODUPLICBANCO and'
      '  NOFIA13ID = :OLD_NOFIA13ID and'
      '  CTRCDEMIS = :OLD_CTRCDEMIS and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO and'
      '  CTRCDREABILSPC = :OLD_CTRCDREABILSPC and'
      '  BANCA5CODCHQ = :OLD_BANCA5CODCHQ and'
      '  CTRCA10AGENCIACHQ = :OLD_CTRCA10AGENCIACHQ and'
      '  CTRCA15CONTACHQ = :OLD_CTRCA15CONTACHQ and'
      '  CTRCA15NROCHQ = :OLD_CTRCA15NROCHQ and'
      '  CTRCA60TITULARCHQ = :OLD_CTRCA60TITULARCHQ and'
      '  CTRCA20CGCCPFCHQ = :OLD_CTRCA20CGCCPFCHQ and'
      '  CTRCDDEPOSCHQ = :OLD_CTRCDDEPOSCHQ and'
      '  ALINICOD = :OLD_ALINICOD and'
      '  PDVDA13ID = :OLD_PDVDA13ID and'
      '  CTRCDESTORNO = :OLD_CTRCDESTORNO and'
      '  FRETA13ID = :OLD_FRETA13ID and'
      '  CTRCCTEMREGRECEBER = :OLD_CTRCCTEMREGRECEBER and'
      '  COBRA13ID = :OLD_COBRA13ID and'
      '  CTRCDENVIOCOBRANCA = :OLD_CTRCDENVIOCOBRANCA and'
      '  CTRCA254HIST = :OLD_CTRCA254HIST and'
      '  DUPLA13ID = :OLD_DUPLA13ID and'
      '  HTPDICOD = :OLD_HTPDICOD and'
      '  PLCTA15CODDEBITO = :OLD_PLCTA15CODDEBITO')
    InsertSQL.Strings = (
      'insert into CONTASRECEBER'
      
        '  (CTRCA13ID, EMPRICOD, TERMICOD, CTRCICOD, CLIEA13ID, CTRCCSTAT' +
        'US, CTRCINROPARC, '
      
        '   CTRCDVENC, CTRCN2VLR, CTRCN2DESCFIN, NUMEICOD, PORTICOD, CTRC' +
        'N2TXJURO, '
      
        '   CTRCN2TXMULTA, CTRCA5TIPOPADRAO, CTRCDULTREC, CTRCN2TOTREC, C' +
        'TRCN2TOTJUROREC, '
      
        '   CTRCN2TOTMULTAREC, CTRCN2TOTDESCREC, CTRCN2TOTMULTACOBR, EMPR' +
        'ICODULTREC, '
      
        '   CUPOA13ID, TPDCICOD, PLCTA15COD, CTRCA30NRODUPLICBANCO, NOFIA' +
        '13ID, CTRCDEMIS, '
      
        '   PENDENTE, REGISTRO, CTRCDREABILSPC, BANCA5CODCHQ, CTRCA10AGEN' +
        'CIACHQ, '
      
        '   CTRCA15CONTACHQ, CTRCA15NROCHQ, CTRCA60TITULARCHQ, CTRCA20CGC' +
        'CPFCHQ, '
      
        '   CTRCDDEPOSCHQ, ALINICOD, PDVDA13ID, CTRCDESTORNO, FRETA13ID, ' +
        'CTRCCTEMREGRECEBER, '
      
        '   COBRA13ID, CTRCDENVIOCOBRANCA, CTRCA254HIST, DUPLA13ID, HTPDI' +
        'COD, PLCTA15CODDEBITO)'
      'values'
      
        '  (:CTRCA13ID, :EMPRICOD, :TERMICOD, :CTRCICOD, :CLIEA13ID, :CTR' +
        'CCSTATUS, '
      
        '   :CTRCINROPARC, :CTRCDVENC, :CTRCN2VLR, :CTRCN2DESCFIN, :NUMEI' +
        'COD, :PORTICOD, '
      
        '   :CTRCN2TXJURO, :CTRCN2TXMULTA, :CTRCA5TIPOPADRAO, :CTRCDULTRE' +
        'C, :CTRCN2TOTREC, '
      
        '   :CTRCN2TOTJUROREC, :CTRCN2TOTMULTAREC, :CTRCN2TOTDESCREC, :CT' +
        'RCN2TOTMULTACOBR, '
      
        '   :EMPRICODULTREC, :CUPOA13ID, :TPDCICOD, :PLCTA15COD, :CTRCA30' +
        'NRODUPLICBANCO, '
      
        '   :NOFIA13ID, :CTRCDEMIS, :PENDENTE, :REGISTRO, :CTRCDREABILSPC' +
        ', :BANCA5CODCHQ, '
      
        '   :CTRCA10AGENCIACHQ, :CTRCA15CONTACHQ, :CTRCA15NROCHQ, :CTRCA6' +
        '0TITULARCHQ, '
      
        '   :CTRCA20CGCCPFCHQ, :CTRCDDEPOSCHQ, :ALINICOD, :PDVDA13ID, :CT' +
        'RCDESTORNO, '
      
        '   :FRETA13ID, :CTRCCTEMREGRECEBER, :COBRA13ID, :CTRCDENVIOCOBRA' +
        'NCA, :CTRCA254HIST, '
      '   :DUPLA13ID, :HTPDICOD, :PLCTA15CODDEBITO)')
    DeleteSQL.Strings = (
      'delete from CONTASRECEBER'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID and'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  CTRCICOD = :OLD_CTRCICOD and'
      '  CLIEA13ID = :OLD_CLIEA13ID and'
      '  CTRCCSTATUS = :OLD_CTRCCSTATUS and'
      '  CTRCINROPARC = :OLD_CTRCINROPARC and'
      '  CTRCDVENC = :OLD_CTRCDVENC and'
      '  CTRCN2VLR = :OLD_CTRCN2VLR and'
      '  CTRCN2DESCFIN = :OLD_CTRCN2DESCFIN and'
      '  NUMEICOD = :OLD_NUMEICOD and'
      '  PORTICOD = :OLD_PORTICOD and'
      '  CTRCN2TXJURO = :OLD_CTRCN2TXJURO and'
      '  CTRCN2TXMULTA = :OLD_CTRCN2TXMULTA and'
      '  CTRCA5TIPOPADRAO = :OLD_CTRCA5TIPOPADRAO and'
      '  CTRCDULTREC = :OLD_CTRCDULTREC and'
      '  CTRCN2TOTREC = :OLD_CTRCN2TOTREC and'
      '  CTRCN2TOTJUROREC = :OLD_CTRCN2TOTJUROREC and'
      '  CTRCN2TOTMULTAREC = :OLD_CTRCN2TOTMULTAREC and'
      '  CTRCN2TOTDESCREC = :OLD_CTRCN2TOTDESCREC and'
      '  CTRCN2TOTMULTACOBR = :OLD_CTRCN2TOTMULTACOBR and'
      '  EMPRICODULTREC = :OLD_EMPRICODULTREC and'
      '  CUPOA13ID = :OLD_CUPOA13ID and'
      '  TPDCICOD = :OLD_TPDCICOD and'
      '  PLCTA15COD = :OLD_PLCTA15COD and'
      '  CTRCA30NRODUPLICBANCO = :OLD_CTRCA30NRODUPLICBANCO and'
      '  NOFIA13ID = :OLD_NOFIA13ID and'
      '  CTRCDEMIS = :OLD_CTRCDEMIS and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO and'
      '  CTRCDREABILSPC = :OLD_CTRCDREABILSPC and'
      '  BANCA5CODCHQ = :OLD_BANCA5CODCHQ and'
      '  CTRCA10AGENCIACHQ = :OLD_CTRCA10AGENCIACHQ and'
      '  CTRCA15CONTACHQ = :OLD_CTRCA15CONTACHQ and'
      '  CTRCA15NROCHQ = :OLD_CTRCA15NROCHQ and'
      '  CTRCA60TITULARCHQ = :OLD_CTRCA60TITULARCHQ and'
      '  CTRCA20CGCCPFCHQ = :OLD_CTRCA20CGCCPFCHQ and'
      '  CTRCDDEPOSCHQ = :OLD_CTRCDDEPOSCHQ and'
      '  ALINICOD = :OLD_ALINICOD and'
      '  PDVDA13ID = :OLD_PDVDA13ID and'
      '  CTRCDESTORNO = :OLD_CTRCDESTORNO and'
      '  FRETA13ID = :OLD_FRETA13ID and'
      '  CTRCCTEMREGRECEBER = :OLD_CTRCCTEMREGRECEBER and'
      '  COBRA13ID = :OLD_COBRA13ID and'
      '  CTRCDENVIOCOBRANCA = :OLD_CTRCDENVIOCOBRANCA and'
      '  CTRCA254HIST = :OLD_CTRCA254HIST and'
      '  DUPLA13ID = :OLD_DUPLA13ID and'
      '  HTPDICOD = :OLD_HTPDICOD and'
      '  PLCTA15CODDEBITO = :OLD_PLCTA15CODDEBITO')
  end
  object SQLRecebimento: TQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from RECEBIMENTO'
      'where CTRCA13ID = :CTRCA13ID')
    Left = 438
    Top = 1
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECEICOD: TIntegerField
      FieldName = 'RECEICOD'
      Origin = 'DB.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoRECEDRECTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRJURO: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2DESC: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      DisplayLabel = 'Empresa Recto.'
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoSaldoCalcField: TBCDField
      FieldKind = fkCalculated
      FieldName = 'SaldoCalcField'
      Size = 0
      Calculated = True
    end
    object SQLRecebimentoEmpresaLookup: TStringField
      DisplayLabel = 'Empresa Recebimento'
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICODREC'
      Size = 60
      Lookup = True
    end
    object SQLRecebimentoRECEA254HISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'RECEA254HISTORICO'
      Origin = 'DB.RECEBIMENTO.RECEA254HISTORICO'
      Size = 254
    end
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      DisplayLabel = 'Data Mov.'
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
    end
  end
  object DSSQLRecebimento: TDataSource
    AutoEdit = False
    DataSet = SQLRecebimento
    Left = 466
    Top = 1
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONTASRECEBER'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 520
    Top = 1
    object SQLEspelhoNovoLancCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLEspelhoNovoLancTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLEspelhoNovoLancCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLEspelhoNovoLancCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLEspelhoNovoLancCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLEspelhoNovoLancCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLEspelhoNovoLancCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLEspelhoNovoLancNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLEspelhoNovoLancPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLEspelhoNovoLancCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLEspelhoNovoLancCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLEspelhoNovoLancCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLEspelhoNovoLancCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLEspelhoNovoLancPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLEspelhoNovoLancCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLEspelhoNovoLancCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLEspelhoNovoLancCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLEspelhoNovoLancHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLEspelhoNovoLancPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLEspelhoNovoLancAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CLIEA13ID, CLIEA60RAZAOSOC FROM CLIENTE'
      'ORDER BY CLIEA60RAZAOSOC ')
    Macros = <>
    Left = 48
    Top = 168
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 20
    Top = 168
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT TPDCICOD, TPDCA60DESCR FROM TIPODOCUMENTO'
      'ORDER BY TPDCA60DESCR')
    Macros = <>
    Left = 48
    Top = 196
  end
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 20
    Top = 196
  end
  object SQLConta: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANODECONTAS Where '
      'PLCTCANALSINT = '#39'A'#39
      'and'
      'PLCTCTIPOSALDO = "C"')
    Macros = <>
    Left = 48
    Top = 224
  end
  object DSSQLConta: TDataSource
    DataSet = SQLConta
    Left = 20
    Top = 224
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PORTICOD, PORTA60DESCR FROM PORTADOR'
      'ORDER BY PORTA60DESCR')
    Macros = <>
    Left = 48
    Top = 252
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 20
    Top = 252
  end
  object SQLContasReceber: TRxQuery
    Tag = 3
    BeforePost = SQLContasReceberBeforePost
    OnPostError = SQLContasReceberPostError
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONTASRECEBER WHERE CTRCA13ID IS NULL')
    Macros = <>
    Left = 241
    Top = 29
    object SQLContasReceberCTRCA13ID: TStringField
      Tag = 2
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      Tag = 1
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLContasReceberFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLContasReceberPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 269
    Top = 29
  end
  object DSSQLAvalista: TDataSource
    DataSet = SQLAvalista
    Left = 20
    Top = 280
  end
  object SQLAvalista: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'AVALA13ID,'
      'AVALA60RAZAOSOC,'
      'AVALA60CIDRES'
      'FROM'
      'AVALISTA'
      'ORDER BY'
      'AVALA60RAZAOSOC')
    Macros = <>
    Left = 48
    Top = 280
    object SQLAvalistaAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.AVALISTA.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAvalistaAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      Origin = 'DB.AVALISTA.AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLAvalistaAVALA60CIDRES: TStringField
      FieldName = 'AVALA60CIDRES'
      Origin = 'DB.AVALISTA.AVALA60CIDRES'
      FixedChar = True
      Size = 60
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'EMPRICOD,'
      'EMPRA60RAZAOSOC'
      'FROM'
      'EMPRESA'
      'ORDER BY'
      'EMPRA60RAZAOSOC')
    Macros = <>
    Left = 48
    Top = 308
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
    Left = 20
    Top = 306
  end
end
