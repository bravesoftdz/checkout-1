inherited FormCadastroFeriado: TFormCadastroFeriado
  Caption = 'Cadastro de Feriados'
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
                    FieldName = 'FERIDDATA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FERIA30NOME'
                    Width = 287
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
            object Label2: TLabel
              Left = 141
              Top = 4
              Width = 32
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEditNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label77: TLabel
              Left = 11
              Top = 4
              Width = 113
              Height = 13
              Caption = 'Data de Nascimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEditNome: TDBEdit
              Left = 138
              Top = 17
              Width = 333
              Height = 21
              DataField = 'FERIA30NOME'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBDateEdit8: TDBDateEdit
              Left = 9
              Top = 17
              Width = 117
              Height = 21
              DataField = 'FERIDDATA'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 0
              YearDigits = dyFour
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From FERIADO Where (%MFiltro)')
    object SQLTemplateFERIDDATA: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Data'
      FieldName = 'FERIDDATA'
      Origin = 'DB.FERIADO.FERIDDATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLTemplateFERIA30NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FERIA30NOME'
      Origin = 'DB.FERIADO.FERIA30NOME'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FERIADO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FERIADO.REGISTRO'
    end
  end
end
