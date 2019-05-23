inherited FormCadastroContaCorrente: TFormCadastroContaCorrente
  Left = 219
  Top = 52
  Caption = 'Contas Correntes'
  ClientHeight = 579
  ClientWidth = 844
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 844
    Height = 579
    inherited PanelCabecalho: TPanel
      Width = 842
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 842
        inherited Panel1: TPanel
          Width = 840
          inherited PanelNavigator: TPanel
            Width = 840
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 840
            end
          end
          inherited PanelLeft: TPanel
            Left = 383
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 842
      Height = 505
      inherited PanelBarra: TPanel
        Height = 505
      end
      inherited PanelFundoDados: TPanel
        Width = 712
        Height = 505
        inherited Panel5: TPanel
          Width = 712
          Height = 505
          inherited PagePrincipal: TPageControl
            Top = 132
            Width = 712
            Height = 373
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 704
                Height = 300
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTCRICOD'
                    Width = 43
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BANCA5COD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRA15AGENCIA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRA15NUMERO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRA60TITULAR'
                    Width = 248
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRDABERTURA'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRN2LIMITE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRN2SALDOATUAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTCRDULTALTSALDO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 704
                inherited PanelBetween: TPanel
                  Width = 310
                  inherited AdvPanel1: TAdvPanel
                    Width = 310
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 310
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 310
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 187
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 12
                Top = 3
                Width = 37
                Height = 13
                Caption = 'Titular'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 13
                Top = 37
                Width = 35
                Height = 13
                Caption = 'Limite'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 12
                Top = 73
                Width = 64
                Height = 13
                Caption = 'Saldo Atual'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 173
                Top = 73
                Width = 146
                Height = 13
                Caption = #218'ltima Altera'#231#227'o do Saldo'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 173
                Top = 38
                Width = 109
                Height = 13
                Caption = 'C'#243'd. Conta Cont'#225'bil'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 13
                Top = 106
                Width = 46
                Height = 13
                Caption = 'Instru'#231#227'o'
              end
              object RetornaInstrucao: TSpeedButton
                Left = 101
                Top = 121
                Width = 21
                Height = 20
                Hint = 'Acessa Instru'#231#227'o Banco'
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
                OnClick = RetornaBancoClick
              end
              object Label23: TLabel
                Left = 8
                Top = 279
                Width = 170
                Height = 13
                Caption = 'Valor Limite para Gerar Boleto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit4: TDBEdit
                Left = 12
                Top = 16
                Width = 505
                Height = 21
                DataField = 'CTCRA60TITULAR'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TEvDBNumEdit
                Left = 12
                Top = 50
                Width = 150
                Height = 21
                AutoHideCalculator = False
                DataField = 'CTCRN2LIMITE'
                DataSource = DSTemplate
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
                TabOrder = 1
              end
              object EvDBNumEdit1: TDBEdit
                Left = 12
                Top = 85
                Width = 150
                Height = 21
                TabStop = False
                DataField = 'CTCRN2SALDOATUAL'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 169
                Top = 85
                Width = 348
                Height = 21
                TabStop = False
                DataField = 'CTCRDULTALTSALDO'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 4
              end
              object DBEdit7: TDBEdit
                Left = 169
                Top = 50
                Width = 348
                Height = 21
                DataField = 'CTCRA30CODCONTABIL'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object GroupBox1: TGroupBox
                Left = 8
                Top = 162
                Width = 510
                Height = 111
                Caption = ' Cedente - Dados para emiss'#227'o boleto laser '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                object Label11: TLabel
                  Left = 12
                  Top = 18
                  Width = 88
                  Height = 13
                  Caption = 'C'#243'digo Cedente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 208
                  Top = 18
                  Width = 83
                  Height = 13
                  Caption = 'D'#237'gito Cedente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 305
                  Top = 18
                  Width = 46
                  Height = 13
                  Caption = 'Carteira'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 434
                  Top = 18
                  Width = 32
                  Height = 13
                  Caption = 'Posto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 9
                  Top = 62
                  Width = 143
                  Height = 13
                  Caption = 'Nosso N'#250'mero  (pr'#243'ximo)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 371
                  Top = 18
                  Width = 49
                  Height = 13
                  Caption = 'Varia'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 205
                  Top = 61
                  Width = 52
                  Height = 13
                  Caption = 'Conv'#234'nio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 304
                  Top = 60
                  Width = 80
                  Height = 13
                  Caption = 'Lote Remessa'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 398
                  Top = 60
                  Width = 76
                  Height = 13
                  Caption = 'Dias Protesto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit10: TDBEdit
                  Left = 9
                  Top = 31
                  Width = 188
                  Height = 21
                  DataField = 'CTCRA15CEDENTECOD'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit11: TDBEdit
                  Left = 205
                  Top = 31
                  Width = 88
                  Height = 21
                  DataField = 'CTCRA15CEDENTEDIGCOD'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit12: TDBEdit
                  Left = 302
                  Top = 31
                  Width = 59
                  Height = 21
                  DataField = 'CTCRA15CARTEIRACOD'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit13: TDBEdit
                  Left = 430
                  Top = 31
                  Width = 65
                  Height = 21
                  DataField = 'CTCRA15POSTO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object DBEdit14: TDBEdit
                  Left = 9
                  Top = 75
                  Width = 188
                  Height = 21
                  DataField = 'CTCRINOSSONUMERO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  MaxLength = 7
                  ParentFont = False
                  TabOrder = 5
                end
                object dbedtCTCRA15CARTEIRAVARIACAO: TDBEdit
                  Left = 368
                  Top = 31
                  Width = 54
                  Height = 21
                  DataField = 'CTCRA15CARTEIRAVARIACAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object dbedtCTCRA15NUMEROCONVENIO: TDBEdit
                  Left = 205
                  Top = 75
                  Width = 88
                  Height = 21
                  DataField = 'CTCRA15NUMEROCONVENIO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object DBEdit15: TDBEdit
                  Left = 303
                  Top = 74
                  Width = 88
                  Height = 21
                  DataField = 'LOTEREMESSABANCO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                end
                object DBEdit18: TDBEdit
                  Left = 396
                  Top = 74
                  Width = 88
                  Height = 21
                  DataField = 'DIAS_PROTESTO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
              end
              object DBEdit16: TDBEdit
                Left = 12
                Top = 121
                Width = 88
                Height = 21
                DataField = 'CODIGO'
                DataSource = DSTemplate
                TabOrder = 6
                OnKeyDown = DBEdit16KeyDown
              end
              object DBEdit17: TDBEdit
                Left = 124
                Top = 122
                Width = 394
                Height = 18
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'NomeInstrucaoCalcFields'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit19: TDBEdit
                Left = 8
                Top = 291
                Width = 174
                Height = 21
                TabStop = False
                DataField = 'VALOR_LIMITE_BOLETO'
                DataSource = DSTemplate
                TabOrder = 8
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 117
            Width = 712
            Height = 15
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 712
            Height = 117
            object Label1: TLabel
              Left = 4
              Top = 39
              Width = 34
              Height = 13
              Caption = 'Banco'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaBanco: TSpeedButton
              Left = 74
              Top = 52
              Width = 21
              Height = 21
              Hint = 'Acessa Banco'
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
              OnClick = RetornaBancoClick
            end
            object Label2: TLabel
              Left = 4
              Top = 79
              Width = 70
              Height = 13
              Caption = 'Nro. Ag'#234'ncia'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 200
              Top = 79
              Width = 55
              Height = 13
              Caption = 'Conta Nro'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 4
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
            object Label9: TLabel
              Left = 408
              Top = 79
              Width = 98
              Height = 13
              Caption = 'Data de Abertura'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 322
              Top = 79
              Width = 69
              Height = 13
              Caption = 'D'#237'gito Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 104
              Top = 79
              Width = 81
              Height = 13
              Caption = 'D'#237'gito Ag'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 52
              Width = 68
              Height = 21
              DataField = 'BANCA5COD'
              DataSource = DSTemplate
              TabOrder = 1
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit33: TDBEdit
              Left = 97
              Top = 52
              Width = 414
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'BancoCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit2: TDBEdit
              Left = 3
              Top = 92
              Width = 94
              Height = 21
              DataField = 'CTCRA15AGENCIA'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit3: TDBEdit
              Left = 199
              Top = 92
              Width = 116
              Height = 21
              DataField = 'CTCRA15NUMERO'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 3
              Top = 16
              Width = 513
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = 'Selecione uma empresa...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRICOD;EMPRA60RAZAOSOC'
              LookupSource = DSSQLEmpresa
              TabOrder = 0
            end
            object DBDateEdit1: TDBDateEdit
              Left = 406
              Top = 92
              Width = 110
              Height = 21
              DataField = 'CTCRDABERTURA'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 7
            end
            object DBEdit9: TDBEdit
              Left = 320
              Top = 92
              Width = 80
              Height = 21
              DataField = 'CTCRA15DIGCONTA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit8: TDBEdit
              Left = 103
              Top = 92
              Width = 90
              Height = 21
              DataField = 'CTCRA15DIGAGENCIA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
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
      'Select * From CONTACORRENTE Where (%MFiltro) and (%MEmpresa)')
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
    object SQLTemplateCTCRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
      Visible = False
    end
    object SQLTemplateEMPRICOD: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTACORRENTE.EMPRICOD'
    end
    object SQLTemplateBANCA5COD: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONTACORRENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateBancoCalcField: TStringField
      DisplayLabel = 'Banco'
      FieldKind = fkCalculated
      FieldName = 'BancoCalcField'
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTCRA15AGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTCRA15AGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15NUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CTCRA15NUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA60TITULAR: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCTCRDABERTURA: TDateTimeField
      DisplayLabel = 'Data Abertura'
      FieldName = 'CTCRDABERTURA'
      Origin = 'DB.CONTACORRENTE.CTCRDABERTURA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTCRN2LIMITE: TFloatField
      DisplayLabel = 'Limite'
      FieldName = 'CTCRN2LIMITE'
      Origin = 'DB.CONTACORRENTE.CTCRN2LIMITE'
    end
    object SQLTemplateCTCRN2SALDOATUAL: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'CTCRN2SALDOATUAL'
      Origin = 'DB.CONTACORRENTE.CTCRN2SALDOATUAL'
      Visible = False
    end
    object SQLTemplateTMBCICOD: TIntegerField
      FieldName = 'TMBCICOD'
      Origin = 'DB.CONTACORRENTE.TMBCICOD'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTACORRENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTACORRENTE.REGISTRO'
    end
    object SQLTemplateCTCRDULTALTSALDO: TDateTimeField
      DisplayLabel = #218'lt. Alt. Saldo'
      FieldName = 'CTCRDULTALTSALDO'
      Origin = 'DB.CONTACORRENTE.CTCRDULTALTSALDO'
      Visible = False
      DisplayFormat = 'dddddd hh:nn:ss'
    end
    object SQLTemplateCTCRA30CODCONTABIL: TStringField
      DisplayLabel = 'Cod. Conta Cont'#225'bil'
      FieldName = 'CTCRA30CODCONTABIL'
      Origin = 'DB.CONTACORRENTE.CTCRA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCTCRA15CEDENTECOD: TStringField
      FieldName = 'CTCRA15CEDENTECOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CEDENTECOD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15CEDENTEDIGCOD: TStringField
      FieldName = 'CTCRA15CEDENTEDIGCOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CEDENTEDIGCOD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15DIGAGENCIA: TStringField
      FieldName = 'CTCRA15DIGAGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGAGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15DIGCONTA: TStringField
      FieldName = 'CTCRA15DIGCONTA'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGCONTA'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15CARTEIRACOD: TStringField
      FieldName = 'CTCRA15CARTEIRACOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CARTEIRACOD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15DIGBANCO: TStringField
      FieldName = 'CTCRA15DIGBANCO'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGBANCO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA15POSTO: TStringField
      FieldName = 'CTCRA15POSTO'
      Origin = 'DB.CONTACORRENTE.CTCRA15POSTO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTCRA150LOGOBANCO: TStringField
      FieldName = 'CTCRA150LOGOBANCO'
      Origin = 'DB.CONTACORRENTE.CTCRA150LOGOBANCO'
      Size = 150
    end
    object SQLTemplateCTCRINOSSONUMERO: TIntegerField
      FieldName = 'CTCRINOSSONUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRINOSSONUMERO'
    end
    object SQLTemplateCTCRA15CARTEIRAVARIACAO: TStringField
      FieldName = 'CTCRA15CARTEIRAVARIACAO'
      Origin = 'DB.CONTACORRENTE.CTCRA15CARTEIRAVARIACAO'
      Size = 15
    end
    object SQLTemplateCTCRA15NUMEROCONVENIO: TStringField
      FieldName = 'CTCRA15NUMEROCONVENIO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMEROCONVENIO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateLOTEREMESSABANCO: TIntegerField
      FieldName = 'LOTEREMESSABANCO'
      Origin = 'DB.CONTACORRENTE.LOTEREMESSABANCO'
    end
    object SQLTemplateCTRCINOSSONUMERO: TIntegerField
      FieldName = 'CTRCINOSSONUMERO'
      Origin = 'DB.CONTACORRENTE.CTRCINOSSONUMERO'
    end
    object SQLTemplateCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DB.CONTACORRENTE.CODIGO'
      Size = 10
    end
    object SQLTemplateNomeInstrucaoCalcFields: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeInstrucaoCalcFields'
      Size = 100
      Calculated = True
    end
    object SQLTemplateDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
      Origin = 'DB.CONTACORRENTE.DIAS_PROTESTO'
    end
    object SQLTemplateVALOR_LIMITE_BOLETO: TFloatField
      FieldName = 'VALOR_LIMITE_BOLETO'
      Origin = 'DB.CONTACORRENTE.VALOR_LIMITE_BOLETO'
      DisplayFormat = '##0.00'
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT EMPRICOD, EMPRA60RAZAOSOC FROM EMPRESA')
    Macros = <>
    Left = 437
    Top = 1
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
    Left = 465
    Top = 1
  end
end
