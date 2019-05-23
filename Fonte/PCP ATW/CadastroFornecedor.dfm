inherited FormCadastroFornecedor: TFormCadastroFornecedor
  Left = 202
  Top = 123
  Caption = 'Cadastro de Fornecedores do Insumo'
  ClientHeight = 581
  ClientWidth = 800
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 800
    Height = 581
    inherited PanelCabecalho: TPanel
      Width = 798
      inherited Panel2: TPanel
        Width = 798
        inherited Panel3: TPanel
          Left = 440
        end
        inherited Panel1: TPanel
          Width = 798
        end
      end
      inherited PanelNavigator: TPanel
        Width = 798
        inherited Image1: TImage
          Width = 798
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 798
      Height = 499
      inherited PanelBarra: TPanel
        Height = 499
        inherited Button3: TRxSpeedButton
          Caption = '&3 Resumo Financeiro'
          WordWrap = True
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 668
        Height = 499
        inherited Panel5: TPanel
          Width = 668
          Height = 499
          inherited PagePrincipal: TPageControl
            Width = 668
            Height = 417
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 660
                Height = 344
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FORNICOD'
                    Width = 42
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA60RAZAOSOC'
                    Width = 284
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA60NOMEFANT'
                    Width = 255
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNCFISJURID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA14CGC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA20IE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA11CPF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA10RG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA60END'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA60BAI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA60CID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA2UF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA8CEP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA15FONE1'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA15FONE2'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA15FAX'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA60EMAIL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNA60URL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNTOBS'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 660
                inherited PanelBetween: TPanel
                  Width = 266
                end
                inherited PanelEditProcura: TPanel
                  Width = 266
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 2
                Top = 2
                Width = 87
                Height = 13
                Caption = 'F'#237'sica / Jur'#237'dica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelRg: TLabel
                Left = 95
                Top = 2
                Width = 16
                Height = 13
                Caption = 'RG'
                FocusControl = DBEditRg
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object LabelCgc: TLabel
                Left = 97
                Top = 2
                Width = 27
                Height = 13
                Caption = 'CNPJ'
                FocusControl = DBEditCgc
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelCpf: TLabel
                Left = 210
                Top = 2
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEditCpf
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object LabelIe: TLabel
                Left = 213
                Top = 2
                Width = 11
                Height = 13
                Caption = 'IE'
                FocusControl = DBEditIe
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 337
                Top = 2
                Width = 83
                Height = 13
                Caption = 'Nome Fantasia'
                FocusControl = DBEditNomeFantasia
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 114
                Top = 39
                Width = 52
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 3
                Top = 40
                Width = 21
                Height = 13
                Caption = 'Cep'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 3
                Top = 77
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 309
                Top = 77
                Width = 38
                Height = 13
                Caption = 'Cidade'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 4
                Top = 117
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 32
                Top = 117
                Width = 37
                Height = 13
                Caption = 'Fone 1'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 171
                Top = 117
                Width = 37
                Height = 13
                Caption = 'Fone 2'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 307
                Top = 117
                Width = 20
                Height = 13
                Caption = 'Fax'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 444
                Top = 117
                Width = 45
                Height = 13
                Caption = 'Contato'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 4
                Top = 156
                Width = 16
                Height = 13
                Caption = 'Url'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 1
                Top = 196
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 306
                Top = 155
                Width = 30
                Height = 13
                Caption = 'Email'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonCEP: TSpeedButton
                Left = 91
                Top = 55
                Width = 21
                Height = 21
                Hint = 'Acessa Tipo de Fornecedor'
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
                OnClick = ButtonCEPClick
              end
              object Label17: TLabel
                Left = 1
                Top = 298
                Width = 104
                Height = 13
                Caption = 'C'#243'd. Contabilidade'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RxComboFisJur: TRxDBComboBox
                Left = 2
                Top = 18
                Width = 87
                Height = 21
                Style = csDropDownList
                DataField = 'FORNCFISJURID'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'F'#237'sica'
                  'Jur'#237'dica')
                TabOrder = 0
                Values.Strings = (
                  'F'
                  'J')
                OnChange = RxComboFisJurChange
              end
              object DBEditRg: TDBEdit
                Left = 92
                Top = 18
                Width = 114
                Height = 19
                DataField = 'FORNA10RG'
                DataSource = DSTemplate
                TabOrder = 1
                Visible = False
              end
              object DBEditCgc: TDBEdit
                Left = 92
                Top = 18
                Width = 114
                Height = 19
                DataField = 'FORNA14CGC'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEditCpf: TDBEdit
                Left = 208
                Top = 18
                Width = 124
                Height = 19
                DataField = 'FORNA11CPF'
                DataSource = DSTemplate
                TabOrder = 3
                Visible = False
              end
              object DBEditIe: TDBEdit
                Left = 208
                Top = 18
                Width = 124
                Height = 19
                DataField = 'FORNA20IE'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEditNomeFantasia: TDBEdit
                Left = 334
                Top = 18
                Width = 272
                Height = 19
                DataField = 'FORNA60NOMEFANT'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit2: TDBEdit
                Left = 113
                Top = 55
                Width = 493
                Height = 19
                DataField = 'FORNA60END'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit3: TDBEdit
                Left = 2
                Top = 56
                Width = 87
                Height = 21
                AutoSize = False
                DataField = 'FORNA8CEP'
                DataSource = DSTemplate
                TabOrder = 7
                OnKeyDown = DBEdit3KeyDown
              end
              object DBEdit4: TDBEdit
                Left = 2
                Top = 93
                Width = 301
                Height = 19
                DataField = 'FORNA60BAI'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit5: TDBEdit
                Left = 307
                Top = 93
                Width = 298
                Height = 19
                DataField = 'FORNA60CID'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit6: TDBEdit
                Left = 2
                Top = 133
                Width = 24
                Height = 19
                DataField = 'FORNA2UF'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object DBEdit7: TDBEdit
                Left = 30
                Top = 133
                Width = 135
                Height = 19
                DataField = 'FORNA15FONE1'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object DBEdit8: TDBEdit
                Left = 168
                Top = 133
                Width = 135
                Height = 19
                DataField = 'FORNA15FONE2'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object DBEdit9: TDBEdit
                Left = 305
                Top = 133
                Width = 135
                Height = 19
                DataField = 'FORNA15FAX'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object DBEdit10: TDBEdit
                Left = 442
                Top = 133
                Width = 163
                Height = 19
                DataField = 'FORNA60CONTATO'
                DataSource = DSTemplate
                TabOrder = 14
              end
              object DBEdit11: TDBEdit
                Left = 2
                Top = 172
                Width = 299
                Height = 19
                DataField = 'FORNA60URL'
                DataSource = DSTemplate
                TabOrder = 15
              end
              object DBEdit13: TDBEdit
                Left = 304
                Top = 171
                Width = 299
                Height = 19
                DataField = 'FORNA60EMAIL'
                DataSource = DSTemplate
                TabOrder = 16
              end
              object DBEdit12: TDBMemo
                Left = 1
                Top = 212
                Width = 604
                Height = 84
                BevelWidth = 0
                DataField = 'FORNTOBS'
                DataSource = DSTemplate
                MaxLength = 254
                TabOrder = 17
              end
              object DBEdit14: TDBEdit
                Left = 1
                Top = 314
                Width = 394
                Height = 19
                DataField = 'FORNA30CODCONTABIL'
                DataSource = DSTemplate
                TabOrder = 18
              end
            end
            object TabFinanceiro: TTabSheet
              Caption = 'Financeiro'
              ImageIndex = 2
              object Panel4: TPanel
                Left = 0
                Top = 336
                Width = 658
                Height = 53
                Align = alBottom
                Color = 14536396
                TabOrder = 0
                object GroupBox1: TGroupBox
                  Left = 5
                  Top = 2
                  Width = 349
                  Height = 48
                  TabOrder = 0
                  object Label18: TLabel
                    Left = 6
                    Top = 7
                    Width = 60
                    Height = 13
                    Caption = 'Total Pago'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label19: TLabel
                    Left = 90
                    Top = 7
                    Width = 63
                    Height = 13
                    Caption = 'Total Juros'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label20: TLabel
                    Left = 178
                    Top = 7
                    Width = 64
                    Height = 13
                    Caption = 'Total Multa'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label21: TLabel
                    Left = 261
                    Top = 7
                    Width = 62
                    Height = 13
                    Caption = 'Total Desc.'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object EditTotalPago: TCurrencyEdit
                    Left = 4
                    Top = 23
                    Width = 84
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    MaxLength = 7
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    ZeroEmpty = False
                  end
                  object EditTotalJuro: TCurrencyEdit
                    Left = 90
                    Top = 23
                    Width = 84
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    MaxLength = 7
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 1
                    ZeroEmpty = False
                  end
                  object EditTotalMulta: TCurrencyEdit
                    Left = 176
                    Top = 23
                    Width = 83
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    MaxLength = 7
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 2
                    ZeroEmpty = False
                  end
                  object EditTotalDesc: TCurrencyEdit
                    Left = 261
                    Top = 23
                    Width = 84
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    MaxLength = 7
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 3
                    ZeroEmpty = False
                  end
                end
                object GroupBox2: TGroupBox
                  Left = 357
                  Top = 2
                  Width = 297
                  Height = 48
                  TabOrder = 1
                  object Label22: TLabel
                    Left = 5
                    Top = 7
                    Width = 44
                    Height = 13
                    Caption = #192' Pagar'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label23: TLabel
                    Left = 91
                    Top = 7
                    Width = 50
                    Height = 13
                    Caption = 'Vencidas'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label24: TLabel
                    Left = 177
                    Top = 7
                    Width = 84
                    Height = 13
                    Caption = 'Total da D'#237'vida'
                    FocusControl = DBEdit1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object EditAPagar: TCurrencyEdit
                    Left = 5
                    Top = 23
                    Width = 84
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    MaxLength = 7
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    ZeroEmpty = False
                  end
                  object EditVencidas: TCurrencyEdit
                    Left = 91
                    Top = 23
                    Width = 84
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    MaxLength = 7
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 1
                    ZeroEmpty = False
                  end
                  object EditPagarVencida: TCurrencyEdit
                    Left = 177
                    Top = 23
                    Width = 115
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    MaxLength = 7
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 2
                    ZeroEmpty = False
                  end
                end
              end
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 658
                Height = 336
                Align = alClient
                BorderStyle = bsNone
                DataSource = DSSQLContasPagar
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
                OnDblClick = DBGridListaDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Width = 52
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGICOD'
                    Width = 44
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGA20DOCORIG'
                    Width = 125
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGINROPARC'
                    Width = 33
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDTEMIS'
                    Width = 68
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDVENC'
                    Width = 68
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3VLR'
                    Width = 85
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDULTPAGTO'
                    Width = 68
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN2TOTPAG'
                    Width = 84
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3JUROPAGTO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3MULTAPAGTO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3DESCPAGTO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN2DESCPROMO'
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 668
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 668
            object Label1: TLabel
              Left = 6
              Top = 0
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
            object Label3: TLabel
              Left = 76
              Top = 0
              Width = 71
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEditRzSocial
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
              Height = 19
              DataField = 'FORNICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEditRzSocial: TDBEdit
              Left = 76
              Top = 16
              Width = 529
              Height = 19
              DataField = 'FORNA60RAZAOSOC'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MNADMListagemPersonalizada: TMenuItem
      Caption = 'Listagem Personalizada'
      OnClick = MNADMListagemPersonalizadaClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Fornecedor Where (%MFiltro)')
    object SQLTemplateFORNICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
      Visible = False
    end
    object SQLTemplateFORNA60RAZAOSOC: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      OnChange = SQLTemplateFORNA60RAZAOSOCChange
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFORNA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FORNA60NOMEFANT'
      Origin = 'DB.FORNECEDOR.FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFORNA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'FORNA60CONTATO'
      Origin = 'DB.FORNECEDOR.FORNA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFORNCFISJURID: TStringField
      DisplayLabel = 'F'#237'sica / Jur'#237'dica'
      FieldName = 'FORNCFISJURID'
      Origin = 'DB.FORNECEDOR.FORNCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFORNA14CGC: TStringField
      DisplayLabel = 'CGC'
      FieldName = 'FORNA14CGC'
      Origin = 'DB.FORNECEDOR.FORNA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateFORNA20IE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'FORNA20IE'
      Origin = 'DB.FORNECEDOR.FORNA20IE'
      FixedChar = True
    end
    object SQLTemplateFORNA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'FORNA11CPF'
      Origin = 'DB.FORNECEDOR.FORNA11CPF'
      EditMask = '#########-##;0;_'
      FixedChar = True
    end
    object SQLTemplateFORNA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'FORNA10RG'
      Origin = 'DB.FORNECEDOR.FORNA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateFORNA60END: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'FORNA60END'
      Origin = 'DB.FORNECEDOR.FORNA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFORNA60BAI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'FORNA60BAI'
      Origin = 'DB.FORNECEDOR.FORNA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFORNA60CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'FORNA60CID'
      Origin = 'DB.FORNECEDOR.FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFORNA2UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'FORNA2UF'
      Origin = 'DB.FORNECEDOR.FORNA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateFORNA8CEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'FORNA8CEP'
      Origin = 'DB.FORNECEDOR.FORNA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateFORNA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'FORNA15FONE1'
      Origin = 'DB.FORNECEDOR.FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateFORNA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'FORNA15FONE2'
      Origin = 'DB.FORNECEDOR.FORNA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateFORNA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FORNA15FAX'
      Origin = 'DB.FORNECEDOR.FORNA15FAX'
      FixedChar = True
    end
    object SQLTemplateFORNA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'FORNA60EMAIL'
      Origin = 'DB.FORNECEDOR.FORNA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFORNA60URL: TStringField
      DisplayLabel = 'Url'
      FieldName = 'FORNA60URL'
      Origin = 'DB.FORNECEDOR.FORNA60URL'
      FixedChar = True
    end
    object SQLTemplateFORNTOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'FORNTOBS'
      Origin = 'DB.FORNECEDOR.FORNTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateTPFRICOD: TIntegerField
      DisplayLabel = 'Tipo Fornecedor'
      FieldName = 'TPFRICOD'
      Origin = 'UNITGESTAO_ODBC.Fornecedor.TPFRICOD'
    end
    object SQLTemplateTipoFornecedorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoFornecedorLookUp'
      LookupDataSet = SQLTipoFornecedor
      LookupKeyFields = 'TPFRICOD'
      LookupResultField = 'TPFRA60DESCR'
      KeyFields = 'TPFRICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FORNECEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FORNECEDOR.REGISTRO'
    end
    object SQLTemplateFORNA30CODCONTABIL: TStringField
      DisplayLabel = 'C'#243'd. Contabilidade'
      FieldName = 'FORNA30CODCONTABIL'
      Origin = 'DB.FORNECEDOR.FORNA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Fornecedor'
      'set'
      '  FORNICOD = :FORNICOD,'
      '  FORNA60RAZAOSOC = :FORNA60RAZAOSOC,'
      '  FORNA60NOMEFANT = :FORNA60NOMEFANT,'
      '  FORNA60CONTATO = :FORNA60CONTATO,'
      '  FORNCFISJURID = :FORNCFISJURID,'
      '  FORNA14CGC = :FORNA14CGC,'
      '  FORNA20IE = :FORNA20IE,'
      '  FORNA11CPF = :FORNA11CPF,'
      '  FORNA10RG = :FORNA10RG,'
      '  FORNA60END = :FORNA60END,'
      '  FORNA60BAI = :FORNA60BAI,'
      '  FORNA60CID = :FORNA60CID,'
      '  FORNA2UF = :FORNA2UF,'
      '  FORNA8CEP = :FORNA8CEP,'
      '  FORNA15FONE1 = :FORNA15FONE1,'
      '  FORNA15FONE2 = :FORNA15FONE2,'
      '  FORNA15FAX = :FORNA15FAX,'
      '  FORNA60EMAIL = :FORNA60EMAIL,'
      '  FORNA60URL = :FORNA60URL,'
      '  FORNTOBS = :FORNTOBS,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  FORNICOD = :OLD_FORNICOD')
    InsertSQL.Strings = (
      'insert into Fornecedor'
      
        '  (FORNICOD, FORNA60RAZAOSOC, FORNA60NOMEFANT, FORNA60CONTATO, F' +
        'ORNCFISJURID, '
      
        '   FORNA14CGC, FORNA20IE, FORNA11CPF, FORNA10RG, FORNA60END, FOR' +
        'NA60BAI, '
      
        '   FORNA60CID, FORNA2UF, FORNA8CEP, FORNA15FONE1, FORNA15FONE2, ' +
        'FORNA15FAX, '
      '   FORNA60EMAIL, FORNA60URL, FORNTOBS, PENDENTE, REGISTRO)'
      'values'
      
        '  (:FORNICOD, :FORNA60RAZAOSOC, :FORNA60NOMEFANT, :FORNA60CONTAT' +
        'O, :FORNCFISJURID, '
      
        '   :FORNA14CGC, :FORNA20IE, :FORNA11CPF, :FORNA10RG, :FORNA60END' +
        ', :FORNA60BAI, '
      
        '   :FORNA60CID, :FORNA2UF, :FORNA8CEP, :FORNA15FONE1, :FORNA15FO' +
        'NE2, :FORNA15FAX, '
      '   :FORNA60EMAIL, :FORNA60URL, :FORNTOBS, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from Fornecedor'
      'where'
      '  FORNICOD = :OLD_FORNICOD')
  end
  object SQLTipoFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TipoFornecedor')
    Macros = <>
    Left = 18
    Top = 198
  end
  object SQLContasPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'EMPRICOD, '
      'CTPGICOD, '
      'CTPGA20DOCORIG, '
      'CTPGINROPARC,'
      'CTPGDTEMIS,'
      'CTPGDVENC,'
      'CTPGN3VLR,'
      'CTPGDULTPAGTO,'
      'CTPGN2TOTPAG,'
      'CTPGN3JUROPAGTO,'
      'CTPGN3MULTAPAGTO,'
      'CTPGN3DESCPAGTO,'
      'CTPGN2DESCPROMO'
      'from CONTASPAGAR '
      'where '
      '%MFiltro '
      'Order by CTPGDVENC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 42
    Top = 230
    object SQLContasPagarEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASPAGAR.EMPRICOD'
    end
    object SQLContasPagarCTPGICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTPGICOD'
      Origin = 'DB.CONTASPAGAR.CTPGICOD'
    end
    object SQLContasPagarCTPGA20DOCORIG: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CTPGA20DOCORIG'
      Origin = 'DB.CONTASPAGAR.CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLContasPagarCTPGINROPARC: TIntegerField
      DisplayLabel = 'Parc'
      FieldName = 'CTPGINROPARC'
      Origin = 'DB.CONTASPAGAR.CTPGINROPARC'
    end
    object SQLContasPagarCTPGDTEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTPGDTEMIS'
      Origin = 'DB.CONTASPAGAR.CTPGDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLContasPagarCTPGDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLContasPagarCTPGN3VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasPagarCTPGDULTPAGTO: TDateTimeField
      DisplayLabel = 'Ult. Pagto'
      FieldName = 'CTPGDULTPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGDULTPAGTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLContasPagarCTPGN2TOTPAG: TBCDField
      DisplayLabel = 'Total Pago'
      FieldName = 'CTPGN2TOTPAG'
      Origin = 'DB.CONTASPAGAR.CTPGN2TOTPAG'
      Precision = 15
      Size = 3
    end
    object SQLContasPagarCTPGN3JUROPAGTO: TBCDField
      DisplayLabel = 'Juros Pago'
      FieldName = 'CTPGN3JUROPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3JUROPAGTO'
      Precision = 15
      Size = 3
    end
    object SQLContasPagarCTPGN3MULTAPAGTO: TBCDField
      DisplayLabel = 'Multa Paga'
      FieldName = 'CTPGN3MULTAPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3MULTAPAGTO'
      Precision = 15
      Size = 3
    end
    object SQLContasPagarCTPGN3DESCPAGTO: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'CTPGN3DESCPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3DESCPAGTO'
      Precision = 15
      Size = 3
    end
    object SQLContasPagarCTPGN2DESCPROMO: TBCDField
      DisplayLabel = 'Desc. Promoc'#227'o'
      FieldName = 'CTPGN2DESCPROMO'
      Origin = 'DB.CONTASPAGAR.CTPGN2DESCPROMO'
      Precision = 15
      Size = 3
    end
  end
  object SQLSoma: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 73
    Top = 230
  end
  object DSSQLContasPagar: TDataSource
    DataSet = SQLContasPagar
    Left = 14
    Top = 230
  end
end
