inherited FormCadastroFreteItem: TFormCadastroFreteItem
  Left = -8
  Top = -8
  Caption = 'Cadastro de Itens do Frete'
  ClientHeight = 716
  ClientWidth = 1366
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1366
    Height = 716
    inherited PanelCabecalho: TPanel
      Width = 1364
      inherited PanelNavigator: TPanel
        Width = 1364
      end
      inherited Panel2: TPanel
        Width = 1364
        inherited Panel3: TPanel
          Left = 1012
        end
        inherited Panel1: TPanel
          Width = 1364
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 1364
      Height = 642
      inherited PanelBarra: TPanel
        Height = 642
      end
      inherited PanelFundoDados: TPanel
        Width = 1234
        Height = 642
        inherited Panel5: TPanel
          Width = 1234
          Height = 642
          inherited PagePrincipal: TPageControl
            Top = 173
            Width = 1234
            Height = 469
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 1226
                Height = 396
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FRETA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITINOTAFISCAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODN2VLR'
                    Title.Caption = 'Valor Produto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITN2ICMS'
                    Title.Caption = 'ICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITN2VLRICMS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITN3QTDE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UNIDA5DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITA30ESPECIE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FRITA30MARCA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 1226
                inherited PanelBetween: TPanel
                  Width = 832
                end
                inherited PanelEditProcura: TPanel
                  Width = 832
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 199
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 124
            Width = 1234
            Height = 49
            object Label7: TLabel
              Left = 109
              Top = 2
              Width = 62
              Height = 13
              Caption = 'Valor Frete'
              FocusControl = DBEdit10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 213
              Top = 2
              Width = 94
              Height = 13
              Caption = 'Valor Total Frete'
              FocusControl = DBEdit11
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 5
              Top = 2
              Width = 97
              Height = 13
              Caption = 'Quantidade Total'
              FocusControl = DBEdit12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 317
              Top = 2
              Width = 87
              Height = 13
              Caption = 'Base de C'#225'lculo'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 421
              Top = 2
              Width = 29
              Height = 13
              Caption = 'ICMS'
              FocusControl = DBEdit14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit10: TDBEdit
              Left = 109
              Top = 17
              Width = 100
              Height = 21
              TabStop = False
              Color = 14737632
              DataField = 'FRETN2VLR'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 213
              Top = 17
              Width = 100
              Height = 21
              TabStop = False
              Color = 14737632
              DataField = 'FRETN2VLRTOTAL'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit12: TDBEdit
              Left = 5
              Top = 17
              Width = 100
              Height = 21
              TabStop = False
              Color = 14737632
              DataField = 'FRETN3QTDETOTAL'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit13: TDBEdit
              Left = 317
              Top = 17
              Width = 100
              Height = 21
              TabStop = False
              Color = 14737632
              DataField = 'FRETN2BASECALCULO'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit14: TDBEdit
              Left = 421
              Top = 17
              Width = 100
              Height = 21
              TabStop = False
              Color = 14737632
              DataField = 'FRETN2ICMS'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 4
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 1234
            Height = 124
            object BtnProduto: TSpeedButton
              Left = 71
              Top = 17
              Width = 24
              Height = 23
              Hint = 'Acessa Cadastro de Produtos'
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
              OnClick = BtnProdutoClick
            end
            object Label9: TLabel
              Left = 5
              Top = 4
              Width = 45
              Height = 13
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 494
              Top = 81
              Width = 60
              Height = 13
              Caption = 'Nota Fiscal'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 586
              Top = 82
              Width = 82
              Height = 13
              Caption = 'R$ Mercadoria'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 495
              Top = 41
              Width = 46
              Height = 13
              Caption = 'Unidade'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ButtonCadastroUnidade: TSpeedButton
              Left = 561
              Top = 56
              Width = 24
              Height = 23
              Hint = 'Acessa Cadastro de Unidades'
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
              OnClick = ButtonCadastroUnidadeClick
            end
            object Label4: TLabel
              Left = 416
              Top = 2
              Width = 65
              Height = 13
              Caption = 'Quantidade'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 362
              Top = 41
              Width = 42
              Height = 13
              Caption = 'Esp'#233'cie'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 6
              Top = 42
              Width = 104
              Height = 13
              Caption = 'Natureza da Carga'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 496
              Top = 4
              Width = 29
              Height = 13
              Caption = 'ICMS'
              FocusControl = DBEdit15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 574
              Top = 4
              Width = 78
              Height = 13
              Caption = 'Valor de ICMS'
              FocusControl = DBEdit16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 290
              Top = 41
              Width = 64
              Height = 13
              Caption = 'N'#186' Volumes'
              FocusControl = DBEdit17
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 6
              Top = 81
              Width = 60
              Height = 13
              Caption = 'Frete Peso'
              FocusControl = DBEdit18
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 149
              Top = 81
              Width = 114
              Height = 13
              Caption = 'SEC-CAT / Despacho'
              FocusControl = DBEdit19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 290
              Top = 81
              Width = 45
              Height = 13
              Caption = 'Ped'#225'gio'
              FocusControl = DBEdit20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 362
              Top = 81
              Width = 38
              Height = 13
              Caption = 'Outros'
              FocusControl = DBEdit21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 18
              Width = 64
              Height = 21
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit8: TDBEdit
              Left = 96
              Top = 18
              Width = 317
              Height = 21
              TabStop = False
              Color = 14737632
              DataField = 'PRODA60DESCR'
              DataSource = DSTemplate
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 494
              Top = 97
              Width = 85
              Height = 21
              DataField = 'FRITINOTAFISCAL'
              DataSource = DSTemplate
              TabOrder = 14
            end
            object DBEdit3: TDBEdit
              Left = 586
              Top = 97
              Width = 84
              Height = 21
              DataField = 'PRODN2VLR'
              DataSource = DSTemplate
              TabOrder = 15
            end
            object DBEdit4: TDBEdit
              Left = 495
              Top = 57
              Width = 64
              Height = 21
              DataField = 'UNIDICOD'
              DataSource = DSTemplate
              TabOrder = 8
              OnKeyDown = DBEdit4KeyDown
            end
            object DBEdit5: TDBEdit
              Left = 416
              Top = 18
              Width = 74
              Height = 21
              DataField = 'FRITN3QTDE'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 362
              Top = 57
              Width = 128
              Height = 21
              DataField = 'FRITA30ESPECIE'
              DataSource = DSTemplate
              TabOrder = 7
            end
            object DBEdit7: TDBEdit
              Left = 6
              Top = 58
              Width = 279
              Height = 21
              DataField = 'FRITANATCARGA'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object DBEdit9: TDBEdit
              Left = 587
              Top = 57
              Width = 82
              Height = 21
              TabStop = False
              Color = 14737632
              DataField = 'UNIDA5DESCR'
              DataSource = DSTemplate
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit15: TDBEdit
              Left = 495
              Top = 18
              Width = 74
              Height = 21
              DataField = 'FRITN2ICMS'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit16: TDBEdit
              Left = 573
              Top = 18
              Width = 94
              Height = 21
              DataField = 'FRITN2VLRICMS'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object DBEdit17: TDBEdit
              Left = 290
              Top = 57
              Width = 67
              Height = 21
              DataField = 'FRITN2VOLUMES'
              DataSource = DSTemplate
              TabOrder = 6
            end
            object DBEdit18: TDBEdit
              Left = 6
              Top = 97
              Width = 135
              Height = 21
              DataField = 'FRITN3PESO'
              DataSource = DSTemplate
              TabOrder = 10
            end
            object DBEdit19: TDBEdit
              Left = 149
              Top = 97
              Width = 135
              Height = 21
              DataField = 'FRITN2VLRCAT'
              DataSource = DSTemplate
              TabOrder = 11
            end
            object DBEdit20: TDBEdit
              Left = 290
              Top = 97
              Width = 67
              Height = 21
              DataField = 'FRITN2PEDAGIO'
              DataSource = DSTemplate
              TabOrder = 12
            end
            object DBEdit21: TDBEdit
              Left = 362
              Top = 97
              Width = 128
              Height = 21
              DataField = 'FRITN3OUTROS'
              DataSource = DSTemplate
              TabOrder = 13
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    Left = 301
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterCancel = SQLTemplateAfterCancel
    SQL.Strings = (
      'Select * From FreteItem Where'
      'FRETA13ID = :FRETA13ID AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'FRETA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateFRETA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'FRETA13ID'
      Origin = 'DB.FRETEITEM.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateFRITICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd. Frete'
      FieldName = 'FRITICOD'
      Origin = 'DB.FRETEITEM.FRITICOD'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.FRETEITEM.PRODICOD'
    end
    object SQLTemplatePRODN2VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PRODN2VLR'
      Origin = 'DB.FRETEITEM.PRODN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRITN2ICMS: TBCDField
      DisplayLabel = '% ICMS'
      FieldName = 'FRITN2ICMS'
      Origin = 'DB.FRETEITEM.FRITN2ICMS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRITN2VLRICMS: TBCDField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'FRITN2VLRICMS'
      Origin = 'DB.FRETEITEM.FRITN2VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateUNIDICOD: TIntegerField
      DisplayLabel = 'C'#243'd Unidade'
      FieldName = 'UNIDICOD'
      Origin = 'DB.FRETEITEM.UNIDICOD'
    end
    object SQLTemplateFRITN3QTDE: TBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'FRITN3QTDE'
      Origin = 'DB.FRETEITEM.FRITN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRITA30ESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'FRITA30ESPECIE'
      Origin = 'DB.FRETEITEM.FRITA30ESPECIE'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateFRITA30MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'FRITA30MARCA'
      Origin = 'DB.FRETEITEM.FRITA30MARCA'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.FRETEITEM.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FRETEITEM.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = QueryProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateUNIDA5DESCR: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkLookup
      FieldName = 'UNIDA5DESCR'
      LookupDataSet = QueryUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA5DESCR'
      KeyFields = 'UNIDICOD'
      Size = 10
      Lookup = True
    end
    object SQLTemplateFRITINOTAFISCAL: TStringField
      FieldName = 'FRITINOTAFISCAL'
      Origin = 'DB.FRETEITEM.FRITINOTAFISCAL'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateFRITN2VLRNOTA: TBCDField
      FieldName = 'FRITN2VLRNOTA'
      Origin = 'DB.FRETEITEM.FRITN2VLRNOTA'
      Precision = 15
      Size = 2
    end
    object SQLTemplateCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.FRETEITEM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateFRITANATCARGA: TStringField
      FieldName = 'FRITANATCARGA'
      Origin = 'DB.FRETEITEM.FRITANATCARGA'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateFRITN2PEDAGIO: TBCDField
      FieldName = 'FRITN2PEDAGIO'
      Origin = 'DB.FRETEITEM.FRITN2PEDAGIO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateFRITN2VLRCAT: TBCDField
      FieldName = 'FRITN2VLRCAT'
      Origin = 'DB.FRETEITEM.FRITN2VLRCAT'
      Precision = 15
      Size = 2
    end
    object SQLTemplateFRITN2VLRVALOREM: TBCDField
      FieldName = 'FRITN2VLRVALOREM'
      Origin = 'DB.FRETEITEM.FRITN2VLRVALOREM'
      Precision = 15
      Size = 2
    end
    object SQLTemplateFRITN2VOLUMES: TBCDField
      FieldName = 'FRITN2VOLUMES'
      Origin = 'DB.FRETEITEM.FRITN2VOLUMES'
      Precision = 15
      Size = 2
    end
    object SQLTemplateFRITN3OUTROS: TBCDField
      FieldName = 'FRITN3OUTROS'
      Origin = 'DB.FRETEITEM.FRITN3OUTROS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateFRITN3PESO: TBCDField
      FieldName = 'FRITN3PESO'
      Origin = 'DB.FRETEITEM.FRITN3PESO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateFRITN4PERCVALOREM: TBCDField
      FieldName = 'FRITN4PERCVALOREM'
      Origin = 'DB.FRETEITEM.FRITN4PERCVALOREM'
      Precision = 15
    end
  end
  object QueryProduto: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODICOD,PRODA60DESCR,PRODN3VLRVENDA,ICMSICOD '
      'FROM PRODUTO')
    Left = 437
    Top = 1
    object QueryProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object QueryProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object QueryProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object QueryProdutoICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object QueryProdutoICMSN2ALIQUOTA: TStringField
      FieldKind = fkLookup
      FieldName = 'ICMSN2ALIQUOTA'
      LookupDataSet = QueryIcms
      LookupKeyFields = 'ICMSICOD'
      LookupResultField = 'ICMSN2ALIQUOTA'
      KeyFields = 'ICMSICOD'
      Size = 60
      Lookup = True
    end
  end
  object QueryUnidade: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT UNIDICOD, UNIDA5DESCR FROM UNIDADE')
    Left = 465
    Top = 1
  end
  object QueryIcms: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT ICMSICOD,ICMSN2ALIQUOTA FROM'
      'ICMS')
    Left = 493
    Top = 1
  end
end
