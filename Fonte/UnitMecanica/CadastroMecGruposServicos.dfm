inherited FormCadastroMecGrupoServicos: TFormCadastroMecGrupoServicos
  Caption = 'Grupos de Servi'#231'os'
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
              object Label1: TLabel
                Left = 16
                Top = 8
                Width = 38
                Height = 13
                Caption = 'C'#243'digo'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 16
                Top = 68
                Width = 102
                Height = 13
                Caption = 'Grupo de Servi'#231'os'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 24
                Width = 134
                Height = 21
                Color = 12572888
                DataField = 'ORDGRPSID'
                DataSource = DSTemplate
                Enabled = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 16
                Top = 84
                Width = 524
                Height = 21
                DataField = 'ORDA40DESCGROUPSERV'
                DataSource = DSTemplate
                TabOrder = 1
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From ORD_GROUPSERV Where (%MFiltro)')
    object SQLTemplateORDGRPSID: TIntegerField
      Tag = 1
      FieldName = 'ORDGRPSID'
      Origin = 'DB.ORD_GROUPSERV.ORDGRPSID'
    end
    object SQLTemplateORDA40DESCGROUPSERV: TStringField
      DisplayLabel = 'Grupo de Servi'#231'os'
      FieldName = 'ORDA40DESCGROUPSERV'
      Origin = 'DB.ORD_GROUPSERV.ORDA40DESCGROUPSERV'
      Size = 40
    end
  end
end
