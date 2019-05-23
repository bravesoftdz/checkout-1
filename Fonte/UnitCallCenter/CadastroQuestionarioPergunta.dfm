inherited FormCadastroQuestionarioPergunta: TFormCadastroQuestionarioPergunta
  Left = 18
  Top = 4
  Caption = 'Perguntas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 Op'#231#245'es de Resp.'
          Visible = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 125
            Height = 335
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 268
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'QUEQICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUEQA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUEQCTIPO'
                    Width = 128
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            object Label4: TLabel
              Left = 6
              Top = 1
              Width = 63
              Height = 13
              Caption = 'C'#243'd. Quest.'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 78
              Top = 1
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 6
              Top = 16
              Width = 67
              Height = 21
              DataField = 'QUESICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 76
              Top = 16
              Width = 429
              Height = 21
              DataField = 'QUESA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 84
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
            object Label3: TLabel
              Left = 7
              Top = 42
              Width = 24
              Height = 13
              Caption = 'Tipo'
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
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 428
              Height = 21
              DataField = 'QUEQA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object RxDBComboBox2: TRxDBComboBox
              Left = 7
              Top = 57
              Width = 500
              Height = 21
              Style = csDropDownList
              DataField = 'QUEQCTIPO'
              DataSource = DSTemplate
              EnableValues = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                'Alternativa'
                'M'#250'ltipla Escolha')
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                'A'
                'M')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      
        'Select * From QUESTIONARIOQUESTAO Where QUESICOD=:QUESICOD and (' +
        '%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUESICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateQUESICOD: TIntegerField
      Tag = 1
      FieldName = 'QUESICOD'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUESICOD'
      Visible = False
    end
    object SQLTemplateQUEQICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'QUEQICOD'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQICOD'
      Visible = False
    end
    object SQLTemplateQUEQA60DESCR: TStringField
      DisplayLabel = 'Pergunta'
      FieldName = 'QUEQA60DESCR'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.QUESTIONARIOQUESTAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.QUESTIONARIOQUESTAO.REGISTRO'
    end
    object SQLTemplateQUEQCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'QUEQCTIPO'
      Origin = 'DB.QUESTIONARIOQUESTAO.QUEQCTIPO'
      FixedChar = True
      Size = 1
    end
  end
end
