inherited CadastroOperacoesEstoqueConverte: TCadastroOperacoesEstoqueConverte
  Left = 311
  Top = 143
  Caption = 'Conversor de CFOPs para Notas de Entrada'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OPESICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFOP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFOPCONVERTE'
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
              object Label4: TLabel
                Left = 11
                Top = 15
                Width = 275
                Height = 13
                Caption = 'CFOP do Emitente (Impresso na nota de compra)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 12
                Top = 117
                Width = 100
                Height = 13
                Caption = 'CFOP da Empresa '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object btnCfopd: TSpeedButton
                Left = 467
                Top = 31
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
                Left = 468
                Top = 129
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
              object Label1: TLabel
                Left = 11
                Top = 54
                Width = 265
                Height = 13
                Caption = 'Cst do Emitente (Impresso na nota de compra)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboCFOPDentroUF: TRxDBLookupCombo
                Tag = 1
                Left = 8
                Top = 32
                Width = 460
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOP'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 0
              end
              object ComboCFOPForaUF: TRxDBLookupCombo
                Tag = 1
                Left = 8
                Top = 130
                Width = 460
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CFOPCONVERTE'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                TabOrder = 1
              end
              object ComboCST: TRxDBComboBox
                Left = 8
                Top = 70
                Width = 321
                Height = 21
                Style = csDropDownList
                DataField = 'CST'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '00 Tributada integralmente'
                  '10 Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
                  '20 Com redu'#231#227'o da BC'
                  
                    '30 Isenta / n'#227'o tributada e com cobran'#231'a do ICMS por substitui'#231#227 +
                    'o tribut'#225'ria'
                  '40 Isenta'
                  '41 N'#227'o tributada'
                  '50 Com suspens'#227'o'
                  '51 Com diferimento'
                  '60 ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
                  
                    '70 Com redu'#231#227'o da BC e cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225 +
                    'ria'
                  '90 Outras')
                TabOrder = 2
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
                  '90')
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      
        'Select * From OPERACAOESTOQUECONVERSOR Where (%MFiltro) AND OPES' +
        'ICOD = :OPESICOD')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OPESICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateOPESICOD: TIntegerField
      DisplayLabel = 'Oper. Estoque'
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUECONVERSOR.OPESICOD'
    end
    object SQLTemplateCFOP: TStringField
      DisplayLabel = 'CFOP Emitente'
      FieldName = 'CFOP'
      Origin = 'DB.OPERACAOESTOQUECONVERSOR.CFOP'
      Size = 5
    end
    object SQLTemplateCFOPCONVERTE: TStringField
      DisplayLabel = 'CFOP Empresa'
      FieldName = 'CFOPCONVERTE'
      Origin = 'DB.OPERACAOESTOQUECONVERSOR.CFOPCONVERTE'
      Size = 5
    end
    object SQLTemplateCST: TIntegerField
      FieldName = 'CST'
      Origin = 'DB.OPERACAOESTOQUECONVERSOR.CST'
    end
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
  object SQLCST: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 14
    Top = 230
    object StringField1: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object StringField2: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField3: TStringField
      FieldName = 'CFOPCVENDA'
      Origin = 'DB.CFOP.CFOPCVENDA'
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CFOP.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CFOP.REGISTRO'
    end
  end
  object DSSQLCST: TDataSource
    DataSet = SQLCST
    Left = 42
    Top = 230
  end
end
