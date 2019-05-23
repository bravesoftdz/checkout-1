inherited FormCadastroTipoRetorno: TFormCadastroTipoRetorno
  Left = 33
  Top = 7
  Caption = 'Tipos de Retorno'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TPRTICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPRTA60DESCR'
                    Width = 240
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCTICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoContatoLookUp'
                    Width = 203
                    Visible = True
                  end>
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 3
                Top = 0
                Width = 96
                Height = 13
                Caption = 'C'#243'd.Tipo Contato'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnTipoContato: TSpeedButton
                Left = 101
                Top = 16
                Width = 23
                Height = 21
                Hint = 'Acessa Tipo Contato'
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
                OnClick = BtnTipoContatoClick
              end
              object DBEdit3: TDBEdit
                Left = 3
                Top = 16
                Width = 97
                Height = 21
                DataField = 'TPCTICOD'
                DataSource = DSTemplate
                TabOrder = 0
                OnKeyDown = DBEdit3KeyDown
              end
              object DBEdit4: TDBEdit
                Left = 124
                Top = 16
                Width = 331
                Height = 21
                TabStop = False
                BorderStyle = bsNone
                Color = 15461355
                DataField = 'TipoContatoLookUp'
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
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 1
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
              Left = 78
              Top = 1
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
              Left = 6
              Top = 16
              Width = 67
              Height = 21
              DataField = 'TPRTICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 429
              Height = 21
              DataField = 'TPRTA60DESCR'
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
      'Select * From TIPORETORNO Where (%MFiltro)')
    object SQLTemplateTPRTICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPRTICOD'
      Origin = 'DB.TIPORETORNO.TPRTICOD'
      Visible = False
    end
    object SQLTemplateTPRTA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPRTA60DESCR'
      Origin = 'DB.TIPORETORNO.TPRTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTPCTICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo Contato'
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPORETORNO.TPCTICOD'
    end
    object SQLTemplateTipoContatoLookUp: TStringField
      DisplayLabel = ' '
      FieldKind = fkLookup
      FieldName = 'TipoContatoLookUp'
      LookupDataSet = SQLTipoContato
      LookupKeyFields = 'TPCTICOD'
      LookupResultField = 'TPCTA60DESCR'
      KeyFields = 'TPCTICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TIPORETORNO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TIPORETORNO.REGISTRO'
    end
  end
  object SQLTipoContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoContato order by TPCTA60DESCR ')
    Macros = <>
    Left = 496
    Top = 1
    object SQLTipoContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPOCONTATO.TPCTICOD'
    end
    object SQLTipoContatoTPCTA60DESCR: TStringField
      FieldName = 'TPCTA60DESCR'
      Origin = 'DB.TIPOCONTATO.TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
