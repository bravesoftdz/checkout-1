inherited FormCadastroQuestionarioPerguntaResposta: TFormCadastroQuestionarioPerguntaResposta
  Left = 8
  Top = 38
  Caption = 'Op'#231#245'es de Resposta'
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
                    FieldName = 'QUQOICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUQOA30DESCR'
                    Width = 280
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUQOIPONTOS'
                    Width = 83
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUQOIPESO'
                    Width = 73
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            object Label1: TLabel
              Left = 6
              Top = 1
              Width = 56
              Height = 13
              Caption = 'C'#243'd. Perg.'
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
              Width = 52
              Height = 13
              Caption = 'Pergunta'
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
              DataField = 'QUEQICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 429
              Height = 21
              DataField = 'QUEQA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label3: TLabel
              Left = 6
              Top = 1
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 78
              Top = 1
              Width = 108
              Height = 13
              Caption = 'Op'#231#227'o de Resposta'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 352
              Top = 0
              Width = 39
              Height = 13
              Caption = 'Pontos'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 432
              Top = 1
              Width = 27
              Height = 13
              Caption = 'Peso'
              FocusControl = DBEdit6
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
              Width = 67
              Height = 21
              DataField = 'QUQOICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 76
              Top = 16
              Width = 272
              Height = 21
              DataField = 'QUQOA30DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 350
              Top = 16
              Width = 77
              Height = 21
              DataField = 'QUQOIPONTOS'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 430
              Top = 16
              Width = 77
              Height = 21
              DataField = 'QUQOIPESO'
              DataSource = DSTemplate
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      
        'Select * From QUESTIONARIOOPCOES Where QUESICOD=:QUESICOD and QU' +
        'EQICOD=:QUEQICOD and (%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUESICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'QUEQICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateQUESICOD: TIntegerField
      Tag = 1
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUESICOD'
      Visible = False
    end
    object SQLTemplateQUEQICOD: TIntegerField
      Tag = 1
      FieldName = 'QUEQICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUEQICOD'
      Visible = False
    end
    object SQLTemplateQUQOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUQOICOD'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOICOD'
      Visible = False
    end
    object SQLTemplateQUQOA30DESCR: TStringField
      DisplayLabel = 'Op'#231#227'o de Resposta'
      FieldName = 'QUQOA30DESCR'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateQUQOIPONTOS: TIntegerField
      DisplayLabel = 'Pontos'
      FieldName = 'QUQOIPONTOS'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOIPONTOS'
    end
    object SQLTemplateQUQOIPESO: TIntegerField
      DisplayLabel = 'Peso'
      FieldName = 'QUQOIPESO'
      Origin = 'DB.QUESTIONARIOOPCOES.QUQOIPESO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.QUESTIONARIOOPCOES.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.QUESTIONARIOOPCOES.REGISTRO'
    end
  end
end
