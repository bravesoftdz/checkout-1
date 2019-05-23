inherited FormCadastroMovimentoBanco: TFormCadastroMovimentoBanco
  Left = 70
  Top = 16
  Caption = 'Movimenta'#231#227'o Banc'#225'ria'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 78
            Height = 371
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 298
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTCRICOD'
                    Title.Caption = 'Apelido'
                    Width = 46
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Width = 51
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCICOD'
                    Width = 56
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCDLANC'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OperacaoBancoCalcField'
                    Width = 218
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCA6NROCHQ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCN2VLRCRED'
                    Width = 61
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCN2VLRDEB'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCDCHQBOMPARA'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCDCHQBAIXA'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVBCA60FAVORECIDO'
                    Visible = True
                  end>
              end
              inherited MemoDetalhes: TMemo
                Top = 217
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              Font.Style = [fsBold]
              ParentFont = False
              object Label3: TLabel
                Left = 3
                Top = 3
                Width = 148
                Height = 13
                Caption = 'Apelido da Conta Corrente'
                FocusControl = DBEditCC
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaCC: TSpeedButton
                Left = 132
                Top = 16
                Width = 21
                Height = 21
                Hint = 'Acessa Conta Corrente'
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
                OnClick = RetornaCCClick
              end
              object Label4: TLabel
                Left = 2
                Top = 40
                Width = 34
                Height = 13
                Caption = 'Banco'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 286
                Top = 40
                Width = 37
                Height = 13
                Caption = 'Titular'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LblValor: TLabel
                Left = 135
                Top = 79
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
              object Label12: TLabel
                Left = 3
                Top = 79
                Width = 83
                Height = 13
                Caption = 'Dt. Movimento'
                Color = 12572888
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label7: TLabel
                Left = 5
                Top = 115
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
              object RetornaPlanoContas: TSpeedButton
                Left = 135
                Top = 185
                Width = 21
                Height = 21
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
              object Label13: TLabel
                Left = 4
                Top = 171
                Width = 151
                Height = 13
                Caption = 'Plano de Contas Financeiro'
                FocusControl = EditPlanoContas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 155
                Top = 16
                Width = 451
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'COntaCorreneCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 5
              end
              object DBEditCC: TDBEdit
                Left = 0
                Top = 16
                Width = 129
                Height = 21
                DataField = 'CTCRICOD'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyDown = DBEditCCKeyDown
              end
              object DBEdit5: TDBEdit
                Left = 1
                Top = 54
                Width = 282
                Height = 21
                TabStop = False
                BorderStyle = bsNone
                DataField = 'BancoCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 285
                Top = 54
                Width = 322
                Height = 21
                TabStop = False
                BorderStyle = bsNone
                DataField = 'TitularCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object DBEditValor: TEvDBNumEdit
                Left = 133
                Top = 92
                Width = 131
                Height = 21
                DataSource = DSTemplate
                Decimals = 2
                EnabledBtn = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
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
                ParentFont = False
                ShowButton = False
                ShowSeparator = True
                TabOrder = 4
                OnExit = DBEditValorExit
              end
              object GroupBox1: TGroupBox
                Left = 2
                Top = 211
                Width = 608
                Height = 52
                Caption = ' Dados Cheque '
                TabOrder = 9
                object Label8: TLabel
                  Left = 7
                  Top = 13
                  Width = 44
                  Height = 13
                  Caption = 'N'#250'mero'
                  Color = 12572888
                  FocusControl = DBEdit10
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 289
                  Top = 13
                  Width = 62
                  Height = 13
                  Caption = 'Favorecido'
                  Color = 12572888
                  FocusControl = DBEdit11
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 102
                  Top = 13
                  Width = 54
                  Height = 13
                  Caption = 'Bom Para'
                  Color = 12572888
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 195
                  Top = 13
                  Width = 31
                  Height = 13
                  Caption = 'Baixa'
                  Color = 12572888
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object DBEdit10: TDBEdit
                  Left = 5
                  Top = 26
                  Width = 90
                  Height = 21
                  DataField = 'MVBCA6NROCHQ'
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
                  Left = 287
                  Top = 26
                  Width = 316
                  Height = 21
                  DataField = 'MVBCA60FAVORECIDO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit12: TDBDateEdit
                  Left = 100
                  Top = 26
                  Width = 90
                  Height = 21
                  DataField = 'MVBCDCHQBOMPARA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 1
                end
                object DBDateEdit1: TDBDateEdit
                  Left = 193
                  Top = 26
                  Width = 90
                  Height = 21
                  DataField = 'MVBCDCHQBAIXA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 2
                end
              end
              object DBDateLanc: TDBDateEdit
                Left = 1
                Top = 92
                Width = 127
                Height = 21
                DataField = 'MVBCDLANC'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit13: TDBMemo
                Left = 1
                Top = 128
                Width = 608
                Height = 40
                BevelInner = bvLowered
                BevelWidth = 0
                DataField = 'MVBCA254HIST'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 254
                ParentFont = False
                TabOrder = 6
              end
              object GroupBox2: TGroupBox
                Left = 2
                Top = 264
                Width = 608
                Height = 54
                Caption = ' Origem do Lan'#231'amento '
                TabOrder = 10
                TabStop = True
                object Label14: TLabel
                  Left = 10
                  Top = 13
                  Width = 91
                  Height = 13
                  Caption = 'ID Contas Pagar'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 362
                  Top = 13
                  Width = 105
                  Height = 13
                  Caption = 'ID Contas Receber'
                  FocusControl = DBEdit7
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 186
                  Top = 14
                  Width = 103
                  Height = 13
                  Caption = 'ID Cheque Emitido'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit4: TDBEdit
                  Left = 8
                  Top = 27
                  Width = 173
                  Height = 21
                  Color = 14737632
                  DataField = 'CTPGA13ID'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit7: TDBEdit
                  Left = 360
                  Top = 27
                  Width = 173
                  Height = 21
                  Color = 14737632
                  DataField = 'CTRCA13ID'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit9: TDBEdit
                  Left = 184
                  Top = 27
                  Width = 173
                  Height = 21
                  Color = 14737632
                  DataField = 'CQEMA13ID'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object DBEdit2: TDBEdit
                Left = 160
                Top = 184
                Width = 449
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'ContaCalcField'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 8
              end
              object EditPlanoContas: TDBEdit
                Left = 2
                Top = 185
                Width = 129
                Height = 21
                DataField = 'PLCTA15COD'
                DataSource = DSTemplate
                Enabled = False
                TabOrder = 7
                OnKeyDown = EditPlanoContasKeyDown
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'TabSheet1'
              ImageIndex = 2
            end
          end
          inherited PanelMaster: TPanel
            Top = 78
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 78
            object Label1: TLabel
              Left = 4
              Top = 3
              Width = 92
              Height = 13
              Caption = 'Nro.Lan'#231'amento'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 101
              Top = 3
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEditEmpresa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaEmpresa: TSpeedButton
              Left = 135
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
              OnClick = RetornaEmpresaClick
            end
            object Label6: TLabel
              Left = 7
              Top = 41
              Width = 106
              Height = 13
              Caption = 'Opera'#231#227'o Banc'#225'ria'
              FocusControl = DBEditOperBanc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaOperBanc: TSpeedButton
              Left = 135
              Top = 54
              Width = 21
              Height = 21
              Hint = 'Acessa Opera'#231#245'es Banc'#225'rias'
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
              OnClick = RetornaOperBancClick
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 92
              Height = 21
              DataField = 'MVBCICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEditEmpresa: TDBEdit
              Left = 99
              Top = 16
              Width = 35
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 1
              OnKeyDown = DBEditEmpresaKeyDown
            end
            object DBEdit33: TDBEdit
              Left = 158
              Top = 16
              Width = 458
              Height = 21
              TabStop = False
              AutoSize = False
              BorderStyle = bsNone
              DataField = 'EmpresaCalcField'
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
            object DBEditOperBanc: TDBEdit
              Left = 5
              Top = 54
              Width = 128
              Height = 21
              DataField = 'OPBCICOD'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnKeyDown = DBEditOperBancKeyDown
            end
            object DBEdit8: TDBEdit
              Left = 158
              Top = 54
              Width = 458
              Height = 21
              TabStop = False
              AutoSize = False
              BorderStyle = bsNone
              DataField = 'OperacaoBancoCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From MOVIMENTOBANCO Where (%MFiltro)'
      'and (%MEmpresa)')
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
    object SQLTemplateMVBCA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'MVBCA13ID'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTOBANCO.EMPRICOD'
    end
    object SQLTemplateMVBCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Nro.Lanc.'
      FieldName = 'MVBCICOD'
      Origin = 'DB.MOVIMENTOBANCO.MVBCICOD'
      Visible = False
    end
    object SQLTemplateMVBCDLANC: TDateTimeField
      DisplayLabel = 'Data Mov.'
      FieldName = 'MVBCDLANC'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDLANC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateBANCA5COD: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.MOVIMENTOBANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCTCRICOD: TIntegerField
      DisplayLabel = 'Apelido CC'
      FieldName = 'CTCRICOD'
      Origin = 'DB.MOVIMENTOBANCO.CTCRICOD'
    end
    object SQLTemplateMVBCA6NROCHQ: TStringField
      DisplayLabel = 'Nro.Cheque'
      FieldName = 'MVBCA6NROCHQ'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA6NROCHQ'
      FixedChar = True
      Size = 6
    end
    object SQLTemplateMVBCN2VLRDEB: TBCDField
      DisplayLabel = 'Vlr.D'#233'bito'
      FieldName = 'MVBCN2VLRDEB'
      Origin = 'DB.MOVIMENTOBANCO.MVBCN2VLRDEB'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateMVBCN2VLRCRED: TBCDField
      DisplayLabel = 'Vlr.Cr'#233'dito'
      FieldName = 'MVBCN2VLRCRED'
      Origin = 'DB.MOVIMENTOBANCO.MVBCN2VLRCRED'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateMVBCDCHQBOMPARA: TDateTimeField
      DisplayLabel = 'Chq.Bom Para'
      FieldName = 'MVBCDCHQBOMPARA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDCHQBOMPARA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateMVBCDCHQBAIXA: TDateTimeField
      DisplayLabel = 'Baixa Chq.'
      FieldName = 'MVBCDCHQBAIXA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDCHQBAIXA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateMVBCA254HIST: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'MVBCA254HIST'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateMVBCA60FAVORECIDO: TStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'MVBCA60FAVORECIDO'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA60FAVORECIDO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateOPBCICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Op.Banco'
      FieldName = 'OPBCICOD'
      Origin = 'DB.MOVIMENTOBANCO.OPBCICOD'
      OnChange = SQLTemplateOPBCICODChange
    end
    object SQLTemplateMVBCCALTSALD: TStringField
      DisplayLabel = 'Alt.Saldo'
      FieldName = 'MVBCCALTSALD'
      Origin = 'DB.MOVIMENTOBANCO.MVBCCALTSALD'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTOBANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTOBANCO.REGISTRO'
    end
    object SQLTemplateEmpresaCalcField: TStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkCalculated
      FieldName = 'EmpresaCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateBancoCalcField: TStringField
      DisplayLabel = 'Banco'
      FieldKind = fkCalculated
      FieldName = 'BancoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTitularCalcField: TStringField
      DisplayLabel = 'Titular'
      FieldKind = fkCalculated
      FieldName = 'TitularCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateOperacaoBancoCalcField: TStringField
      DisplayLabel = 'Opera'#231#227'o Banco'
      FieldKind = fkCalculated
      FieldName = 'OperacaoBancoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCOntaCorreneCalcField: TStringField
      DisplayLabel = 'C.C.'
      FieldKind = fkCalculated
      FieldName = 'COntaCorreneCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateContaCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'ContaCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplatePLCTA15COD: TStringField
      DisplayLabel = 'C'#243'd.Plano de Contas Financeiro'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.MOVIMENTOBANCO.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTPGA13ID: TStringField
      DisplayLabel = 'ID Contas Pagar'
      FieldName = 'CTPGA13ID'
      Origin = 'DB.MOVIMENTOBANCO.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCA13ID: TStringField
      DisplayLabel = 'ID Contas Receber'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.MOVIMENTOBANCO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCQEMA13ID: TStringField
      DisplayLabel = 'ID Cheque Emitido'
      FieldName = 'CQEMA13ID'
      Origin = 'DB.MOVIMENTOBANCO.CQEMA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLContaCorrente: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONTACORRENTE'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 448
    Top = 1
    object SQLContaCorrenteCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
    end
    object SQLContaCorrenteCTCRN2SALDOATUAL: TBCDField
      FieldName = 'CTCRN2SALDOATUAL'
      Origin = 'DB.CONTACORRENTE.CTCRN2SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLContaCorrenteCTCRDULTALTSALDO: TDateTimeField
      FieldName = 'CTCRDULTALTSALDO'
      Origin = 'DB.CONTACORRENTE.CTCRDULTALTSALDO'
    end
  end
end
