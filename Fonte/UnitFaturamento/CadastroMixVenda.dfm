inherited FormCadastroMixVenda: TFormCadastroMixVenda
  Caption = 'Mix de Venda por Volume'
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
                    FieldName = 'MIXN2PERCVOLUME'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MIXN2PERCDESCONTO'
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label24: TLabel
              Left = 15
              Top = 3
              Width = 96
              Height = 13
              Caption = '% Volume Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 129
              Top = 3
              Width = 69
              Height = 13
              Caption = '% Desconto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit16: TDBEdit
              Left = 14
              Top = 16
              Width = 103
              Height = 21
              Ctl3D = True
              DataField = 'MIXN2PERCVOLUME'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 128
              Top = 16
              Width = 103
              Height = 21
              Ctl3D = True
              DataField = 'MIXN2PERCDESCONTO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From MIXVENDA Where (%MFiltro)')
    object SQLTemplateMIXN2PERCVOLUME: TBCDField
      DisplayLabel = '% Volume Vendas'
      FieldName = 'MIXN2PERCVOLUME'
      Origin = 'DB.MIXVENDA.MIXN2PERCVOLUME'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateMIXN2PERCDESCONTO: TBCDField
      DisplayLabel = '% Desconto'
      FieldName = 'MIXN2PERCDESCONTO'
      Origin = 'DB.MIXVENDA.MIXN2PERCDESCONTO'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
  end
end
