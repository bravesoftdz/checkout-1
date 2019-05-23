inherited FormCadastroTipoDocumento: TFormCadastroTipoDocumento
  Left = 230
  Top = 95
  Caption = 'Tipos de Documentos'
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
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TPDCICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPDCA60DESCR'
                    Width = 561
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
            inherited TabSheetDadosPrincipais: TTabSheet
              object dbrdbSomaFluxo: TDBRadioGroup
                Left = 16
                Top = 8
                Width = 185
                Height = 41
                Caption = 'Soma no fluxo caixa quando pago'
                Columns = 2
                DataField = 'SOMA_QUITADO'
                DataSource = DSTemplate
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'N')
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
              Left = 78
              Top = 3
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
              Left = 5
              Top = 16
              Width = 64
              Height = 21
              DataField = 'TPDCICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 74
              Top = 16
              Width = 455
              Height = 21
              DataField = 'TPDCA60DESCR'
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
      'Select * From TIPODOCUMENTO Where (%MFiltro)')
    object SQLTemplateTPDCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
      Visible = False
    end
    object SQLTemplateTPDCA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TIPODOCUMENTO.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TIPODOCUMENTO.REGISTRO'
      Visible = False
    end
    object SQLTemplateVLRTAXA: TFloatField
      FieldName = 'VLRTAXA'
      Origin = 'DB.TIPODOCUMENTO.VLRTAXA'
    end
    object SQLTemplateSOMA_QUITADO: TStringField
      FieldName = 'SOMA_QUITADO'
      Origin = 'DB.TIPODOCUMENTO.SOMA_QUITADO'
      FixedChar = True
      Size = 1
    end
  end
end
