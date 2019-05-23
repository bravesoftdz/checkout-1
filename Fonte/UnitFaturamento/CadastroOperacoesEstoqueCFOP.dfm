inherited CadastroOperacaoEstoqueCFOP: TCadastroOperacaoEstoqueCFOP
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'ORIGEMMERC'
                    Title.Alignment = taCenter
                    Title.Caption = 'Origem'
                    Width = 54
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'CSTICMS'
                    Title.Alignment = taCenter
                    Title.Caption = 'CST'
                    Width = 44
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CSTDescricao'
                    Title.Caption = 'Descri'#231#227'o da CST do ICMS'
                    Width = 294
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'CFOPVENDANOUF'
                    Title.Alignment = taCenter
                    Width = 74
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'CFOPVENDAFORAUF'
                    Title.Alignment = taCenter
                    Width = 90
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
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
              object Label13: TLabel
                Left = 3
                Top = 12
                Width = 108
                Height = 13
                Caption = 'Origem Mercadoria'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label68: TLabel
                Left = 163
                Top = 12
                Width = 108
                Height = 13
                Caption = 'Situa'#231#227'o Tribut'#225'ria'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 4
                Top = 60
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
              object btnCfopd: TSpeedButton
                Left = 615
                Top = 71
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
              object Label5: TLabel
                Left = 4
                Top = 102
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
              object BtnCFOPF: TSpeedButton
                Left = 616
                Top = 114
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
              object ComboOrigem: TRxDBComboBox
                Left = 3
                Top = 28
                Width = 154
                Height = 21
                Style = csDropDownList
                DataField = 'ORIGEMMERC'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '0-Nacional'
                  '1-Estrangeira(importa'#231#227'o direta)'
                  '2-Estrangeira(adquirida mercaso nacional)')
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object ComboSitTrib: TRxDBComboBox
                Left = 162
                Top = 28
                Width = 479
                Height = 21
                Style = csDropDownList
                DataField = 'CSTICMS'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '00   - Tributada integralmente'
                  
                    '10   - Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225 +
                    'ria'
                  '20   - Com redu'#231#227'o de base de c'#225'lculo'
                  
                    '30   - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por substi' +
                    'tui'#231#227'o tribut'#225'ria'
                  '40   - Isenta'
                  '41   - N'#227'o tributada'
                  '50   - Suspens'#227'o'
                  '51   - Diferimento'
                  '60   - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
                  
                    '70   - Com redu'#231#227'o de base de c'#225'lculo e cobran'#231'a do ICMS por sub' +
                    'stitui'#231#227'o tribut'#225'ria'
                  '90   - Outros '
                  
                    '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito. ' +
                    '(v.2.0) '
                  '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito.'
                  
                    '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
                    'bruta.'
                  '300 - Imune.'
                  '400 - N'#227'o tributada pelo Simples Nacional (v.2.0)'
                  
                    '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
                    ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
                    ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '203 - Isen'#231#227'o do ICMS nos Simples Nacional para faixa de receita' +
                    ' bruta e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
                    'bstitu'#237'do) ou por antecipa'#231#227'o; '
                  '900 - Outros')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '10'
                  '20'
                  '30'
                  '40'
                  '41'
                  '50'
                  '51'
                  '60'
                  '70'
                  '90'
                  '101'
                  '102'
                  '103'
                  '300'
                  '400'
                  '201'
                  '202'
                  '203'
                  '500'
                  '900')
              end
              object ComboCFOPDentroUF: TRxDBLookupCombo
                Tag = 1
                Left = 4
                Top = 72
                Width = 612
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOPVENDANOUF'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 2
              end
              object ComboCFOPForaUF: TRxDBLookupCombo
                Tag = 1
                Left = 4
                Top = 115
                Width = 612
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOPVENDAFORAUF'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 3
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      
        'Select * From OPERACAOESTOQUECFOP Where (%MFiltro) and OPESICOD ' +
        '= :OPESICOD')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OPESICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUECFOP.OPESICOD'
    end
    object SQLTemplateCSTICMS: TIntegerField
      DisplayLabel = 'CST ICMS'
      FieldName = 'CSTICMS'
      Origin = 'DB.OPERACAOESTOQUECFOP.CSTICMS'
    end
    object SQLTemplateORIGEMMERC: TIntegerField
      DisplayLabel = 'Origem Merc.'
      FieldName = 'ORIGEMMERC'
      Origin = 'DB.OPERACAOESTOQUECFOP.ORIGEMMERC'
    end
    object SQLTemplateCFOPVENDANOUF: TStringField
      DisplayLabel = 'CFOP no UF'
      FieldName = 'CFOPVENDANOUF'
      Origin = 'DB.OPERACAOESTOQUECFOP.CFOPVENDANOUF'
      Size = 4
    end
    object SQLTemplateCFOPVENDAFORAUF: TStringField
      DisplayLabel = 'CFOP Fora UF'
      FieldName = 'CFOPVENDAFORAUF'
      Origin = 'DB.OPERACAOESTOQUECFOP.CFOPVENDAFORAUF'
      Size = 4
    end
    object SQLTemplateCSTDescricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'CSTDescricao'
      Size = 60
      Calculated = True
    end
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
