inherited FormCadastroRoteiro: TFormCadastroRoteiro
  Caption = 'Cadastro de Roteiros'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetConsulta
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Alignment = taLeftJustify
                    Expanded = False
                    FieldName = 'PALMICOD'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Alignment = taLeftJustify
                    Expanded = False
                    FieldName = 'ROTAICOD'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Alignment = taLeftJustify
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Title.Alignment = taCenter
                    Width = 94
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Title.Alignment = taCenter
                    Width = 116
                    Visible = True
                  end
                  item
                    Alignment = taLeftJustify
                    Expanded = False
                    FieldName = 'ROTEISEQDIARIA'
                    Title.Alignment = taCenter
                    Width = 87
                    Visible = True
                  end
                  item
                    Alignment = taLeftJustify
                    Expanded = False
                    FieldName = 'ROTEINROSEMANA'
                    Title.Alignment = taCenter
                    Width = 87
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'ROTEINRODIASEMANA'
                    Title.Alignment = taCenter
                    Width = 98
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 9
              Top = 3
              Width = 28
              Height = 13
              Caption = 'Palm'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 255
              Top = 3
              Width = 55
              Height = 13
              Caption = 'ID Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 91
              Top = 3
              Width = 27
              Height = 13
              Caption = 'Rota'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 354
              Top = 3
              Width = 68
              Height = 13
              Caption = 'Nro Semana'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 453
              Top = 3
              Width = 84
              Height = 13
              Caption = 'Dia da Semana'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 552
              Top = 3
              Width = 57
              Height = 13
              Caption = 'Seq.Di'#225'ria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 173
              Top = 3
              Width = 54
              Height = 13
              Caption = 'Vendedor'
              FocusControl = DBEdit6
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
              Width = 79
              Height = 19
              Ctl3D = False
              DataField = 'PALMICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit16: TDBEdit
              Left = 252
              Top = 16
              Width = 96
              Height = 19
              Ctl3D = False
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 88
              Top = 16
              Width = 79
              Height = 19
              Ctl3D = False
              DataField = 'ROTAICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit3: TDBEdit
              Left = 351
              Top = 16
              Width = 96
              Height = 19
              Ctl3D = False
              DataField = 'ROTEINROSEMANA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit4: TDBEdit
              Left = 450
              Top = 16
              Width = 96
              Height = 19
              Ctl3D = False
              DataField = 'ROTEINRODIASEMANA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit5: TDBEdit
              Left = 549
              Top = 16
              Width = 68
              Height = 19
              Ctl3D = False
              DataField = 'ROTEISEQDIARIA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit6: TDBEdit
              Left = 170
              Top = 16
              Width = 79
              Height = 19
              Ctl3D = False
              DataField = 'VENDICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 6
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Roteiro Where (%MFiltro)')
    object SQLTemplateROTEICOD: TIntegerField
      Tag = 1
      FieldName = 'ROTEICOD'
      Origin = 'DB.ROTEIRO.ROTEICOD'
      Visible = False
    end
    object SQLTemplateROTAICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Rota'
      FieldName = 'ROTAICOD'
      Origin = 'DB.ROTEIRO.ROTAICOD'
    end
    object SQLTemplatePALMICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Palm'
      FieldName = 'PALMICOD'
      Origin = 'DB.ROTEIRO.PALMICOD'
    end
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.ROTEIRO.VENDICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.ROTEIRO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateROTEINROSEMANA: TIntegerField
      DisplayLabel = 'Nro Semana'
      FieldName = 'ROTEINROSEMANA'
      Origin = 'DB.ROTEIRO.ROTEINROSEMANA'
    end
    object SQLTemplateROTEINRODIASEMANA: TIntegerField
      DisplayLabel = 'Dia da Semana'
      FieldName = 'ROTEINRODIASEMANA'
      Origin = 'DB.ROTEIRO.ROTEINRODIASEMANA'
    end
    object SQLTemplateROTEISEQDIARIA: TIntegerField
      DisplayLabel = 'Seq.Di'#225'ria'
      FieldName = 'ROTEISEQDIARIA'
      Origin = 'DB.ROTEIRO.ROTEISEQDIARIA'
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.ROTEIRO.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.ROTEIRO.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
end
