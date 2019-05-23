inherited FormCadastroMovimentosDiversosEstoquePCP: TFormCadastroMovimentosDiversosEstoquePCP
  Left = 15
  Top = 40
  Caption = 'Movimenta'#231#245'es Diversas de Estoque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Tag = 3
          Caption = '&3 Itens'
          Visible = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 78
            Height = 370
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 297
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'MOVDA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOVDDMOVIMENTO'
                    Width = 83
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOVDCCONLUIDO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OperacaoEstoqueCalcField'
                    Width = 214
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOVDA255OBS'
                    Width = 374
                    Visible = True
                  end>
              end
              inherited MemoDetalhes: TMemo
                Top = 159
                Lines.Strings = (
                  'MOVIMENTODIVERSOITEM')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 2
                Top = -1
                Width = 27
                Height = 13
                Caption = 'Data'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 2
                Top = 79
                Width = 67
                Height = 13
                Caption = 'Observa'#231#227'o'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 2
                Top = 39
                Width = 54
                Height = 13
                Caption = 'Conclu'#237'do'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBDateEdit
                Left = 2
                Top = 15
                Width = 112
                Height = 21
                DataField = 'MOVDDMOVIMENTO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 0
              end
              object DBEdit4: TDBMemo
                Left = 2
                Top = 95
                Width = 637
                Height = 42
                DataField = 'MOVDA255OBS'
                DataSource = DSTemplate
                MaxLength = 255
                TabOrder = 2
              end
              object ComboConcluido: TRxDBComboBox
                Left = 2
                Top = 55
                Width = 112
                Height = 21
                Style = csDropDownList
                DataField = 'MOVDCCONLUIDO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 1
                Values.Strings = (
                  'S'
                  'N')
              end
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
            object Label2: TLabel
              Left = 4
              Top = 37
              Width = 119
              Height = 13
              Caption = 'Opera'#231#227'o de Estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object AcessaOperacaoEstoque: TSpeedButton
              Left = 497
              Top = 51
              Width = 21
              Height = 21
              Hint = 'Acessa Opera'#231#245'es de Estoque'
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
              OnClick = AcessaOperacaoEstoqueClick
            end
            object Label6: TLabel
              Left = 119
              Top = -1
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ButtonEmpresa: TSpeedButton
              Left = 185
              Top = 15
              Width = 21
              Height = 21
              Hint = 'Acessa Cadastro Empresas'
              Enabled = False
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
              OnClick = ButtonEmpresaClick
            end
            object Label7: TLabel
              Left = 523
              Top = 37
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 15
              Width = 112
              Height = 21
              DataField = 'MOVDA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 119
              Top = 15
              Width = 64
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 1
            end
            object DBEdit6: TDBEdit
              Left = 208
              Top = 15
              Width = 426
              Height = 21
              TabStop = False
              AutoSize = False
              BorderStyle = bsNone
              DataField = 'EmpresaLookup'
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
            object DBEdit7: TDBEdit
              Left = 523
              Top = 53
              Width = 133
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              DataField = 'USUAA60LOGIN'
              DataSource = DSTemplate
              ParentColor = True
              ReadOnly = True
              TabOrder = 3
            end
            object RxDBLookupCombo1: TRxDBLookupCombo
              Left = 5
              Top = 51
              Width = 492
              Height = 21
              DropDownCount = 8
              DataField = 'OPESICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'OPESICOD'
              LookupDisplay = 'OPESICOD;OPESA60DESCR'
              LookupDisplayIndex = 1
              LookupSource = dsSQLOperacaoEstoque
              TabOrder = 4
              OnKeyDown = RxDBLookupCombo1KeyDown
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From MOVIMENTODIVERSO Where (%MFiltro)'
      'and'
      '(%MEmpresa)')
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
    object SQLTemplateMOVDA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTODIVERSO.EMPRICOD'
    end
    object SQLTemplateMOVDICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Mov.Div.'
      FieldName = 'MOVDICOD'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDICOD'
    end
    object SQLTemplateOPESICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Opera'#231#227'o de Estoque'
      FieldName = 'OPESICOD'
      Origin = 'DB.MOVIMENTODIVERSO.OPESICOD'
    end
    object SQLTemplateOperacaoEstoqueCalcField: TStringField
      DisplayLabel = 'Opera'#231#227'o Estoque'
      FieldKind = fkLookup
      FieldName = 'OperacaoEstoqueCalcField'
      LookupDataSet = SQLOperacaoEstoque
      LookupKeyFields = 'OPESICOD'
      LookupResultField = 'OPESA60DESCR'
      KeyFields = 'OPESICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateMOVDDMOVIMENTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'MOVDDMOVIMENTO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDDMOVIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateMOVDA255OBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'MOVDA255OBS'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLTemplateMOVDCCONLUIDO: TStringField
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'MOVDCCONLUIDO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCCONLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSO.REGISTRO'
    end
    object SQLTemplateEmpresaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = TblEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.MOVIMENTODIVERSO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.MOVIMENTODIVERSO.USUAICOD'
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OperacaoEstoque')
    Macros = <>
    Left = 22
    Top = 190
  end
  object SQLItens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'MOVIMENTODIVERSOITEM'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 437
    Top = 1
    object SQLItensMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItensMVDIIITEM: TIntegerField
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIIITEM'
    end
    object SQLItensPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODICOD'
    end
    object SQLItensMVDIN3QTD: TBCDField
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLItensLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object TblEmpresa: TTable
    DatabaseName = 'DB'
    TableName = 'EMPRESA'
    Left = 22
    Top = 218
  end
  object dsSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 52
    Top = 190
  end
end
