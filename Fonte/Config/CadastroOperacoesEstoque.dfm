inherited FormCadastroOperacoesEstoque: TFormCadastroOperacoesEstoque
  Left = 137
  Top = 12
  Caption = 'Opera'#231#245'es de Estoque'
  ClientHeight = 734
  ClientWidth = 962
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 962
    Height = 734
    inherited PanelCabecalho: TPanel
      Width = 960
      inherited PanelNavigator: TPanel
        Width = 960
      end
      inherited Panel2: TPanel
        Width = 960
        inherited Panel3: TPanel
          Left = 608
        end
        inherited Panel1: TPanel
          Width = 960
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 960
      Height = 660
      inherited PanelBarra: TPanel
        Height = 660
      end
      inherited PanelFundoDados: TPanel
        Width = 830
        Height = 660
        inherited Panel5: TPanel
          Width = 830
          Height = 660
          inherited PagePrincipal: TPageControl
            Top = 78
            Width = 830
            Height = 582
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 822
                Height = 509
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OPESICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESA60DESCR'
                    Width = 239
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCORIGEMDESTINO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCENTRADASAIDA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFOPA5CODDENTROUF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFOPA5CODFORAUF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCCALCIPI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCCALCICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCGERAFINANCEIRO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ACUMICOD'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 822
                inherited PanelBetween: TPanel
                  Width = 428
                end
                inherited PanelEditProcura: TPanel
                  Width = 428
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 4
                Top = 44
                Width = 111
                Height = 13
                Caption = 'CFOP Dentro Estado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 4
                Top = 82
                Width = 97
                Height = 13
                Caption = 'CFOP Fora Estado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 5
                Top = 3
                Width = 29
                Height = 13
                Caption = 'S'#233'rie'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object AcessaSeries: TSpeedButton
                Left = 178
                Top = 15
                Width = 22
                Height = 21
                Hint = 'Acessa Cadastro de Series'
                Flat = True
                Glyph.Data = {
                  E6000000424DE60000000000000076000000280000000E0000000E0000000100
                  0400000000007000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                  DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                  DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                  DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                  DD00DDDDDDDDDDDDDD00}
                OnClick = AcessaSeriesClick
              end
              object btnCfopd: TSpeedButton
                Left = 359
                Top = 55
                Width = 21
                Height = 21
                Hint = 'Acessa Cadastro CFOP'
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
                OnClick = btnCfopdClick
              end
              object BtnCFOPF: TSpeedButton
                Left = 360
                Top = 94
                Width = 21
                Height = 21
                Hint = 'Acessa Cadastro CFOP'
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
                OnClick = BtnCFOPFClick
              end
              object GroupPlanoContas: TGroupBox
                Left = 1
                Top = 404
                Width = 610
                Height = 84
                Caption = '&Plano de Contas Associado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
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
                  TabIndex = 0
                  TabOrder = 0
                  object TabCredito: TTabSheet
                    Caption = '&Cr'#233'dito'
                    object Label7: TLabel
                      Left = 3
                      Top = 0
                      Width = 77
                      Height = 13
                      Caption = 'Conta Cr'#233'dito'
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
                    Caption = '&D'#233'bito'
                    ImageIndex = 1
                    object Label14: TLabel
                      Left = 3
                      Top = 0
                      Width = 73
                      Height = 13
                      Caption = 'Conta D'#233'bito'
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
                      ' Dica: Sempre que esta opera'#231#227'o de estoque for utilizada ser'#225' as' +
                      'sociado na nota o  '#13#10' plano de contas configurado.'
                    WordWrap = True
                  end
                end
              end
              object GroupEstoque: TGroupBox
                Left = 2
                Top = 124
                Width = 610
                Height = 65
                Caption = 'Estoque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                object LabelOrigemDestino: TLabel
                  Left = 182
                  Top = 16
                  Width = 90
                  Height = 13
                  Caption = 'Origem/Destino'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 5
                  Top = 16
                  Width = 149
                  Height = 13
                  Caption = 'Movimenta'#231#227'o de Estoque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 365
                  Top = 18
                  Width = 125
                  Height = 13
                  Caption = 'Movimenta Financeiro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit7: TRxDBComboBox
                  Tag = 1
                  Left = 182
                  Top = 31
                  Width = 179
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCORIGEMDESTINO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Cliente'
                    'Fornecedor'
                    'Empresa')
                  TabOrder = 1
                  Values.Strings = (
                    'C'
                    'F'
                    'E')
                end
                object ComboMovEstoque: TRxDBComboBox
                  Tag = 1
                  Left = 5
                  Top = 31
                  Width = 172
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCENTRADASAIDA'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Entrada'
                    'Sa'#237'da'
                    'N'#227'o Movimenta'
                    'Entrada-Devolu'#231#227'o-Consigna'#231#227'o')
                  TabOrder = 0
                  Values.Strings = (
                    'E'
                    'S'
                    'N'
                    'D')
                end
                object RxDBComboBox5: TRxDBComboBox
                  Left = 365
                  Top = 32
                  Width = 172
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCGERAFINANCEIRO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  TabOrder = 2
                  Values.Strings = (
                    'S'
                    'N')
                end
              end
              object GroupImpostos: TGroupBox
                Left = 2
                Top = 192
                Width = 610
                Height = 61
                Caption = 'Impostos Pessoa Jur'#237'dica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                object Label8: TLabel
                  Left = 7
                  Top = 16
                  Width = 176
                  Height = 13
                  Caption = 'Base para c'#225'lculo dos impostos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 315
                  Top = 16
                  Width = 65
                  Height = 13
                  Caption = 'Calcular IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 202
                  Top = 16
                  Width = 77
                  Height = 13
                  Caption = 'Calcular ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 428
                  Top = 15
                  Width = 94
                  Height = 13
                  Caption = 'Subst. Tribut'#225'ria'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboBase: TRxDBComboBox
                  Left = 7
                  Top = 32
                  Width = 190
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESA18CAMPOIMP'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Valor de Compra'
                    'Valor de Venda')
                  TabOrder = 0
                  Values.Strings = (
                    'PRODN3VLRCOMPRA'
                    'PRODN3VLRVENDA')
                end
                object ComboCalcICMS: TRxDBComboBox
                  Left = 202
                  Top = 32
                  Width = 110
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCICMS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular'
                    'Diferido')
                  TabOrder = 1
                  Values.Strings = (
                    'S'
                    'N'
                    'D')
                end
                object ComboCalcIPI: TRxDBComboBox
                  Left = 315
                  Top = 32
                  Width = 110
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCIPI'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular')
                  TabOrder = 2
                  Values.Strings = (
                    'S'
                    'N')
                end
                object RxDBComboBox4: TRxDBComboBox
                  Left = 428
                  Top = 32
                  Width = 110
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCSUBST'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular')
                  TabOrder = 3
                  Values.Strings = (
                    'S'
                    'N')
                end
              end
              object ComboSerie: TRxDBLookupCombo
                Tag = 1
                Left = 0
                Top = 16
                Width = 177
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'SERIA5COD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'SERIA5COD'
                LookupDisplay = 'SERIA5COD'
                LookupSource = DSSQLSerie
                TabOrder = 0
                OnKeyDown = ComboSerieKeyDown
              end
              object ComboCFOPForaUF: TRxDBLookupCombo
                Tag = 1
                Left = 0
                Top = 95
                Width = 359
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOPA5CODFORAUF'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 2
                OnKeyDown = ComboCFOPForaUFKeyDown
              end
              object ComboCFOPDentroUF: TRxDBLookupCombo
                Tag = 1
                Left = 0
                Top = 56
                Width = 359
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOPA5CODDENTROUF'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 1
                OnKeyDown = ComboCFOPDentroUFKeyDown
              end
              object GroupBox1: TGroupBox
                Left = 2
                Top = 323
                Width = 610
                Height = 62
                Caption = 'Acumulador Fiscal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                object Label13: TLabel
                  Left = 6
                  Top = 18
                  Width = 243
                  Height = 13
                  Caption = 'C'#243'd Assoc. / Descri'#231#227'o / ICMS / IPI / ISSQN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBLookupCombo1: TRxDBLookupCombo
                  Left = 4
                  Top = 34
                  Width = 530
                  Height = 21
                  DropDownCount = 8
                  DisplayAllFields = True
                  DataField = 'ACUMICOD'
                  DataSource = DSTemplate
                  FieldsDelimiter = '/'
                  ListStyle = lsDelimited
                  LookupField = 'ACUMICOD'
                  LookupDisplay = 'ACUMICODASSOC;ACUMA60DESCR;ACUMCICMS;ACUMCIPI;ACUMCISSQN'
                  LookupSource = DSSQLAcumulador
                  TabOrder = 0
                end
              end
              object GroupBox2: TGroupBox
                Left = 2
                Top = 256
                Width = 610
                Height = 61
                Caption = 'Impostos Pessoa F'#237'sica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                object Label15: TLabel
                  Left = 7
                  Top = 16
                  Width = 176
                  Height = 13
                  Caption = 'Base para c'#225'lculo dos impostos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 315
                  Top = 16
                  Width = 65
                  Height = 13
                  Caption = 'Calcular IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 202
                  Top = 16
                  Width = 77
                  Height = 13
                  Caption = 'Calcular ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 428
                  Top = 16
                  Width = 94
                  Height = 13
                  Caption = 'Subst. Tribut'#225'ria'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBComboBox1: TRxDBComboBox
                  Left = 7
                  Top = 32
                  Width = 188
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESA18CAMPOIMPFIS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Valor de Compra'
                    'Valor de Venda')
                  TabOrder = 0
                  Values.Strings = (
                    'PRODN3VLRCOMPRA'
                    'PRODN3VLRVENDA')
                end
                object RxDBComboBox2: TRxDBComboBox
                  Left = 202
                  Top = 32
                  Width = 110
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCICMSFIS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular'
                    'Diferido')
                  TabOrder = 1
                  Values.Strings = (
                    'S'
                    'N'
                    'D')
                end
                object RxDBComboBox3: TRxDBComboBox
                  Left = 315
                  Top = 32
                  Width = 110
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCIPIFIS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular')
                  TabOrder = 2
                  Values.Strings = (
                    'S'
                    'N')
                end
                object RxDBComboBox6: TRxDBComboBox
                  Left = 428
                  Top = 32
                  Width = 110
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCSUBSTFIS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular')
                  TabOrder = 3
                  Values.Strings = (
                    'S'
                    'N')
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 46
            Width = 830
            Height = 32
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 830
            Height = 46
            object Label1: TLabel
              Left = 7
              Top = 7
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 75
              Top = 7
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 20
              Width = 64
              Height = 21
              DataField = 'OPESICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 71
              Top = 20
              Width = 474
              Height = 21
              DataField = 'OPESA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterCancel = SQLTemplateAfterCancel
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From OPERACAOESTOQUE Where (%MFiltro)')
    object SQLTemplateOPESICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
      Visible = False
    end
    object SQLTemplateOPESA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateSERIA5COD: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIA5COD'
      Origin = 'DB.OPERACAOESTOQUE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCFOPA5CODDENTROUF: TStringField
      DisplayLabel = 'CFOP Dentro Estado'
      FieldName = 'CFOPA5CODDENTROUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCFOPA5CODFORAUF: TStringField
      DisplayLabel = 'CFOP Fora Estado'
      FieldName = 'CFOPA5CODFORAUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateOPESCENTRADASAIDA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Entrada/Sa'#237'da'
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCORIGEMDESTINO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Origem/Destino'
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOESTOQUE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOESTOQUE.REGISTRO'
    end
    object SQLTemplateOPESA18CAMPOIMP: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Campo p/ Calc. Imposto'
      FieldName = 'OPESA18CAMPOIMP'
      Origin = 'DB.OPERACAOESTOQUE.OPESA18CAMPOIMP'
      FixedChar = True
      Size = 18
    end
    object SQLTemplateOPESCCALCIPI: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Calcula IPI'
      FieldName = 'OPESCCALCIPI'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCCALCICMS: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Calcula ICMS'
      FieldName = 'OPESCCALCICMS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCGERAFINANCEIRO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Mov. Financeiro'
      FieldName = 'OPESCGERAFINANCEIRO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCGERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.OPERACAOESTOQUE.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.OPERACAOESTOQUE.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
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
    object SQLTemplateACUMICOD: TIntegerField
      DisplayLabel = 'C'#243'd Acumulador'
      FieldName = 'ACUMICOD'
      Origin = 'DB.OPERACAOESTOQUE.ACUMICOD'
    end
    object SQLTemplateOPESA18CAMPOIMPFIS: TStringField
      FieldName = 'OPESA18CAMPOIMPFIS'
      Origin = 'DB.OPERACAOESTOQUE.OPESA18CAMPOIMPFIS'
      FixedChar = True
      Size = 18
    end
    object SQLTemplateOPESCCALCICMSFIS: TStringField
      FieldName = 'OPESCCALCICMSFIS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMSFIS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCCALCIPIFIS: TStringField
      FieldName = 'OPESCCALCIPIFIS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCIPIFIS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCCALCSUBST: TStringField
      FieldName = 'OPESCCALCSUBST'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCSUBST'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCCALCSUBSTFIS: TStringField
      FieldName = 'OPESCCALCSUBSTFIS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCSUBSTFIS'
      FixedChar = True
      Size = 1
    end
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM SERIE')
    Macros = <>
    Left = 14
    Top = 170
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSeriePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSerieREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
    object SQLSerieSERIINRONF: TIntegerField
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 42
    Top = 170
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CFOP'
      'ORDER BY CFOPA5COD')
    Macros = <>
    Left = 14
    Top = 198
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCFOPCFOPCVENDA: TStringField
      FieldName = 'CFOPCVENDA'
      Origin = 'DB.CFOP.CFOPCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CFOP.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CFOP.REGISTRO'
    end
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 42
    Top = 198
  end
  object SQLAcumulador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'ACUMULADOR'
      'ORDER BY'
      'ACUMA60DESCR ')
    Macros = <>
    Left = 14
    Top = 226
    object SQLAcumuladorACUMICOD: TIntegerField
      FieldName = 'ACUMICOD'
      Origin = 'DB.ACUMULADOR.ACUMICOD'
    end
    object SQLAcumuladorACUMA60DESCR: TStringField
      DisplayWidth = 40
      FieldName = 'ACUMA60DESCR'
      Origin = 'DB.ACUMULADOR.ACUMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLAcumuladorACUMICODASSOC: TIntegerField
      DisplayWidth = 5
      FieldName = 'ACUMICODASSOC'
      Origin = 'DB.ACUMULADOR.ACUMICODASSOC'
    end
    object SQLAcumuladorACUMCICMS: TStringField
      FieldName = 'ACUMCICMS'
      Origin = 'DB.ACUMULADOR.ACUMCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLAcumuladorACUMCIPI: TStringField
      FieldName = 'ACUMCIPI'
      Origin = 'DB.ACUMULADOR.ACUMCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLAcumuladorACUMCISSQN: TStringField
      FieldName = 'ACUMCISSQN'
      Origin = 'DB.ACUMULADOR.ACUMCISSQN'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLAcumulador: TDataSource
    DataSet = SQLAcumulador
    Left = 42
    Top = 226
  end
end
