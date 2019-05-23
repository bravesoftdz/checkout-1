inherited FormCadastroConfigAgendaProf: TFormCadastroConfigAgendaProf
  Left = 7
  Top = 38
  Caption = 'Configura'#231#245'es de Hor'#225'rios'
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
                    FieldName = 'NomeProfissional'
                    Width = 288
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGDFERIAINI'
                    Title.Caption = 'F'#233'rias Ini'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGDFERIAFIM'
                    Title.Caption = 'F'#233'rias Fim'
                    Width = 67
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGCDOMINGO'
                    Title.Caption = 'Dom'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGCSEGUNDA'
                    Title.Caption = 'Seg'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGCTERCA'
                    Title.Caption = 'Ter'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGCQUARTA'
                    Title.Caption = 'Qua'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGCQUINTA'
                    Title.Caption = 'Qui'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGCSEXTA'
                    Title.Caption = 'Sex'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFAGCSABADO'
                    Title.Caption = 'S'#225'b'
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
                    inherited LblProcurarPor: TLabel
                      Left = 3
                    end
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object GroupBox1: TGroupBox
                Left = 1
                Top = 65
                Width = 352
                Height = 229
                Caption = ' Dias '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label1: TLabel
                  Left = 173
                  Top = 6
                  Width = 64
                  Height = 13
                  Caption = 'Hora Inicial'
                  FocusControl = DBEdit1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 276
                  Top = 6
                  Width = 56
                  Height = 13
                  Caption = 'Hora Final'
                  FocusControl = DBEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBCheckBox1: TDBCheckBox
                  Left = 10
                  Top = 25
                  Width = 70
                  Height = 17
                  Caption = 'Domingo'
                  DataField = 'CFAGCDOMINGO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox2: TDBCheckBox
                  Left = 10
                  Top = 54
                  Width = 70
                  Height = 17
                  Caption = 'Segunda'
                  DataField = 'CFAGCSEGUNDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 10
                  Top = 83
                  Width = 70
                  Height = 17
                  Caption = 'Ter'#231'a'
                  DataField = 'CFAGCTERCA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 6
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox4: TDBCheckBox
                  Left = 10
                  Top = 112
                  Width = 70
                  Height = 17
                  Caption = 'Quarta'
                  DataField = 'CFAGCQUARTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 9
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox5: TDBCheckBox
                  Left = 10
                  Top = 141
                  Width = 70
                  Height = 17
                  Caption = 'Quinta'
                  DataField = 'CFAGCQUINTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 12
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox6: TDBCheckBox
                  Left = 10
                  Top = 171
                  Width = 70
                  Height = 17
                  Caption = 'Sexta'
                  DataField = 'CFAGCSEXTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 15
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox7: TDBCheckBox
                  Left = 10
                  Top = 200
                  Width = 70
                  Height = 17
                  Caption = 'S'#225'bado'
                  DataField = 'CFAGCSABADO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 18
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBEdit1: TDBEdit
                  Left = 166
                  Top = 23
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDDOMINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit2: TDBEdit
                  Left = 268
                  Top = 23
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDDOMFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit6: TDBEdit
                  Left = 166
                  Top = 52
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDSEGINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object DBEdit7: TDBEdit
                  Left = 268
                  Top = 52
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDSEGFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object DBEdit8: TDBEdit
                  Left = 166
                  Top = 81
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDTERINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                end
                object DBEdit9: TDBEdit
                  Left = 268
                  Top = 81
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDTERFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object DBEdit10: TDBEdit
                  Left = 166
                  Top = 110
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDQUAINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                end
                object DBEdit11: TDBEdit
                  Left = 268
                  Top = 110
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDQUAFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                end
                object DBEdit12: TDBEdit
                  Left = 166
                  Top = 139
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDQUIINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 13
                end
                object DBEdit13: TDBEdit
                  Left = 268
                  Top = 139
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDQUIFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 14
                end
                object DBEdit14: TDBEdit
                  Left = 166
                  Top = 169
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDSEXINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 16
                end
                object DBEdit15: TDBEdit
                  Left = 268
                  Top = 169
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDSEXFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 17
                end
                object DBEdit16: TDBEdit
                  Left = 166
                  Top = 198
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDSABINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 19
                end
                object DBEdit17: TDBEdit
                  Left = 268
                  Top = 198
                  Width = 78
                  Height = 21
                  DataField = 'CFAGDSABFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 20
                end
                object Panel4: TPanel
                  Left = 254
                  Top = 8
                  Width = 4
                  Height = 218
                  TabOrder = 21
                end
                object Panel6: TPanel
                  Left = 153
                  Top = 8
                  Width = 4
                  Height = 218
                  TabOrder = 22
                end
                object Panel7: TPanel
                  Left = 2
                  Top = 45
                  Width = 348
                  Height = 4
                  TabOrder = 23
                end
                object Panel8: TPanel
                  Left = 2
                  Top = 74
                  Width = 348
                  Height = 4
                  TabOrder = 24
                end
                object Panel9: TPanel
                  Left = 2
                  Top = 103
                  Width = 348
                  Height = 4
                  TabOrder = 25
                end
                object Panel10: TPanel
                  Left = 2
                  Top = 132
                  Width = 348
                  Height = 4
                  TabOrder = 26
                end
                object Panel11: TPanel
                  Left = 2
                  Top = 162
                  Width = 348
                  Height = 4
                  TabOrder = 27
                end
                object Panel12: TPanel
                  Left = 2
                  Top = 191
                  Width = 348
                  Height = 4
                  TabOrder = 28
                end
              end
              object GroupBox2: TGroupBox
                Left = 1
                Top = 4
                Width = 352
                Height = 61
                Caption = ' F'#233'rias '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label5: TLabel
                  Left = 9
                  Top = 18
                  Width = 34
                  Height = 13
                  Caption = 'Inicial'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 189
                  Top = 18
                  Width = 26
                  Height = 13
                  Caption = 'Final'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBDateEdit1: TDBDateEdit
                  Left = 7
                  Top = 34
                  Width = 119
                  Height = 21
                  DataField = 'CFAGDFERIAINI'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 0
                end
                object DBDateEdit2: TDBDateEdit
                  Left = 186
                  Top = 33
                  Width = 119
                  Height = 21
                  DataField = 'CFAGDFERIAFIM'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label2: TLabel
              Left = 12
              Top = 2
              Width = 65
              Height = 13
              Caption = 'Profissional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 275
              Top = 2
              Width = 53
              Height = 13
              Caption = 'Intervalo'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 272
              Top = 16
              Width = 78
              Height = 21
              DataField = 'CFAGIINTERVALO'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object ComboProfissional: TRxDBLookupCombo
              Left = 8
              Top = 16
              Width = 260
              Height = 21
              DropDownCount = 8
              DataField = 'PROFICOD'
              DataSource = DSTemplate
              LookupField = 'VENDICOD'
              LookupDisplay = 'VENDA60NOME'
              LookupSource = DSTblProf
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From ConfigAgendaProf Where (%MFiltro)')
    object SQLTemplateCFAGICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Interno'
      FieldName = 'CFAGICOD'
      Origin = 'DB.CONFIGAGENDA.CFAGICOD'
      Visible = False
    end
    object SQLTemplatePROFICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Profissional'
      FieldName = 'PROFICOD'
      Origin = 'DB.CONFIGAGENDA.PROFICOD'
    end
    object SQLTemplateCFAGDFERIAINI: TDateTimeField
      FieldName = 'CFAGDFERIAINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDFERIAINI'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCFAGDFERIAFIM: TDateTimeField
      FieldName = 'CFAGDFERIAFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDFERIAFIM'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCFAGIINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'CFAGIINTERVALO'
      Origin = 'DB.CONFIGAGENDA.CFAGIINTERVALO'
    end
    object SQLTemplateCFAGCDOMINGO: TStringField
      DisplayLabel = 'Domingo'
      FieldName = 'CFAGCDOMINGO'
      Origin = 'DB.CONFIGAGENDA.CFAGCDOMINGO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFAGCSEGUNDA: TStringField
      DisplayLabel = 'Segunda'
      FieldName = 'CFAGCSEGUNDA'
      Origin = 'DB.CONFIGAGENDA.CFAGCSEGUNDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFAGCTERCA: TStringField
      DisplayLabel = 'Ter'#231'a'
      FieldName = 'CFAGCTERCA'
      Origin = 'DB.CONFIGAGENDA.CFAGCTERCA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFAGCQUARTA: TStringField
      DisplayLabel = 'Quarta'
      FieldName = 'CFAGCQUARTA'
      Origin = 'DB.CONFIGAGENDA.CFAGCQUARTA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFAGCQUINTA: TStringField
      DisplayLabel = 'Quinta'
      FieldName = 'CFAGCQUINTA'
      Origin = 'DB.CONFIGAGENDA.CFAGCQUINTA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFAGCSEXTA: TStringField
      DisplayLabel = 'Sexta'
      FieldName = 'CFAGCSEXTA'
      Origin = 'DB.CONFIGAGENDA.CFAGCSEXTA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFAGCSABADO: TStringField
      DisplayLabel = 'S'#225'bado'
      FieldName = 'CFAGCSABADO'
      Origin = 'DB.CONFIGAGENDA.CFAGCSABADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFAGDDOMINI: TDateTimeField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'CFAGDDOMINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDDOMINI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDDOMFIM: TDateTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'CFAGDDOMFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDDOMFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDSEGINI: TDateTimeField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'CFAGDSEGINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEGINI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDSEGFIM: TDateTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'CFAGDSEGFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEGFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDTERINI: TDateTimeField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'CFAGDTERINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDTERINI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDTERFIM: TDateTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'CFAGDTERFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDTERFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDQUAINI: TDateTimeField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'CFAGDQUAINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUAINI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDQUAFIM: TDateTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'CFAGDQUAFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUAFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDQUIINI: TDateTimeField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'CFAGDQUIINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUIINI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDQUIFIM: TDateTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'CFAGDQUIFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDQUIFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDSEXINI: TDateTimeField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'CFAGDSEXINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEXINI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDSEXFIM: TDateTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'CFAGDSEXFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDSEXFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDSABINI: TDateTimeField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'CFAGDSABINI'
      Origin = 'DB.CONFIGAGENDA.CFAGDSABINI'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateCFAGDSABFIM: TDateTimeField
      DisplayLabel = 'Hora Final'
      FieldName = 'CFAGDSABFIM'
      Origin = 'DB.CONFIGAGENDA.CFAGDSABFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SQLTemplateUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CONFIGAGENDA.USUAICOD'
    end
    object SQLTemplateNomeProfissional: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeProfissional'
      Size = 60
      Calculated = True
    end
  end
  object TblProfissional: TTable
    DatabaseName = 'DB'
    TableName = 'VENDEDOR'
    Left = 32
    Top = 264
    object TblProfissionalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Required = True
    end
    object TblProfissionalVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
    end
  end
  object DSTblProf: TDataSource
    DataSet = TblProfissional
    Left = 64
    Top = 264
  end
end
