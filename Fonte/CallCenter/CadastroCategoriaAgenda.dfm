inherited FormCadastroCategoriaAgenda: TFormCadastroCategoriaAgenda
  Top = 129
  Caption = 'Cadastro Categorias da Agenda'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 49
            Height = 400
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 327
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CATEICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CATEA30DESCR'
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
          inherited PanelMaster: TPanel
            Top = 49
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 49
            object Label1: TLabel
              Left = 8
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 102
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 7
              Top = 18
              Width = 86
              Height = 21
              DataField = 'CATEICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEditDescr: TDBEdit
              Left = 101
              Top = 18
              Width = 246
              Height = 21
              DataField = 'CATEA30DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From CATEGORIAAGENDA Where (%MFiltro)')
    object SQLTemplateCATEICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CATEICOD'
      Origin = 'DB.CATEGORIAAGENDA.CATEICOD'
      Visible = False
    end
    object SQLTemplateCATEA30DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CATEA30DESCR'
      Origin = 'DB.CATEGORIAAGENDA.CATEA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
end
