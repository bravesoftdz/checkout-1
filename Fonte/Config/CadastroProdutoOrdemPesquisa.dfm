inherited FormCadastroProdutoOrdemPesquisa: TFormCadastroProdutoOrdemPesquisa
  Caption = 'Ordem de Pesquisa de Produto'
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
                    Expanded = False
                    FieldName = 'PDOPIORDEM'
                    Width = 101
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDOPA30CAMPO'
                    Width = 241
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
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 9
              Top = 4
              Width = 38
              Height = 13
              Caption = 'Ordem'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 145
              Top = 4
              Width = 39
              Height = 13
              Caption = 'Campo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 7
              Top = 17
              Width = 134
              Height = 21
              DataField = 'PDOPIORDEM'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TRxDBComboBox
              Left = 143
              Top = 17
              Width = 226
              Height = 21
              Style = csDropDownList
              DataField = 'PDOPA30CAMPO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'C'#243'digo Interno'
                'C'#243'digo Estruturado'
                'C'#243'digo de Barras'
                'C'#243'digo Antigo'
                'C'#243'digo Agrup. Grade'
                'C'#243'digo Refer'#234'ncia'
                'C'#243'digo Balan'#231'a')
              TabOrder = 1
              Values.Strings = (
                'PRODICOD'
                'PRODA30CODESTRUT'
                'PRODA60CODBAR'
                'PRODA15CODANT'
                'PRODIAGRUPGRADE'
                'PRODA60REFER'
                'PRODICODBALANCA')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From PRODUTOORDEMPESQUISA Where (%MFiltro)')
    object SQLTemplatePDOPIORDEM: TIntegerField
      Tag = 1
      DisplayLabel = 'Ordem'
      FieldName = 'PDOPIORDEM'
      Origin = 'DB.PRODUTOORDEMPESQUISA.PDOPIORDEM'
    end
    object SQLTemplatePDOPA30CAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'PDOPA30CAMPO'
      Origin = 'DB.PRODUTOORDEMPESQUISA.PDOPA30CAMPO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOORDEMPESQUISA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOORDEMPESQUISA.REGISTRO'
    end
  end
end
