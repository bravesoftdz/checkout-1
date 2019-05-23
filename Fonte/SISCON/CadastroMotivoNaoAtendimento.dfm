inherited FormCadastroMotivoNaoAtendimento: TFormCadastroMotivoNaoAtendimento
  Caption = 'Cadastro de Motivos de N'#227'o Atendimento'
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
                    FieldName = 'MONAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MONAA60DESCR'
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
              Top = 5
              Width = 67
              Height = 13
              Caption = 'C'#243'd.Interno'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 88
              Top = 5
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 18
              Width = 73
              Height = 21
              AutoSize = False
              DataField = 'MONAICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 84
              Top = 18
              Width = 500
              Height = 21
              AutoSize = False
              DataField = 'MONAA60DESCR'
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
      'Select * From MOTIVONAOATEND Where (%MFiltro)')
    object SQLTemplateMONAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Interno'
      FieldName = 'MONAICOD'
      Origin = 'DB.MOTIVONAOATEND.MONAICOD'
      Visible = False
    end
    object SQLTemplateMONAA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MONAA60DESCR'
      Origin = 'DB.MOTIVONAOATEND.MONAA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
