inherited FormCadastroObsProdutoRest: TFormCadastroObsProdutoRest
  Left = 197
  Caption = 'Observa'#231#245'es do Produto'
  ClientWidth = 1092
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1092
    inherited PanelCabecalho: TPanel
      Width = 1090
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 1090
        inherited Panel1: TPanel
          Width = 1088
          inherited PanelNavigator: TPanel
            Width = 1088
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 1088
              inherited BtnFecharTela: TSpeedButton
                Left = 877
              end
              object btReplicarCad: TSpeedButton
                Left = 774
                Top = 2
                Width = 89
                Height = 25
                Caption = '&Replicar Cad'
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  08000000000040020000130B0000130B0000000100000001000000000000B8D0
                  DC0075848C0093A6B0008B9DA60070A08C00678F7E005D697000A6C4B70085AE
                  9D0097BAAB007D9F91007888900081A69600597567006D7E74005F6C7200626F
                  760054685C004F615600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000141414141414
                  1414141414141414141414141414141414141414141414141414141414141414
                  1414141414141414141414141414141414141414141414141414141414141414
                  1414141414141414141414141414141414141414141414141414141414141414
                  1414141414141414141414141414141414141414141414141414141414141414
                  1414141414141414141414141414000000000000000014000000141414141414
                  1414141414140001030200101110001213130000001414141414141414000000
                  0000000203030C000D0E000F0F00141414141414140003010302070003010100
                  0A05000B0B001414141414141414000000000002030101000809000505001414
                  1414141414000301010307000301010008090005050014141414141414140000
                  0000000103010005050600000014141414141414141414141400010400001400
                  0000141414141414141414141414141414000100141414141414141414141414
                  1414141414141414000103001414141414141414141414141414141414141414
                  0001030014141414141414141414141414141414141414140001020014141414
                  1414141414141414141414141414141414000000141414141414141414141414
                  1414141414141414141414141414141414141414141414141414141414141414
                  1414141414141414141414141414141414141414141414141414141414141414
                  1414141414141414141414141414141414141414141414141414141414141414
                  1414141414141414141414141414141414141414141414141414}
                Margin = 0
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Spacing = 1
                OnClick = btReplicarCadClick
              end
            end
          end
          inherited PanelLeft: TPanel
            Left = 631
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 1090
      inherited PanelFundoDados: TPanel
        Width = 960
        inherited Panel5: TPanel
          Width = 960
          inherited PagePrincipal: TPageControl
            Top = 129
            Width = 960
            Height = 320
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 952
                Height = 247
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OBPRA1TIPO'
                    Title.Caption = 'Tipo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBPRA15SIGLA'
                    Title.Caption = 'Sigla'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoDescricao'
                    Width = 324
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR'
                    Title.Caption = 'Valor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBPRIORDEM'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 952
                inherited PanelBetween: TPanel
                  Width = 558
                  inherited AdvPanel1: TAdvPanel
                    Width = 558
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 558
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 558
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
          end
          inherited PanelMaster: TPanel
            Top = 88
            Width = 960
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 960
            Height = 88
            object Label2: TLabel
              Left = 180
              Top = 3
              Width = 27
              Height = 13
              Caption = 'Sigla'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 602
              Top = 40
              Width = 38
              Height = 13
              Caption = 'Ordem'
              FocusControl = DBEditOrdem
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 12
              Top = 3
              Width = 24
              Height = 13
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 535
              Top = 40
              Width = 29
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEditOrdem
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 12
              Top = 40
              Width = 117
              Height = 13
              Caption = 'Produto Relacionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 176
              Top = 16
              Width = 495
              Height = 21
              DataField = 'OBPRA15SIGLA'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEditOrdem: TDBEdit
              Left = 598
              Top = 53
              Width = 72
              Height = 21
              DataField = 'OBPRIORDEM'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object ComboTipo: TRxDBComboBox
              Left = 8
              Top = 16
              Width = 162
              Height = 21
              Style = csDropDownList
              DataField = 'OBPRA1TIPO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Bordas Pizzas'
                'Sabores Pizzas'
                'Obs Padronizadas')
              TabOrder = 0
              Values.Strings = (
                'B'
                'S'
                'O')
            end
            object DBEditValor: TEvDBNumEdit
              Left = 531
              Top = 53
              Width = 62
              Height = 21
              AutoHideCalculator = False
              DataField = 'VALOR'
              DataSource = DSTemplate
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
              TabOrder = 3
            end
            object ComboProduto: TRxDBLookupCombo
              Left = 8
              Top = 53
              Width = 506
              Height = 21
              DropDownCount = 8
              DataField = 'ProdutoDescricao'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From obsprodutorest Where (%MFiltro)')
    object SQLTemplateOBPRICOD: TIntegerField
      Tag = 1
      FieldName = 'OBPRICOD'
      Origin = 'DB.OBSPRODUTOREST.OBPRICOD'
      Visible = False
    end
    object SQLTemplateOBPRA1TIPO: TStringField
      FieldName = 'OBPRA1TIPO'
      Origin = 'DB.OBSPRODUTOREST.OBPRA1TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOBPRA15SIGLA: TStringField
      FieldName = 'OBPRA15SIGLA'
      Origin = 'DB.OBSPRODUTOREST.OBPRA15SIGLA'
      Size = 60
    end
    object SQLTemplatePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.OBSPRODUTOREST.PRODICOD'
    end
    object SQLTemplateVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'DB.OBSPRODUTOREST.VALOR'
      Precision = 15
      Size = 3
    end
    object SQLTemplateOBPRIORDEM: TIntegerField
      DisplayLabel = 'Ordem Nro'
      FieldName = 'OBPRIORDEM'
      Origin = 'DB.OBSPRODUTOREST.OBPRIORDEM'
    end
    object SQLTemplateProdutoDescricao: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'ProdutoDescricao'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODICOD, PRODA60DESCR FROM PRODUTO')
    Macros = <>
    Left = 840
    Top = 89
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OBSPRODUTOREST'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 498
    Top = 1
  end
end
