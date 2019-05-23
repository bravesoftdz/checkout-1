inherited FormCadastroEcf: TFormCadastroEcf
  Left = 310
  Top = 122
  Caption = 'Cadastro de ECFs / NFCe'
  ClientHeight = 402
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 402
    inherited PanelCabecalho: TPanel
      Width = 750
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 750
        inherited Panel1: TPanel
          Width = 748
          inherited PanelNavigator: TPanel
            Width = 748
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 748
            end
          end
          inherited PanelLeft: TPanel
            Left = 291
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 750
      Height = 328
      inherited PanelBarra: TPanel
        Height = 328
        inherited Button3: TRxSpeedButton
          Caption = '&3 Al'#237'quotas'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 328
        inherited Panel5: TPanel
          Width = 620
          Height = 328
          inherited PagePrincipal: TPageControl
            Width = 620
            Height = 246
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 612
                Height = 173
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ECFA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ECFA30DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ECFA30MODELO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ECFA5IDENTIFICADORCNFV'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ECFA5IDENTIFICADORCNFNV'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 612
                inherited PanelBetween: TPanel
                  Width = 218
                  inherited AdvPanel1: TAdvPanel
                    Width = 218
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 218
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 218
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
              object Label3: TLabel
                Left = 5
                Top = 2
                Width = 41
                Height = 13
                Caption = 'Modelo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 5
                Top = 42
                Width = 103
                Height = 13
                Caption = 'Identificador CNFV'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 5
                Top = 80
                Width = 110
                Height = 13
                Caption = 'Identificador CNFNV'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 5
                Top = 119
                Width = 149
                Height = 13
                Caption = 'Totalizador Taxa Credi'#225'rio'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 5
                Top = 157
                Width = 162
                Height = 13
                Caption = 'Nro de S'#233'rie do Equipamento'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBComboBox1: TDBComboBox
                Left = 2
                Top = 15
                Width = 407
                Height = 21
                Style = csDropDownList
                DataField = 'ECFA30MODELO'
                DataSource = DSTemplate
                ItemHeight = 13
                Items.Strings = (
                  'NFCE DR700'
                  'NFCE DR800'
                  'NFCE BEMATECH'
                  'NFCE EPSON'
                  'NFCE ELGIN'
                  'NFCE A4'
                  'BEMATECH MP-25 FI'
                  'DARUMA FRAMEWORK'
                  'EPSON TERMICA'
                  'CORISCO CT7000 V3'
                  'ELGIN MFD FIT 1E'
                  'SWEDAS7000'
                  'SWEDAS7000_AFRAC'
                  'SWEDA_TERMICA'
                  'SCHALTER SCF_ECF'
                  'URANO_1EFC'
                  'URANO_LOGGERII')
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 2
                Top = 55
                Width = 43
                Height = 21
                DataField = 'ECFA5IDENTIFICADORCNFV'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit4: TDBEdit
                Left = 2
                Top = 94
                Width = 43
                Height = 21
                DataField = 'ECFA5IDENTIFICADORCNFNV'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit5: TDBEdit
                Left = 2
                Top = 133
                Width = 43
                Height = 21
                DataField = 'ECFA2TRIBTXCRED'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 2
                Top = 171
                Width = 239
                Height = 21
                CharCase = ecUpperCase
                DataField = 'ECFA20NROSERIE'
                DataSource = DSTemplate
                TabOrder = 4
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 620
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 620
            object Label1: TLabel
              Left = 8
              Top = 3
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
              Left = 105
              Top = 3
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
              Width = 94
              Height = 21
              DataField = 'ECFA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 103
              Top = 16
              Width = 414
              Height = 21
              DataField = 'ECFA30DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From Ecf Where (%MFiltro)')
    object SQLTemplateECFA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'ECFA13ID'
      Origin = 'DB.ECF.ECFA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.ECF.EMPRICOD'
    end
    object SQLTemplateECFICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ECFICOD'
      Origin = 'DB.ECF.ECFICOD'
    end
    object SQLTemplateECFA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ECFA30DESCR'
      Origin = 'UNITGESTAO.ECF.ECFA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateECFA30MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'ECFA30MODELO'
      Origin = 'UNITGESTAO.ECF.ECFA30MODELO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateECFA5IDENTIFICADORCNFV: TStringField
      DisplayLabel = 'Identificador CNFV'
      FieldName = 'ECFA5IDENTIFICADORCNFV'
      Origin = 'DB.ECF.ECFA5IDENTIFICADORCNFV'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateECFA5IDENTIFICADORCNFNV: TStringField
      DisplayLabel = 'Identificador CNFNV'
      FieldName = 'ECFA5IDENTIFICADORCNFNV'
      Origin = 'DB.ECF.ECFA5IDENTIFICADORCNFNV'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateECFA2TRIBTXCRED: TStringField
      DisplayLabel = 'Totalizador Taxa Credi'#225'rio'
      FieldName = 'ECFA2TRIBTXCRED'
      Origin = 'DB.ECF.ECFA2TRIBTXCRED'
      FixedChar = True
      Size = 2
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.ECF.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.ECF.REGISTRO'
    end
    object SQLTemplateECFA20NROSERIE: TStringField
      FieldName = 'ECFA20NROSERIE'
      Origin = 'DB.ECF.ECFA20NROSERIE'
      FixedChar = True
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Ecf'
      'set'
      '  ECFA13ID = :ECFA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  ECFICOD = :ECFICOD,'
      '  ECFA30DESCR = :ECFA30DESCR,'
      '  ECFA30MODELO = :ECFA30MODELO,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  ECFA5IDENTIFICADORCNFV = :ECFA5IDENTIFICADORCNFV,'
      '  ECFA5IDENTIFICADORCNFNV = :ECFA5IDENTIFICADORCNFNV'
      'where'
      '  ECFA13ID = :OLD_ECFA13ID')
    InsertSQL.Strings = (
      'insert into Ecf'
      
        '  (ECFA13ID, EMPRICOD, ECFICOD, ECFA30DESCR, ECFA30MODELO, PENDE' +
        'NTE, REGISTRO, '
      '   ECFA5IDENTIFICADORCNFV, ECFA5IDENTIFICADORCNFNV)'
      'values'
      
        '  (:ECFA13ID, :EMPRICOD, :ECFICOD, :ECFA30DESCR, :ECFA30MODELO, ' +
        ':PENDENTE, '
      '   :REGISTRO, :ECFA5IDENTIFICADORCNFV, :ECFA5IDENTIFICADORCNFNV)')
    DeleteSQL.Strings = (
      'delete from Ecf'
      'where'
      '  ECFA13ID = :OLD_ECFA13ID')
  end
end
