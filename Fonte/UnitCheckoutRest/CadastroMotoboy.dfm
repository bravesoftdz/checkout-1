inherited FormCadastroMotoboy: TFormCadastroMotoboy
  Left = 368
  Top = 154
  Caption = 'Motoboy'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
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
              Left = 7
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
              Left = 75
              Top = 3
              Width = 32
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 16
              Width = 64
              Height = 21
              DataField = 'MTBYICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 71
              Top = 16
              Width = 364
              Height = 21
              DataField = 'MTBYA30DESCR'
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
      'Select * From Motoboy Where (%MFiltro)')
    object SQLTemplateMTBYICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'MTBYICOD'
      Origin = 'DB.MOTOBOY.MTBYICOD'
      Visible = False
    end
    object SQLTemplateMTBYA30DESCR: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'MTBYA30DESCR'
      Origin = 'DB.MOTOBOY.MTBYA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
end
