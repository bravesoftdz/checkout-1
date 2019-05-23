inherited FormCadastroDisplay: TFormCadastroDisplay
  Left = 263
  Top = 111
  Caption = 'Cadastro de Display'
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
                    FieldName = 'DISPICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DISPA30DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DISPINROINICIAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DISPINROFINAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DISPINROATUAL'
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
              Top = 4
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
              Left = 62
              Top = 4
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
            object Label3: TLabel
              Left = 319
              Top = 4
              Width = 56
              Height = 13
              Caption = 'Nro Inicial'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 393
              Top = 4
              Width = 48
              Height = 13
              Caption = 'Nro Final'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 467
              Top = 4
              Width = 52
              Height = 13
              Caption = 'Nro Atual'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 7
              Top = 17
              Width = 47
              Height = 21
              DataField = 'DISPICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 58
              Top = 17
              Width = 231
              Height = 21
              DataField = 'DISPA30DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 315
              Top = 17
              Width = 70
              Height = 21
              DataField = 'DISPINROINICIAL'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 389
              Top = 17
              Width = 70
              Height = 21
              DataField = 'DISPINROFINAL'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 463
              Top = 17
              Width = 70
              Height = 21
              DataField = 'DISPINROATUAL'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Display Where (%MFiltro)')
    object SQLTemplateDISPICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'DISPICOD'
      Origin = 'DB.DISPLAY.DISPICOD'
      Visible = False
    end
    object SQLTemplateDISPA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DISPA30DESCR'
      Origin = 'DB.DISPLAY.DISPA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateDISPINROINICIAL: TIntegerField
      DisplayLabel = 'Nro.Inicial'
      FieldName = 'DISPINROINICIAL'
      Origin = 'DB.DISPLAY.DISPINROINICIAL'
    end
    object SQLTemplateDISPINROFINAL: TIntegerField
      DisplayLabel = 'Nro.Final'
      FieldName = 'DISPINROFINAL'
      Origin = 'DB.DISPLAY.DISPINROFINAL'
    end
    object SQLTemplateDISPINROATUAL: TIntegerField
      DisplayLabel = 'Nro.Atual'
      FieldName = 'DISPINROATUAL'
      Origin = 'DB.DISPLAY.DISPINROATUAL'
    end
  end
end
