inherited FormCadastroOperacoesEstoque: TFormCadastroOperacoesEstoque
  Left = 308
  Top = 5
  Caption = 'Opera'#231#245'es de Estoque'
  ClientHeight = 696
  ClientWidth = 955
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 955
    Height = 696
    inherited PanelCabecalho: TPanel
      Width = 953
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 953
        inherited Panel1: TPanel
          Width = 951
          inherited PanelNavigator: TPanel
            Width = 951
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 951
            end
          end
          inherited PanelLeft: TPanel
            Left = 494
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 953
      Height = 622
      inherited PanelBarra: TPanel
        Width = 173
        Height = 622
        inherited Button1: TRxSpeedButton
          Width = 163
        end
        inherited Button2: TRxSpeedButton
          Width = 163
        end
        inherited Button3: TRxSpeedButton
          Width = 163
          Caption = '&3 Conversor Entradas'
          Visible = True
          OnClick = Button3Click
        end
        object RxSpeedButton1: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 86
          Width = 163
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Vincular CFOP por CST'
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
          OnClick = RxSpeedButton1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Left = 173
        Width = 780
        Height = 622
        inherited Panel5: TPanel
          Width = 780
          Height = 622
          inherited PagePrincipal: TPageControl
            Top = 57
            Width = 780
            Height = 565
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 772
                Height = 492
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OPESICOD'
                    Width = 43
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESA60DESCR'
                    Width = 379
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
                Width = 772
                inherited PanelBetween: TPanel
                  Width = 378
                  inherited AdvPanel1: TAdvPanel
                    Width = 378
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 378
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 378
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
              object Label4: TLabel
                Left = 4
                Top = 40
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
                Top = 76
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
                Left = 4
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
                Left = 82
                Top = 17
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
                Left = 427
                Top = 51
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
                Left = 428
                Top = 88
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
              object Label20: TLabel
                Left = 467
                Top = 4
                Width = 297
                Height = 13
                Caption = 'Descri'#231#227'o Auxiliar para opera'#231#245'es no UF do Emitente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Label21: TLabel
                Left = 468
                Top = 36
                Width = 330
                Height = 13
                Caption = 'Descri'#231#227'o Auxiliar para opera'#231#245'es FORA da UF do Emitente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Label22: TLabel
                Left = 114
                Top = 3
                Width = 169
                Height = 13
                Caption = 'Opera'#231#227'o de Entrada ou Saida'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label23: TLabel
                Left = 297
                Top = 3
                Width = 131
                Height = 13
                Caption = 'Gera Comissionamento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label24: TLabel
                Left = 468
                Top = 72
                Width = 116
                Height = 13
                Caption = 'Atualiza Pre'#231'o Custo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object GroupPlanoContas: TGroupBox
                Left = 2
                Top = 310
                Width = 610
                Height = 84
                Caption = '&Plano de Contas Associado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
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
                Top = 115
                Width = 610
                Height = 65
                Caption = 'Estoque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
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
                  Left = 300
                  Top = 16
                  Width = 102
                  Height = 13
                  Caption = 'Movim. Financeiro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 420
                  Top = 15
                  Width = 152
                  Height = 13
                  Caption = 'Movimenta'#231#227'o Consignado'
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
                  Width = 115
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
                  Left = 300
                  Top = 31
                  Width = 115
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
                object RxDBComboBox9: TRxDBComboBox
                  Tag = 1
                  Left = 420
                  Top = 31
                  Width = 172
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MOVIMENTA_CONSIGNADO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Entrada'
                    'Sa'#237'da'
                    'N'#227'o Movimenta')
                  TabOrder = 3
                  Values.Strings = (
                    'E'
                    'S'
                    'N')
                end
              end
              object GroupImpostos: TGroupBox
                Left = 2
                Top = 180
                Width = 610
                Height = 61
                Caption = 'Impostos Pessoa Jur'#237'dica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 8
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
                  Left = 298
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
                  Left = 393
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
                object Label25: TLabel
                  Left = 492
                  Top = 15
                  Width = 54
                  Height = 13
                  Caption = 'ST Retido'
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
                  Width = 92
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
                  Left = 297
                  Top = 32
                  Width = 92
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
                  Left = 393
                  Top = 32
                  Width = 92
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
                object RxDBComboBox11: TRxDBComboBox
                  Left = 492
                  Top = 32
                  Width = 92
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CALCULAR_ST_RETIDO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular')
                  TabOrder = 4
                  Values.Strings = (
                    'S'
                    'N')
                end
              end
              object ComboSerie: TRxDBLookupCombo
                Tag = 1
                Left = 4
                Top = 17
                Width = 77
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
                Left = 4
                Top = 89
                Width = 425
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOPA5CODFORAUF'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 5
                OnKeyDown = ComboCFOPForaUFKeyDown
              end
              object ComboCFOPDentroUF: TRxDBLookupCombo
                Tag = 1
                Left = 4
                Top = 52
                Width = 425
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOPA5CODDENTROUF'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 3
                OnKeyDown = ComboCFOPDentroUFKeyDown
              end
              object GroupBox2: TGroupBox
                Left = 3
                Top = 241
                Width = 610
                Height = 61
                Caption = 'Impostos Pessoa F'#237'sica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
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
                  Left = 295
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
                  Left = 392
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
                object Label26: TLabel
                  Left = 492
                  Top = 15
                  Width = 54
                  Height = 13
                  Caption = 'ST Retido'
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
                  Width = 92
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
                  Left = 295
                  Top = 32
                  Width = 92
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
                  Left = 392
                  Top = 32
                  Width = 92
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
                object RxDBComboBox12: TRxDBComboBox
                  Left = 492
                  Top = 32
                  Width = 92
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CALCULAR_ST_RETIDO_FIS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular')
                  TabOrder = 4
                  Values.Strings = (
                    'S'
                    'N')
                end
              end
              object DBEdit3: TDBEdit
                Left = 467
                Top = 16
                Width = 291
                Height = 21
                DataField = 'OPESA60DESDENTRO'
                DataSource = DSTemplate
                TabOrder = 4
                Visible = False
              end
              object DBEdit4: TDBEdit
                Left = 468
                Top = 49
                Width = 294
                Height = 21
                DataField = 'OPESA60DESFORA'
                DataSource = DSTemplate
                TabOrder = 6
                Visible = False
              end
              object RxDBComboBox7: TRxDBComboBox
                Left = 114
                Top = 17
                Width = 176
                Height = 21
                Style = csDropDownList
                DataField = 'OPERACAO_E_S'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Entrada'
                  'Sa'#237'da')
                TabOrder = 1
                Values.Strings = (
                  'E'
                  'S')
              end
              object RxDBComboBox8: TRxDBComboBox
                Left = 297
                Top = 17
                Width = 150
                Height = 21
                Style = csDropDownList
                DataField = 'OPESCCOMISSAO'
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
              object RxDBComboBox10: TRxDBComboBox
                Tag = 1
                Left = 468
                Top = 88
                Width = 141
                Height = 21
                Style = csDropDownList
                DataField = 'ATUALIZA_PRECO_CUSTO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 11
                Values.Strings = (
                  'S'
                  'N')
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 46
            Width = 780
            Height = 11
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 780
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
    object SQLTemplateOPESA60DESDENTRO: TStringField
      FieldName = 'OPESA60DESDENTRO'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESDENTRO'
      Size = 60
    end
    object SQLTemplateOPESA60DESFORA: TStringField
      FieldName = 'OPESA60DESFORA'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESFORA'
      Size = 60
    end
    object SQLTemplateOPERACAO_E_S: TStringField
      FieldName = 'OPERACAO_E_S'
      Origin = 'DB.OPERACAOESTOQUE.OPERACAO_E_S'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCCOMISSAO: TStringField
      FieldName = 'OPESCCOMISSAO'
      Size = 1
    end
    object SQLTemplateMOVIMENTA_CONSIGNADO: TStringField
      FieldName = 'MOVIMENTA_CONSIGNADO'
      Origin = 'DB.OPERACAOESTOQUE.MOVIMENTA_CONSIGNADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateATUALIZA_PRECO_CUSTO: TStringField
      FieldName = 'ATUALIZA_PRECO_CUSTO'
      Origin = 'DB.OPERACAOESTOQUE.ATUALIZA_PRECO_CUSTO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCALCULAR_ST_RETIDO: TStringField
      FieldName = 'CALCULAR_ST_RETIDO'
      Origin = 'DB.OPERACAOESTOQUE.CALCULAR_ST_RETIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCALCULAR_ST_RETIDO_FIS: TStringField
      FieldName = 'CALCULAR_ST_RETIDO_FIS'
      Origin = 'DB.OPERACAOESTOQUE.CALCULAR_ST_RETIDO_FIS'
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
    Top = 234
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
    Top = 234
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CFOP'
      'ORDER BY CFOPA5COD')
    Macros = <>
    Left = 14
    Top = 262
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
    Top = 262
  end
end
