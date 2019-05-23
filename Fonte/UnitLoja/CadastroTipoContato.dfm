inherited FormCadastroTipoContatoCobranca: TFormCadastroTipoContatoCobranca
  Caption = 'Tipos de Contato para Cobran'#231'a'
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
              Top = 2
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
              Left = 55
              Top = 2
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
              Left = 6
              Top = 16
              Width = 43
              Height = 21
              DataField = 'TPCTICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 52
              Top = 16
              Width = 397
              Height = 21
              DataField = 'TPCTA60DESCR'
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
      'Select * From TipoContato Where (%MFiltro)')
    object SQLTemplateTPCTICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPOCONTATO.TPCTICOD'
      Visible = False
    end
    object SQLTemplateTPCTA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPCTA60DESCR'
      Origin = 'DB.TIPOCONTATO.TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TIPOCONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TIPOCONTATO.REGISTRO'
    end
    object SQLTemplateQUESICOD: TIntegerField
      FieldName = 'QUESICOD'
      Origin = 'DB.TIPOCONTATO.QUESICOD'
    end
    object SQLTemplateTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.TIPOCONTATO.TPRTICOD'
    end
    object SQLTemplateTPCTA254OBSPADRAO: TStringField
      FieldName = 'TPCTA254OBSPADRAO'
      Origin = 'DB.TIPOCONTATO.TPCTA254OBSPADRAO'
      FixedChar = True
      Size = 254
    end
  end
end
