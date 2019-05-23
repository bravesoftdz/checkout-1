inherited FormCadastroFeriados: TFormCadastroFeriados
  Left = -10
  Top = 72
  Caption = 'Feriados'
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
              Left = 11
              Top = 3
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object Label2: TLabel
              Left = 119
              Top = 3
              Width = 46
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
            end
            object DBDateEdit1: TDBDateEdit
              Left = 7
              Top = 17
              Width = 106
              Height = 21
              DataField = 'FERIDDATA'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 116
              Top = 17
              Width = 538
              Height = 21
              DataField = 'FERIA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From Feriado Where (%MFiltro)')
    object SQLTemplateFERIDDATA: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Data'
      FieldName = 'FERIDDATA'
      Origin = 'SISCON.FERIADO.FERIDDATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateFERIA60DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FERIA60DESCR'
      Origin = 'SISCON.FERIADO.FERIA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Feriado'
      'set'
      '  FERIDDATA = :FERIDDATA,'
      '  FERIA60DESCR = :FERIA60DESCR'
      'where'
      '  FERIDDATA = :OLD_FERIDDATA')
    InsertSQL.Strings = (
      'insert into Feriado'
      '  (FERIDDATA, FERIA60DESCR)'
      'values'
      '  (:FERIDDATA, :FERIA60DESCR)')
    DeleteSQL.Strings = (
      'delete from Feriado'
      'where'
      '  FERIDDATA = :OLD_FERIDDATA')
  end
end
