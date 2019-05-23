inherited FormCadastroEspecialidade: TFormCadastroEspecialidade
  Left = -4
  Top = -4
  Caption = 'Especialidades'
  ClientHeight = 585
  ClientWidth = 804
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 804
    Height = 585
    inherited PanelCabecalho: TPanel
      Width = 802
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 802
        inherited Panel1: TPanel
          Width = 800
          inherited PanelNavigator: TPanel
            Width = 800
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 800
            end
          end
          inherited PanelLeft: TPanel
            Left = 343
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 802
      Height = 511
      inherited PanelBarra: TPanel
        Height = 511
      end
      inherited PanelFundoDados: TPanel
        Width = 672
        Height = 511
        inherited Panel5: TPanel
          Width = 672
          Height = 511
          inherited PagePrincipal: TPageControl
            Top = 83
            Width = 672
            Height = 428
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 664
                Height = 355
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ESPEICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ESPEA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ESPEN3VLRCONSULTA'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 664
                inherited PanelBetween: TPanel
                  Width = 270
                  inherited AdvPanel1: TAdvPanel
                    Width = 270
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 270
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 270
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
            Top = 42
            Width = 672
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 672
            Height = 42
            object Label1: TLabel
              Left = 9
              Top = 3
              Width = 38
              Height = 13
              Caption = 'Código'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 97
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Descrição'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 524
              Top = 3
              Width = 81
              Height = 13
              Caption = 'Valor Consulta'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 81
              Height = 21
              DataField = 'ESPEICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 93
              Top = 16
              Width = 424
              Height = 21
              DataField = 'ESPEA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 522
              Top = 16
              Width = 95
              Height = 21
              DataField = 'ESPEN3VLRCONSULTA'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Especialidade Where (%MFiltro)')
    object SQLTemplateESPEICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Código'
      FieldName = 'ESPEICOD'
      Origin = 'SISCON.ESPECIALIDADE.ESPEICOD'
      Visible = False
    end
    object SQLTemplateESPEA60DESCR: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'ESPEA60DESCR'
      Origin = 'SISCON.ESPECIALIDADE.ESPEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateESPEN3VLRCONSULTA: TFloatField
      DisplayLabel = 'Valor Consulta'
      FieldName = 'ESPEN3VLRCONSULTA'
      Origin = 'DB.ESPECIALIDADE.ESPEN3VLRCONSULTA'
      DisplayFormat = '#,###.00'
      EditFormat = '#,###.00'

    end
  end
  inherited SQLCount: TRxQuery
    Tag = 1
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Especialidade'
      'set'
      '  ESPEICOD = :ESPEICOD,'
      '  ESPEA60DESCR = :ESPEA60DESCR'
      'where'
      '  ESPEICOD = :OLD_ESPEICOD')
    InsertSQL.Strings = (
      'insert into Especialidade'
      '  (ESPEICOD, ESPEA60DESCR)'
      'values'
      '  (:ESPEICOD, :ESPEA60DESCR)')
    DeleteSQL.Strings = (
      'delete from Especialidade'
      'where'
      '  ESPEICOD = :OLD_ESPEICOD')
  end
end
