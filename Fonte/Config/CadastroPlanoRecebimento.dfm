inherited FormCadastroPlanoRecebimento: TFormCadastroPlanoRecebimento
  Left = 133
  Top = 104
  Caption = 'Cadastro de Planos de Recebimento'
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
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 798
        inherited Panel1: TPanel
          Width = 796
          inherited PanelNavigator: TPanel
            Width = 796
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 796
            end
          end
          inherited PanelLeft: TPanel
            Left = 339
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 798
      Height = 507
      inherited PanelBarra: TPanel
        Height = 507
        inherited Button3: TRxSpeedButton
          Tag = 3
          Caption = '&3 Parcelas'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 668
        Height = 507
        inherited Panel5: TPanel
          Width = 668
          Height = 507
          inherited PagePrincipal: TPageControl
            Width = 668
            Height = 425
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 660
                Height = 352
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PLRCICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCN2TXJURO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCN2TXMULTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCN2TXCRED'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCN2PERCDESC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCCDFIX'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCIDFIXNROPARC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCDFIXDVENC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCCDFIXENTR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCCATIVO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 660
                inherited PanelBetween: TPanel
                  Width = 266
                  inherited AdvPanel1: TAdvPanel
                    Width = 266
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 266
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 266
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
                Lines.Strings = (
                  'PLANORECEBIMENTOPARCELA')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 4
                Top = 4
                Width = 47
                Height = 13
                Caption = '% Juros'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 197
                Top = 4
                Width = 89
                Height = 13
                Caption = 'R$ Tx. Credi'#225'rio'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 292
                Top = 4
                Width = 69
                Height = 13
                Caption = '% Desconto'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 389
                Top = 4
                Width = 53
                Height = 13
                Caption = 'Data Fixa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 100
                Top = 4
                Width = 75
                Height = 13
                Caption = '% Acr'#233'scimo'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 2
                Top = 17
                Width = 93
                Height = 21
                DataField = 'PLRCN2TXJURO'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 194
                Top = 17
                Width = 93
                Height = 21
                DataField = 'PLRCN2TXCRED'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 290
                Top = 17
                Width = 93
                Height = 21
                DataField = 'PLRCN2PERCDESC'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object RxComboBoxDtFixa: TRxDBComboBox
                Left = 386
                Top = 17
                Width = 130
                Height = 21
                Style = csDropDownList
                DataField = 'PLRCCDFIX'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'Plano Variavel')
                TabOrder = 4
                Values.Strings = (
                  'S'
                  'N'
                  'V')
                OnChange = RxComboBoxDtFixaChange
              end
              object GroupBoxDatafixa: TGroupBox
                Left = 204
                Top = 42
                Width = 315
                Height = 68
                Caption = 'Data Fixa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                object Label10: TLabel
                  Left = 10
                  Top = 18
                  Width = 44
                  Height = 13
                  Caption = 'Entrada'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 111
                  Top = 17
                  Width = 70
                  Height = 13
                  Caption = 'Nro.Parcelas'
                  FocusControl = DBEdit8
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 213
                  Top = 17
                  Width = 63
                  Height = 13
                  Caption = 'Dia de Vcto'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBComboBox3: TRxDBComboBox
                  Left = 8
                  Top = 31
                  Width = 95
                  Height = 21
                  Style = csDropDownList
                  DataField = 'PLRCCDFIXENTR'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'S'
                    'N')
                end
                object DBEdit8: TDBEdit
                  Left = 109
                  Top = 31
                  Width = 95
                  Height = 21
                  DataField = 'PLRCIDFIXNROPARC'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit9: TDBEdit
                  Left = 211
                  Top = 31
                  Width = 95
                  Height = 21
                  Hint = 
                    '32 = proxima Segunda-Feira'#13#10'33 = proxima Ter'#231'a-Feira'#13#10'34 = proxi' +
                    'ma Quarta-Feira'#13#10'35 = proxima Quinta-Feira'#13#10'36 = proxima Sexta-F' +
                    'eira'#13#10'37 = proximo Sabado'#13#10'38 = proximo Domingo'
                  DataField = 'PLRCDFIXDVENC'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
              end
              object GroupBox1: TGroupBox
                Left = 1
                Top = 42
                Width = 200
                Height = 95
                Caption = 'C'#225'lculo de Juros'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
                object Label8: TLabel
                  Left = 6
                  Top = 15
                  Width = 30
                  Height = 13
                  Caption = 'Fator'
                end
                object Label13: TLabel
                  Left = 5
                  Top = 51
                  Width = 90
                  Height = 13
                  Caption = 'Nro. de Parcelas'
                end
                object SpeedButton1: TSpeedButton
                  Left = 128
                  Top = 28
                  Width = 65
                  Height = 58
                  Caption = '&Calcular'
                  Flat = True
                  Glyph.Data = {
                    8E040000424D8E040000000000005600000028000000250000001B0000000100
                    080000000000380400000000000000000000080000000800000000000000FF00
                    000084840000FFFF000084008400C6C6C600FFFFFF00FFFFFF00060606060606
                    0606060606060606060606060606060606060606060606060606060606060677
                    7777060606060606060606060606060606060606060606060606060606060606
                    0606060606060677777706060606060606060606060606060606060606060606
                    0606060606060606060606060606060000000606060600000000000000000000
                    0000000000000000000000000000000000000006060606777177060606000104
                    01040104010401040104010401040104010401040104010401040100060606DD
                    DDD0060606000302020202020202020202020202020202020202020202020202
                    0202040006060677111706060600030202000000020000000200000002000000
                    0200000000000000020201000606067777770606060003020205050002050500
                    0205050002050500020705050505050002020400060606DDDDD0060606000302
                    02020500020705000207050002070500020707070707070002020100060606B7
                    B707060606000302020202020202020202020202020202020202020202020202
                    02020400060606DDDDD006060600030202000000020000000200000002000000
                    0200000002000000020201000606067771770606060003020205050002050500
                    0205050002050500020505000205050002020400060606B07777060606000302
                    0202050002070500020705000207050002070500020705000202010006060677
                    7177060606000302020202020202020202020202020202020202020202020202
                    020204000606060000D006060600030202000000020000000200000002000000
                    0200000002000000020201000606064DDDD00606060003020205050002050500
                    0205050002050500020505000205050002020400060606477177060606000302
                    02020500020705000207050002070500020705000207050002020100060606D4
                    4DD0060606000302020202020202020202020202020202020202020202020202
                    0202040006060677717706060600030202000303030303030303030303030303
                    0202020202020202020201000606060707700606060003020200070707070707
                    0707070707070703020202020202020202020400060606444DD0060606000302
                    020005050505050505050505050505030202020202020202020201000606067B
                    7B07060606000302020000000000000000000000000000000202020202020202
                    02020400060606DDDDD006060600030303030303030303030303030303030303
                    0303030303030303030302000606067771770606060600000000000000000000
                    0000000000000000000000000000000000000006060606077070060606060606
                    0606060606060606060606060606060606060606060606060606060606060677
                    7177060606060606060606060606060606060606060606060606060606060606
                    0606060606060677777706060606060606060606060606060606060606060606
                    060606060606060606060606060606DDDDD0}
                  Layout = blGlyphTop
                  OnClick = SpeedButton1Click
                end
                object DBEdit7: TDBEdit
                  Left = 4
                  Top = 29
                  Width = 121
                  Height = 21
                  DataField = 'PLRCN5FATOR'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit10: TDBEdit
                  Left = 5
                  Top = 66
                  Width = 121
                  Height = 21
                  DataField = 'PLRCN5FATORPARC'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object DBEdit11: TDBEdit
                Left = 98
                Top = 17
                Width = 93
                Height = 21
                DataField = 'PLRCN2PERCACRESC'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object GroupBox2: TGroupBox
                Left = 2
                Top = 146
                Width = 519
                Height = 68
                Caption = 
                  ' % Juro ao Dia para Supermercado sem imprimir no cupom o acresci' +
                  'mo financeiro '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                object Label17: TLabel
                  Left = 9
                  Top = 17
                  Width = 79
                  Height = 13
                  Caption = '% Juro ao Dia'
                  FocusControl = DBEdit12
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit12: TDBEdit
                  Left = 7
                  Top = 31
                  Width = 95
                  Height = 21
                  DataField = 'PLRCN2PERCJURDIA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 668
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 668
            object Label1: TLabel
              Left = 9
              Top = 3
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
              Left = 77
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 497
              Top = 2
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
            object Label5: TLabel
              Left = 376
              Top = 3
              Width = 111
              Height = 13
              Caption = 'Usado  nos M'#243'dulos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 552
              Top = 2
              Width = 35
              Height = 13
              Caption = 'Senha'
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
              DataField = 'PLRCICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 73
              Top = 16
              Width = 299
              Height = 21
              DataField = 'PLRCA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object RxComboAtivo: TRxDBComboBox
              Left = 493
              Top = 15
              Width = 51
              Height = 21
              Style = csDropDownList
              DataField = 'PLRCCATIVO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 3
              Values.Strings = (
                'S'
                'N')
            end
            object ComboUsado: TRxDBComboBox
              Left = 375
              Top = 16
              Width = 114
              Height = 21
              Style = csDropDownList
              DataField = 'PLRCFATCASH'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Faturamento'
                'Checkout'
                'Ambos')
              TabOrder = 2
              Values.Strings = (
                'F'
                'C'
                'A')
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 548
              Top = 15
              Width = 51
              Height = 21
              Style = csDropDownList
              DataField = 'PLRCCSOLICITASENHA'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 4
              Values.Strings = (
                'S'
                'N')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From PlanoRecebimento Where (%MFiltro)')
    object SQLTemplatePLRCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
      Visible = False
    end
    object SQLTemplatePLRCN2TXJURO: TFloatField
      DisplayLabel = 'Juros %'
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
      DisplayFormat = '#,##0.00%'
    end
    object SQLTemplatePLRCN2TXMULTA: TFloatField
      DisplayLabel = 'Multa %'
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
      DisplayFormat = '#,##0.00%'
    end
    object SQLTemplatePLRCN2TXCRED: TFloatField
      DisplayLabel = 'Taxa Credi'#225'rio'
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplatePLRCN2PERCDESC: TFloatField
      DisplayLabel = 'Perc. Desconto'
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
      DisplayFormat = '#,##0.00%'
    end
    object SQLTemplatePLRCCDFIX: TStringField
      DisplayLabel = 'Dt. Fixa'
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePLRCIDFIXNROPARC: TIntegerField
      DisplayLabel = 'Nro.Parcelas'
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLTemplatePLRCDFIXDVENC: TIntegerField
      DisplayLabel = 'Dia Vcto'
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLTemplatePLRCCDFIXENTR: TStringField
      DisplayLabel = 'Entrada'
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePLRCCATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePLRCA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePLRCN5FATOR: TFloatField
      FieldName = 'PLRCN5FATOR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATOR'
      EditFormat = '###,#####0.00000'
    end
    object SQLTemplatePLRCN5FATORPARC: TFloatField
      FieldName = 'PLRCN5FATORPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATORPARC'
      EditFormat = '##0.0'
    end
    object SQLTemplatePLRCN2PERCACRESC: TFloatField
      DisplayLabel = '% Acr'#233'scimo'
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLTemplatePLRCFATCASH: TStringField
      FieldName = 'PLRCFATCASH'
      Origin = 'DB.PLANORECEBIMENTO.PLRCFATCASH'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePLRCN2PERCJURDIA: TFloatField
      FieldName = 'PLRCN2PERCJURDIA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCJURDIA'
    end
    object SQLTemplatePLRCCSOLICITASENHA: TStringField
      FieldName = 'PLRCCSOLICITASENHA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCSOLICITASENHA'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update PlanoRecebimento'
      'set'
      '  PLRCICOD = :PLRCICOD,'
      '  PLRCA60DESCR = :PLRCA60DESCR,'
      '  PLRCN2TXJURO = :PLRCN2TXJURO,'
      '  PLRCN2TXMULTA = :PLRCN2TXMULTA,'
      '  PLRCN2TXCRED = :PLRCN2TXCRED,'
      '  PLRCN2PERCDESC = :PLRCN2PERCDESC,'
      '  PLRCCDFIX = :PLRCCDFIX,'
      '  PLRCIDFIXNROPARC = :PLRCIDFIXNROPARC,'
      '  PLRCDFIXDVENC = :PLRCDFIXDVENC,'
      '  PLRCCDFIXENTR = :PLRCCDFIXENTR,'
      '  PLRCN2PERCENTR = :PLRCN2PERCENTR,'
      '  PLRCN2DESC = :PLRCN2DESC,'
      '  PLRCCATIVO = :PLRCCATIVO,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  PLRCICOD = :OLD_PLRCICOD')
    InsertSQL.Strings = (
      'insert into PlanoRecebimento'
      
        '  (PLRCICOD, PLRCA60DESCR, PLRCN2TXJURO, PLRCN2TXMULTA, PLRCN2TX' +
        'CRED, PLRCN2PERCDESC, '
      
        '   PLRCCDFIX, PLRCIDFIXNROPARC, PLRCDFIXDVENC, PLRCCDFIXENTR, PL' +
        'RCN2PERCENTR, '
      '   PLRCN2DESC, PLRCCATIVO, PENDENTE, REGISTRO)'
      'values'
      
        '  (:PLRCICOD, :PLRCA60DESCR, :PLRCN2TXJURO, :PLRCN2TXMULTA, :PLR' +
        'CN2TXCRED, '
      
        '   :PLRCN2PERCDESC, :PLRCCDFIX, :PLRCIDFIXNROPARC, :PLRCDFIXDVEN' +
        'C, :PLRCCDFIXENTR, '
      
        '   :PLRCN2PERCENTR, :PLRCN2DESC, :PLRCCATIVO, :PENDENTE, :REGIST' +
        'RO)')
    DeleteSQL.Strings = (
      'delete from PlanoRecebimento'
      'where'
      '  PLRCICOD = :OLD_PLRCICOD')
  end
end
