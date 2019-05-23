inherited FormCadastroNumerarioTotalizadorCaixa: TFormCadastroNumerarioTotalizadorCaixa
  Left = 163
  Top = 131
  Caption = 'Cadastro Numer'#225'rios que Totalizam no Caixa'
  ClientHeight = 470
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 470
    inherited PanelCentral: TPanel
      Height = 396
      inherited PanelBarra: TPanel
        Height = 396
      end
      inherited PanelFundoDados: TPanel
        Height = 396
        inherited Panel5: TPanel
          Height = 396
          inherited PagePrincipal: TPageControl
            Top = 127
            Height = 269
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 196
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TOTAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalizadorCalcField'
                    Width = 423
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUTOCSOMASUBTRAI'
                    Width = 102
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
          inherited PanelMaster: TPanel
            Top = 86
            object Label1: TLabel
              Left = 10
              Top = 2
              Width = 59
              Height = 13
              Caption = 'Numer'#225'rio'
              FocusControl = DBEdit1
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
              Width = 36
              Height = 21
              DataField = 'NUMEICOD'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 44
              Top = 16
              Width = 336
              Height = 21
              DataField = 'NUMEA30DESCR'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 86
            object Label3: TLabel
              Left = 9
              Top = 8
              Width = 64
              Height = 13
              Caption = 'Totalizador'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnListaTotalizador: TSpeedButton
              Left = 73
              Top = 21
              Width = 21
              Height = 21
              Hint = 'Acessa Tipo Cliente'
              Flat = True
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                0400000000007000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                DD00DDDDDDDDDDDDDD00}
              OnClick = BtnListaTotalizadorClick
            end
            object Label6: TLabel
              Left = 10
              Top = 45
              Width = 79
              Height = 13
              Caption = 'Soma/Subtrai'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 7
              Top = 21
              Width = 64
              Height = 21
              DataField = 'TOTAICOD'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEdit3KeyDown
            end
            object DBEdit6: TDBEdit
              Left = 96
              Top = 21
              Width = 364
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              Color = 16249066
              DataField = 'TotalizadorCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object ComboSomaSubtrai: TRxDBComboBox
              Left = 7
              Top = 58
              Width = 118
              Height = 21
              Style = csDropDownList
              DataField = 'NUTOCSOMASUBTRAI'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Soma(+)'
                'Subrai(-)')
              TabOrder = 2
              Values.Strings = (
                '+'
                '-')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  NUMERARIOTOTALIZADOR'
      'Where '
      '  NUMEICOD = :NUMEICOD and'
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMEICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateNUMEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Numer'#225'rio'
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIOTOTALIZADOR.NUMEICOD'
      Visible = False
    end
    object SQLTemplateTOTAICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Totalizador'
      FieldName = 'TOTAICOD'
      Origin = 'DB.NUMERARIOTOTALIZADOR.TOTAICOD'
    end
    object SQLTemplateTotalizadorCalcField: TStringField
      DisplayLabel = 'Totalizador'
      FieldKind = fkLookup
      FieldName = 'TotalizadorCalcField'
      LookupDataSet = SQLTotalizador
      LookupKeyFields = 'TOTAICOD'
      LookupResultField = 'TOTAA60DESCR'
      KeyFields = 'TOTAICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateNUTOCSOMASUBTRAI: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Soma/Subtrai'
      FieldName = 'NUTOCSOMASUBTRAI'
      Origin = 'DB.NUMERARIOTOTALIZADOR.NUTOCSOMASUBTRAI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NUMERARIOTOTALIZADOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NUMERARIOTOTALIZADOR.REGISTRO'
    end
  end
  object SQLTotalizador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TotalizadorCaixa')
    Macros = <>
    Left = 30
    Top = 178
  end
end
