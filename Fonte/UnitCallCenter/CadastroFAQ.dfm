inherited FormCadastroFAQ: TFormCadastroFAQ
  Caption = 'Cadastro de FAQ'
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
                    FieldName = 'FAQUA13ID'
                    Width = 131
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FAQUA60DESR'
                    Width = 465
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 4
              Top = 0
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
              Left = 143
              Top = 0
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
              Left = 4
              Top = 16
              Width = 133
              Height = 21
              DataField = 'FAQUA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 143
              Top = 16
              Width = 364
              Height = 21
              DataField = 'FAQUA60DESR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From FAQ Where (%MFiltro)')
    object SQLTemplateFAQUA13ID: TStringField
      Tag = 2
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FAQUA13ID'
      Origin = 'UNITGESTAO.FAQ.FAQUA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'UNITGESTAO.FAQ.EMPRICOD'
    end
    object SQLTemplateFAQUICOD: TIntegerField
      Tag = 1
      FieldName = 'FAQUICOD'
      Origin = 'UNITGESTAO.FAQ.FAQUICOD'
    end
    object SQLTemplateFAQUA60DESR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FAQUA60DESR'
      Origin = 'UNITGESTAO.FAQ.FAQUA60DESR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO.FAQ.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO.FAQ.REGISTRO'
    end
  end
end
