inherited FormCadastroMotivoAfastamento: TFormCadastroMotivoAfastamento
  Caption = 'Motivos de Afastamento'
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
                    FieldName = 'MTAFICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MTAFA30DESCR'
                    Width = 324
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
              Left = 11
              Top = 4
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
              Left = 73
              Top = 4
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
            object DBEdit1: TDBEdit
              Left = 7
              Top = 17
              Width = 57
              Height = 21
              DataField = 'MTAFICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 69
              Top = 17
              Width = 306
              Height = 21
              DataField = 'MTAFA30DESCR'
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
      'Select * From MotivoAfastamento Where (%MFiltro)')
    object SQLTemplateMTAFICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MTAFICOD'
      Origin = 'DB.MOTIVOAFASTAMENTO.MTAFICOD'
      Visible = False
    end
    object SQLTemplateMTAFA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MTAFA30DESCR'
      Origin = 'DB.MOTIVOAFASTAMENTO.MTAFA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
end
