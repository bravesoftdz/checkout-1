inherited FormCadastroTipoHelpDesk: TFormCadastroTipoHelpDesk
  Left = 209
  Top = 180
  Caption = 'Cadastro Tipo de Atendimento'
  ClientWidth = 779
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 779
    inherited PanelCabecalho: TPanel
      Width = 777
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 777
        inherited Panel1: TPanel
          Width = 775
          inherited PanelNavigator: TPanel
            Width = 775
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 775
            end
          end
          inherited PanelLeft: TPanel
            Left = 318
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 777
      inherited PanelFundoDados: TPanel
        Width = 647
        inherited Panel5: TPanel
          Width = 647
          inherited PagePrincipal: TPageControl
            Top = 41
            Width = 647
            Height = 408
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 639
                Height = 335
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TPHPICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPHPA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPHPCGERATAREFA'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 639
                inherited PanelBetween: TPanel
                  Width = 245
                  inherited AdvPanel1: TAdvPanel
                    Width = 245
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 245
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 245
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
          inherited PanelMaster: TPanel
            Width = 647
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 647
            object Label1: TLabel
              Left = 3
              Top = 1
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 81
              Top = 1
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
            object Label3: TLabel
              Left = 515
              Top = 1
              Width = 67
              Height = 13
              Caption = 'Gera Tarefa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 15
              Width = 75
              Height = 21
              DataField = 'TPHPICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 81
              Top = 15
              Width = 424
              Height = 21
              DataField = 'TPHPA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 514
              Top = 15
              Width = 109
              Height = 21
              Style = csDropDownList
              DataField = 'TPHPCGERATAREFA'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 2
              Values.Strings = (
                'S'
                'N')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From TIPOHELPDESK Where (%MFiltro)')
    object SQLTemplateTPHPICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPHPICOD'
      Origin = 'DB.TIPOHELPDESK.TPHPICOD'
      Visible = False
    end
    object SQLTemplateTPHPA60DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPHPA60DESCR'
      Origin = 'DB.TIPOHELPDESK.TPHPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTPHPCGERATAREFA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Gera Tarefa'
      FieldName = 'TPHPCGERATAREFA'
      Origin = 'DB.TIPOHELPDESK.TPHPCGERATAREFA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TIPOHELPDESK.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TIPOHELPDESK.REGISTRO'
    end
  end
end
