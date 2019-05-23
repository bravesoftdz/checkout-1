inherited FormCadastroKMDIA: TFormCadastroKMDIA
  Left = 153
  Top = 173
  Caption = 'Cadastro de Kilometragem Di'#225'ria'
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
                    FieldName = 'KMDIA13ID'
                    Width = 96
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Title.Caption = 'Empresa'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'KMDIDDATA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'KMDIIINICIAL'
                    Width = 184
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'KMDIIFINAL'
                    Width = 203
                    Visible = True
                  end>
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 9
                Top = 11
                Width = 65
                Height = 13
                Caption = 'Funcion'#225'rio'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RxDBLookupCombo4: TRxDBLookupCombo
                Left = 4
                Top = 25
                Width = 582
                Height = 21
                Cursor = crHandPoint
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'FUNCA13ID'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                EmptyValue = 'null'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'FUNCA13ID'
                LookupDisplay = 'FUNCA13ID;FUNCA60NOME'
                LookupDisplayIndex = 1
                LookupSource = DSSQLFunc
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 10
              Top = 2
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 98
              Top = 2
              Width = 65
              Height = 13
              Caption = 'Dt. Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 226
              Top = 2
              Width = 54
              Height = 13
              Caption = 'KM Inicial'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 331
              Top = 2
              Width = 46
              Height = 13
              Caption = 'KM Final'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 15
              Width = 86
              Height = 21
              DataField = 'KMDIA13ID'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 223
              Top = 15
              Width = 102
              Height = 21
              DataField = 'KMDIIINICIAL'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit3: TDBEdit
              Left = 328
              Top = 15
              Width = 102
              Height = 21
              DataField = 'KMDIIFINAL'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBDateEdit1: TDBDateEdit
              Left = 94
              Top = 15
              Width = 127
              Height = 21
              Cursor = crHandPoint
              DataField = 'KMDIDDATA'
              DataSource = DSTemplate
              AutoSelect = False
              DirectInput = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
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
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From KMDIA Where (%MFiltro)')
    object SQLTemplateKMDIA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'KMDIA13ID'
      Origin = 'DB.KMDIA.KMDIA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.KMDIA.EMPRICOD'
    end
    object SQLTemplateKMDIICOD: TIntegerField
      Tag = 1
      FieldName = 'KMDIICOD'
      Origin = 'DB.KMDIA.KMDIICOD'
    end
    object SQLTemplateKMDIDDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'KMDIDDATA'
      Origin = 'DB.KMDIA.KMDIDDATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateKMDICSTATUS: TStringField
      FieldName = 'KMDICSTATUS'
      Origin = 'DB.KMDIA.KMDICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateKMDIIINICIAL: TIntegerField
      DisplayLabel = 'KM Inicial'
      FieldName = 'KMDIIINICIAL'
      Origin = 'DB.KMDIA.KMDIIINICIAL'
    end
    object SQLTemplateKMDIIFINAL: TIntegerField
      DisplayLabel = 'KM Final'
      FieldName = 'KMDIIFINAL'
      Origin = 'DB.KMDIA.KMDIIFINAL'
    end
    object SQLTemplateFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.KMDIA.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.KMDIA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.KMDIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object SQLFunc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Funcionario'
      'Order by FUNCA60NOME')
    Macros = <>
    Left = 80
    Top = 192
    object SQLFuncFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FUNCIONARIO.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFuncEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.FUNCIONARIO.EMPRICOD'
    end
    object SQLFuncTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.FUNCIONARIO.TERMICOD'
    end
    object SQLFuncFUNCICOD: TIntegerField
      FieldName = 'FUNCICOD'
      Origin = 'DB.FUNCIONARIO.FUNCICOD'
    end
    object SQLFuncFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      Origin = 'DB.FUNCIONARIO.FUNCA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCCAUTONOMO: TStringField
      FieldName = 'FUNCCAUTONOMO'
      Origin = 'DB.FUNCIONARIO.FUNCCAUTONOMO'
      FixedChar = True
      Size = 1
    end
    object SQLFuncPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FUNCIONARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLFuncREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FUNCIONARIO.REGISTRO'
    end
    object SQLFuncFUNCA11CPF: TStringField
      FieldName = 'FUNCA11CPF'
      Origin = 'DB.FUNCIONARIO.FUNCA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLFuncFUNCA14CNPJ: TStringField
      FieldName = 'FUNCA14CNPJ'
      Origin = 'DB.FUNCIONARIO.FUNCA14CNPJ'
      FixedChar = True
      Size = 14
    end
    object SQLFuncFUNCA15INSS: TStringField
      FieldName = 'FUNCA15INSS'
      Origin = 'DB.FUNCIONARIO.FUNCA15INSS'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA60ENDRES: TStringField
      FieldName = 'FUNCA60ENDRES'
      Origin = 'DB.FUNCIONARIO.FUNCA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCN2PERCCOMISSAO: TBCDField
      FieldName = 'FUNCN2PERCCOMISSAO'
      Origin = 'DB.FUNCIONARIO.FUNCN2PERCCOMISSAO'
      Precision = 15
      Size = 3
    end
    object SQLFuncVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.FUNCIONARIO.VEICA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object DSSQLFunc: TDataSource
    DataSet = SQLFunc
    Left = 108
    Top = 192
  end
end
