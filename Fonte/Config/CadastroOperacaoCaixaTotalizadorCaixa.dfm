inherited FormCadastroOperacaoCaixaTotalizadorCaixa: TFormCadastroOperacaoCaixaTotalizadorCaixa
  Left = 208
  Caption = 'Cadastro de Opera'#231#245'es que Totalizam no Caixa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 130
            Height = 319
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 246
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
            Top = 0
            Height = 45
            object Label1: TLabel
              Left = 9
              Top = 2
              Width = 88
              Height = 13
              Caption = 'Opera'#231#227'o Caixa'
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
              DataField = 'OPCXICOD'
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
              Left = 45
              Top = 16
              Width = 336
              Height = 21
              DataField = 'OPCXA60DESCR'
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
            Top = 45
            Height = 85
            object Label3: TLabel
              Left = 9
              Top = 3
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
              Left = 70
              Top = 16
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
              Left = 9
              Top = 40
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
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              DataField = 'TOTAICOD'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEdit3KeyDown
            end
            object DBEdit6: TDBEdit
              Left = 93
              Top = 16
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
              Left = 6
              Top = 53
              Width = 118
              Height = 21
              Style = csDropDownList
              DataField = 'OPTOCSOMASUBTRAI'
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
      '  OPERACAOCAIXATOTALIZADOR '
      'Where '
      '  OPCXICOD = :OPCXICOD and'
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OPCXICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateOPCXICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Opera'#231#227'o'
      FieldName = 'OPCXICOD'
      Origin = 'DB.OPERACAOCAIXATOTALIZADOR.OPCXICOD'
    end
    object SQLTemplateTOTAICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Totalizador'
      FieldName = 'TOTAICOD'
      Origin = 'DB.OPERACAOCAIXATOTALIZADOR.TOTAICOD'
    end
    object SQLTemplateTotalizadorCalcField: TStringField
      DisplayLabel = 'Totalizador'
      FieldKind = fkLookup
      FieldName = 'TotalizadorCalcField'
      LookupDataSet = SQLTOTALIZADORCAIXA
      LookupKeyFields = 'TOTAICOD'
      LookupResultField = 'TOTAA60DESCR'
      KeyFields = 'TOTAICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateOPTOCSOMASUBTRAI: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Soma/Subtrai'
      FieldName = 'OPTOCSOMASUBTRAI'
      Origin = 'DB.OPERACAOCAIXATOTALIZADOR.OPTOCSOMASUBTRAI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOCAIXATOTALIZADOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOCAIXATOTALIZADOR.REGISTRO'
    end
  end
  object SQLTOTALIZADORCAIXA: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TOTALIZADORCAIXA')
    Macros = <>
    Left = 30
    Top = 186
  end
end
