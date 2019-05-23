inherited FormCadastroPlanoRecebimentoParcela: TFormCadastroPlanoRecebimentoParcela
  Left = 11
  Top = 98
  Caption = 'Cadastro Plano Recebimento Parcelas'
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
                    FieldName = 'PLRPINROPARC'
                    Width = 158
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRPINRODIAS'
                    Width = 231
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
              Width = 42
              Height = 13
              Caption = 'Parcela'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 79
              Top = 3
              Width = 49
              Height = 13
              Caption = 'Nro. Dias'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 7
              Top = 16
              Width = 64
              Height = 21
              DataField = 'PLRPINROPARC'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 64
              Height = 21
              DataField = 'PLRPINRODIAS'
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
      'Select * From PLANORECEBIMENTOPARCELA Where '
      'PLRCICOD= :PLRCICOD'
      'and (%MFiltro)'
      ' ')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PLRCICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplatePLRCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTPARCELA.PLRCICOD'
      Visible = False
    end
    object SQLTemplatePLRPINROPARC: TIntegerField
      Tag = 1
      DisplayLabel = 'Parcela'
      FieldName = 'PLRPINROPARC'
      Origin = 'DB.PLANORECEBIMENTPARCELA.PLRPINROPARC'
      Visible = False
    end
    object SQLTemplatePLRPINRODIAS: TIntegerField
      DisplayLabel = 'Nro. Dias'
      FieldName = 'PLRPINRODIAS'
      Origin = 'DB.PLANORECEBIMENTPARCELA.PLRPINRODIAS'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update PLANORECEBIMENTOPARCELA'
      'set'
      '  PLRCICOD = :PLRCICOD,'
      '  PLRPINROPARC = :PLRPINROPARC,'
      '  PLRPINRODIAS = :PLRPINRODIAS'
      'where'
      '  PLRCICOD = :OLD_PLRCICOD and'
      '  PLRPINROPARC = :OLD_PLRPINROPARC')
    InsertSQL.Strings = (
      'insert into PLANORECEBIMENTOPARCELA'
      '  (PLRCICOD, PLRPINROPARC, PLRPINRODIAS)'
      'values'
      '  (:PLRCICOD, :PLRPINROPARC, :PLRPINRODIAS)')
    DeleteSQL.Strings = (
      'delete from PLANORECEBIMENTOPARCELA'
      'where'
      '  PLRCICOD = :OLD_PLRCICOD and'
      '  PLRPINROPARC = :OLD_PLRPINROPARC')
  end
end
