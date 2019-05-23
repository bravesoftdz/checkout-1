inherited FormCadastroProvedorCartao: TFormCadastroProvedorCartao
  ActiveControl = ComboOrdem
  Caption = 'Cadastro de Provedores de Cart'#227'o'
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
                    FieldName = 'PRCAA60DESCR'
                    Width = 215
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRCAA60CARTAO'
                    Width = 129
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRCACCONSCHEQUE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRCATPATHENVIA'
                    Width = 193
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRCATPATHRECEBE'
                    Width = 223
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
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label2: TLabel
                Left = 4
                Top = 2
                Width = 99
                Height = 13
                Caption = 'Caminho de Envio'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 4
                Top = 41
                Width = 144
                Height = 13
                Caption = 'Caminho de Recebimento'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBMemo
                Left = 2
                Top = 15
                Width = 630
                Height = 21
                DataField = 'PRCATPATHENVIA'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit3: TDBMemo
                Left = 2
                Top = 55
                Width = 630
                Height = 21
                DataField = 'PRCATPATHRECEBE'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object SendDirectory: TDirectoryEdit
                Left = 632
                Top = 15
                Width = 25
                Height = 21
                TabStop = False
                NumGlyphs = 1
                TabOrder = 2
                OnChange = SendDirectoryChange
              end
              object ReceiveDirectory: TDirectoryEdit
                Left = 633
                Top = 55
                Width = 25
                Height = 21
                TabStop = False
                NumGlyphs = 1
                TabOrder = 3
                OnChange = ReceiveDirectoryChange
              end
              object CheckConsultaChq: TDBCheckBox
                Left = 2
                Top = 79
                Width = 279
                Height = 17
                Caption = 'Consultar cheque no encerramento da venda'
                DataField = 'PRCACCONSCHEQUE'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = CheckConsultaChqClick
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 7
              Top = 6
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 520
              Top = 6
              Width = 38
              Height = 13
              Caption = 'Cart'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 19
              Width = 509
              Height = 21
              DataField = 'PRCAA60DESCR'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object ComboCartao: TRxDBComboBox
              Left = 518
              Top = 19
              Width = 145
              Height = 21
              Style = csDropDownList
              DataField = 'PRCAA60CARTAO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'AMEX'
                'BANRISUL'
                'REDECARD'
                'STARFICHE'
                'TECBAN'
                'VISA')
              Sorted = True
              TabOrder = 1
              Values.Strings = (
                'AMEX'
                'BANRISUL'
                'REDECARD'
                'STARFICHE'
                'TECBAN'
                'VISANET')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From PROVEDORCARTAO Where (%MFiltro)')
    object SQLTemplatePRCAA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'PRCAA13ID'
      Origin = 'DB.PROVEDORCARTAO.PRCAA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.PROVEDORCARTAO.EMPRICOD'
      Visible = False
    end
    object SQLTemplatePRCAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRCAICOD'
      Origin = 'DB.PROVEDORCARTAO.PRCAICOD'
      Visible = False
    end
    object SQLTemplatePRCAA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRCAA60DESCR'
      Origin = 'DB.PROVEDORCARTAO.PRCAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePRCATPATHENVIA: TMemoField
      DisplayLabel = 'Caminho de Envio'
      FieldName = 'PRCATPATHENVIA'
      Origin = 'DB.PROVEDORCARTAO.PRCATPATHENVIA'
      BlobType = ftMemo
      Size = 500
    end
    object SQLTemplatePRCATPATHRECEBE: TMemoField
      DisplayLabel = 'Caminho de Recebimento'
      FieldName = 'PRCATPATHRECEBE'
      Origin = 'DB.PROVEDORCARTAO.PRCATPATHRECEBE'
      BlobType = ftMemo
      Size = 500
    end
    object SQLTemplatePRCAA60CARTAO: TStringField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'PRCAA60CARTAO'
      Origin = 'DB.PROVEDORCARTAO.PRCAA60CARTAO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PROVEDORCARTAO.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PROVEDORCARTAO.REGISTRO'
      Visible = False
    end
    object SQLTemplatePRCACCONSCHEQUE: TStringField
      DisplayLabel = 'Consulta Cheque'
      FieldName = 'PRCACCONSCHEQUE'
      Origin = 'DB.PROVEDORCARTAO.PRCACCONSCHEQUE'
      FixedChar = True
      Size = 1
    end
  end
end
