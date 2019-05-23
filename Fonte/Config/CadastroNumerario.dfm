inherited FormCadastroNumerario: TFormCadastroNumerario
  Left = 383
  Top = 104
  Caption = 'Numerários'
  ClientHeight = 478
  ClientWidth = 774
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 774
    Height = 478
    inherited PanelCabecalho: TPanel
      Width = 772
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 772
        inherited Panel1: TPanel
          Width = 770
          inherited PanelNavigator: TPanel
            Width = 770
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 770
            end
          end
          inherited PanelLeft: TPanel
            Left = 313
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 772
      Height = 404
      inherited PanelBarra: TPanel
        Height = 404
        inherited Button3: TRxSpeedButton
          Tag = 3
          Height = 30
          Caption = '&3 Totalizadores ECF'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
        object Button4: TRxSpeedButton
          Tag = 3
          Left = 0
          Top = 81
          Width = 127
          Height = 30
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Totalizadores de Caixa'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          WordWrap = True
          Visible = False
          OnClick = Button1Click
        end
        object GroupBoxFOTO: TGroupBox
          Left = 0
          Top = 265
          Width = 130
          Height = 139
          Align = alBottom
          Caption = '  Foto  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Image: TImage
            Left = 2
            Top = 37
            Width = 126
            Height = 99
            Center = True
            Proportional = True
            Stretch = True
            Transparent = True
          end
          object BtnCapturaFoto: TSpeedButton
            Tag = 1
            Left = 4
            Top = 15
            Width = 60
            Height = 19
            Cursor = crHandPoint
            Hint = 'Capturar Imagem'
            AllowAllUp = True
            Caption = 'Capturar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Layout = blGlyphTop
            Margin = 0
            ParentFont = False
            Spacing = 1
            OnClick = BtnCapturaFotoClick
          end
          object BtnRemoveFoto: TSpeedButton
            Tag = 1
            Left = 66
            Top = 15
            Width = 60
            Height = 19
            Cursor = crHandPoint
            Hint = 'Remover Foto'
            AllowAllUp = True
            Caption = 'Remover'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Layout = blGlyphTop
            Margin = 0
            ParentFont = False
            Spacing = 1
            OnClick = BtnRemoveFotoClick
          end
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 642
        Height = 404
        inherited Panel5: TPanel
          Width = 642
          Height = 404
          inherited PagePrincipal: TPageControl
            Width = 642
            Height = 322
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 634
                Height = 249
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NUMEICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMEA30DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMECATIVO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMEA5TIPO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRCAA60DESCR'
                    Width = 268
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 634
                inherited PanelBetween: TPanel
                  Width = 240
                  inherited AdvPanel1: TAdvPanel
                    Width = 240
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 240
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 240
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
              object Label5: TLabel
                Left = 4
                Top = 39
                Width = 67
                Height = 13
                Caption = 'Tipo Padrão'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 4
                Top = 1
                Width = 30
                Height = 13
                Caption = 'Ativo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 4
                Top = 78
                Width = 52
                Height = 13
                Caption = 'Provedor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonCadastroProvedorCartao: TSpeedButton
                Left = 149
                Top = 91
                Width = 21
                Height = 21
                Hint = 'Acessa Cadastro de Provedores de Cartão'
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
                OnClick = ButtonCadastroProvedorCartaoClick
              end
              object Label8: TLabel
                Left = 4
                Top = 204
                Width = 362
                Height = 13
                Caption = 'Operação Padrão ao Enviar Dados da Redução Z para Tesouraria'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 197
                Top = 2
                Width = 120
                Height = 13
                Caption = '% Taxa ADM Cartoes'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboTipoPadrao: TRxDBComboBox
                Left = 2
                Top = 53
                Width = 145
                Height = 21
                Style = csDropDownList
                DataField = 'NUMEA5TIPO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'DINHEIRO'
                  'CHEQUE VISTA'
                  'CHEQUE PRAZO'
                  'CREDIÁRIO'
                  'CONVÊNIO'
                  'CARTÃO'
                  'CARTÃO FIDELIZAÇÃO'
                  'CREDITO ANTECIPADO'
                  'RETORNO CONSIGNAÇÃO')
                TabOrder = 1
                Values.Strings = (
                  'DIN'
                  'CHQV'
                  'CHQP'
                  'CRD'
                  'CNV'
                  'CRT'
                  'CRTF'
                  'CREDC'
                  'RTC')
                OnKeyDown = ComboAtivoKeyDown
              end
              object ComboAtivo: TRxDBComboBox
                Left = 2
                Top = 15
                Width = 145
                Height = 21
                Style = csDropDownList
                DataField = 'NUMECATIVO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'Não')
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'N')
                OnKeyDown = ComboAtivoKeyDown
              end
              object ComboCartao: TDBLookupComboBox
                Left = 2
                Top = 91
                Width = 145
                Height = 21
                DataField = 'PRCAA60DESCR'
                DataSource = DSTemplate
                TabOrder = 2
                OnKeyDown = ComboCartaoKeyDown
              end
              object GroupPlanoContas: TGroupBox
                Left = 1
                Top = 114
                Width = 610
                Height = 84
                Caption = '&Plano de Contas Associado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object PageControlPlanoContas: TPageControl
                  Left = 2
                  Top = 15
                  Width = 606
                  Height = 67
                  ActivePage = TabCredito
                  Align = alClient
                  MultiLine = True
                  RaggedRight = True
                  Style = tsFlatButtons
                  TabOrder = 0
                  object TabCredito: TTabSheet
                    Caption = '&Crédito'
                    object Label4: TLabel
                      Left = 3
                      Top = 0
                      Width = 77
                      Height = 13
                      Caption = 'Conta Crédito'
                      FocusControl = DBEdit9
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object RetornaPlanoContas: TSpeedButton
                      Left = 90
                      Top = 15
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
                    object DBEdit9: TDBEdit
                      Left = 1
                      Top = 15
                      Width = 88
                      Height = 21
                      DataField = 'PLCTA15CODCRED'
                      DataSource = DSTemplate
                      TabOrder = 0
                      OnKeyDown = DBEdit9KeyDown
                    end
                    object DBEdit10: TDBEdit
                      Left = 113
                      Top = 16
                      Width = 482
                      Height = 18
                      TabStop = False
                      AutoSize = False
                      BorderStyle = bsNone
                      DataField = 'PlanodeContasCreditoCalcField'
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
                    Caption = '&Débito'
                    ImageIndex = 1
                    object Label14: TLabel
                      Left = 3
                      Top = 0
                      Width = 73
                      Height = 13
                      Caption = 'Conta Débito'
                      FocusControl = DBEdit11
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object RetornaPlanoContasDebito: TSpeedButton
                      Left = 90
                      Top = 15
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
                    object DBEdit11: TDBEdit
                      Left = 1
                      Top = 15
                      Width = 88
                      Height = 21
                      DataField = 'PLCTA15CODDEB'
                      DataSource = DSTemplate
                      TabOrder = 0
                      OnKeyDown = DBEdit11KeyDown
                    end
                    object DBEdit14: TDBEdit
                      Left = 113
                      Top = 16
                      Width = 484
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
                object Panel4: TPanel
                  Left = 122
                  Top = 13
                  Width = 484
                  Height = 32
                  BevelInner = bvLowered
                  ParentColor = True
                  TabOrder = 1
                  object Label12: TLabel
                    Left = 2
                    Top = 2
                    Width = 480
                    Height = 28
                    Align = alClient
                    Caption = 
                      ' Dica: Sempre que este numerário for utilizado será associado na' +
                      's parcelas o plano '#13#10' de contas configurado.'
                    WordWrap = True
                  end
                end
              end
              object ComboRamo: TRxDBLookupCombo
                Left = 6
                Top = 222
                Width = 579
                Height = 21
                DropDownCount = 8
                DataField = 'OPTEICODENVTES'
                DataSource = DSTemplate
                LookupField = 'OPTEICOD'
                LookupDisplay = 'OPTEA60DESCR'
                LookupSource = dsSQLOperTes
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
              end
              object DBEdit5: TDBEdit
                Left = 195
                Top = 15
                Width = 141
                Height = 21
                DataField = 'NUMEN2TAXAADM'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBCheckBox1: TDBCheckBox
                Left = 470
                Top = 17
                Width = 145
                Height = 17
                Caption = 'Imprime Bonus Troca'
                DataField = 'NUMECBONUSTROCA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 642
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 642
            object Label1: TLabel
              Left = 10
              Top = 3
              Width = 38
              Height = 13
              Caption = 'Código'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 78
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descrição'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 330
              Top = 3
              Width = 88
              Height = 13
              Caption = 'A Vista/A Prazo'
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
              DataField = 'NUMEICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 74
              Top = 16
              Width = 247
              Height = 21
              DataField = 'NUMEA30DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object ComboVistaPrazo: TRxDBComboBox
              Left = 326
              Top = 16
              Width = 145
              Height = 21
              Style = csDropDownList
              DataField = 'NUMECVISTAPRAZO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'A Vista'
                'A Prazo'
                'Ambos')
              TabOrder = 2
              Values.Strings = (
                'V'
                'P'
                'B')
              OnKeyDown = ComboAtivoKeyDown
            end
            object DBCheckBox38: TDBCheckBox
              Left = 480
              Top = 17
              Width = 111
              Height = 17
              Caption = 'Gera Vale Troco'
              DataField = 'NUMECVALETROCO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From Numerario Where (%MFiltro)')
    object SQLTemplateNUMEICOD: TIntegerField
      Tag = 1
      Alignment = taCenter
      DisplayLabel = 'Código'
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
      Visible = False
    end
    object SQLTemplateNUMEA30DESCR: TStringField
      DisplayLabel = 'Desrcição'
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNUMECVISTAPRAZO: TStringField
      DisplayLabel = 'Vista / Prazo'
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateNUMECATIVO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Ativo'
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateNUMEA5TIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo Padrão'
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplatePRCAA13ID: TStringField
      DisplayLabel = 'Provedor Cartão'
      FieldName = 'PRCAA13ID'
      Origin = 'DB.NUMERARIO.PRCAA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePRCAA60DESCR: TStringField
      DisplayLabel = 'Provedor Cartão'
      FieldKind = fkLookup
      FieldName = 'PRCAA60DESCR'
      LookupDataSet = TableProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCAA60DESCR'
      KeyFields = 'PRCAA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.NUMERARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.NUMERARIO.REGISTRO'
    end
    object SQLTemplatePlanodeContasCreditoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanodeContasCreditoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplatePlanodeContasDebitoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanodeContasDebitoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplatePLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.NUMERARIO.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.NUMERARIO.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateOPTEICODENVTES: TIntegerField
      FieldName = 'OPTEICODENVTES'
      Origin = 'DB.NUMERARIO.OPTEICODENVTES'
    end
    object SQLTemplateNUMECVALETROCO: TStringField
      FieldName = 'NUMECVALETROCO'
      Origin = 'DB.NUMERARIO.NUMECVALETROCO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateNUMEBIMAGEM: TBlobField
      FieldName = 'NUMEBIMAGEM'
      Origin = 'DB.NUMERARIO.NUMEBIMAGEM'
      Size = 1
    end
    object SQLTemplateNUMEN2TAXAADM: TFloatField
      FieldName = 'NUMEN2TAXAADM'
      Origin = 'DB.NUMERARIO.NUMEN2TAXAADM'

    end
    object SQLTemplateNUMECBONUSTROCA: TStringField
      FieldName = 'NUMECBONUSTROCA'
      Origin = 'DB.NUMERARIO.NUMECBONUSTROCA'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Numerario'
      'set'
      '  NUMEICOD = :NUMEICOD,'
      '  NUMEA30DESCR = :NUMEA30DESCR,'
      '  NUMECVISTAPRAZO = :NUMECVISTAPRAZO,'
      '  NUMECATIVO = :NUMECATIVO,'
      '  NUMEA5TIPO = :NUMEA5TIPO,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  NUMEICOD = :OLD_NUMEICOD')
    InsertSQL.Strings = (
      'insert into Numerario'
      
        '  (NUMEICOD, NUMEA30DESCR, NUMECVISTAPRAZO, NUMECATIVO, NUMEA5TI' +
        'PO, PENDENTE, '
      '   REGISTRO)'
      'values'
      
        '  (:NUMEICOD, :NUMEA30DESCR, :NUMECVISTAPRAZO, :NUMECATIVO, :NUM' +
        'EA5TIPO, '
      '   :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from Numerario'
      'where'
      '  NUMEICOD = :OLD_NUMEICOD')
  end
  object SQLOperacaoCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OperacaoCaixa')
    Macros = <>
    Left = 14
    Top = 218
  end
  object TableProvedorCartao: TTable
    DatabaseName = 'DB'
    TableName = 'PROVEDORCARTAO'
    Left = 45
    Top = 217
  end
  object SQLOperTes: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OperacaoTesouraria')
    Macros = <>
    Left = 14
    Top = 275
    object SQLOperTesOPTEICOD: TIntegerField
      FieldName = 'OPTEICOD'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEICOD'
    end
    object SQLOperTesOPTEA60DESCR: TStringField
      FieldName = 'OPTEA60DESCR'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperTesOPTECDEBCRED: TStringField
      FieldName = 'OPTECDEBCRED'
      Origin = 'DB.OPERACAOTESOURARIA.OPTECDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLOperTesPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOTESOURARIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperTesREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOTESOURARIA.REGISTRO'
    end
    object SQLOperTesPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.OPERACAOTESOURARIA.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
  end
  object dsSQLOperTes: TDataSource
    DataSet = SQLOperTes
    Left = 45
    Top = 275
  end
  object PictureDialog: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.jpeg;*.ico;*.' +
      'emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File (*.' +
      'jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Icons (*.ico)|*.ico|E' +
      'nhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 640
    Top = 2
  end
end
