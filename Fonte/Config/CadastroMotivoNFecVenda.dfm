inherited FormCadastroMotivoNFecVenda: TFormCadastroMotivoNFecVenda
  Caption = 'Motivos de N'#227'o Fechamento de Vendas'
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
                    FieldName = 'MTNFICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MTNFA60DESCR'
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
              Left = 123
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 111
              Height = 21
              DataField = 'MTNFICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 120
              Top = 16
              Width = 502
              Height = 21
              DataField = 'MTNFA60DESCR'
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
      'Select * From MOTIVONFECHAVENDA Where (%MFiltro)')
    object SQLTemplateMTNFICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MTNFICOD'
      Origin = 'DB.MOTIVONFECHAVENDA.MTNFICOD'
      Visible = False
    end
    object SQLTemplateMTNFA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MTNFA60DESCR'
      Origin = 'DB.MOTIVONFECHAVENDA.MTNFA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
