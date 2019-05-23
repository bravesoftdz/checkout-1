inherited FormTelaConsultaCliente: TFormTelaConsultaCliente
  Left = 211
  Top = 160
  Width = 770
  Height = 478
  Caption = 'Consulta de Clientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 762
    Height = 451
    inherited PanelCabecalho: TPanel
      Width = 758
      inherited Panel2: TPanel
        Width = 758
        inherited Panel3: TPanel
          Left = 459
        end
        inherited DBNavigatorTemplate: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelNavigator: TPanel
        Width = 758
        inherited Image1: TImage
          Width = 758
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 758
      Height = 367
      inherited PanelProcura: TPanel
        Width = 758
      end
      inherited DBGridLista: TDBGrid
        Width = 758
        Height = 320
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRICOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60NOMEFANT'
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEDCAD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA14CGC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA20IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA11CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA10RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FAX'
            Visible = True
          end>
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From CLIENTE Where (%MFiltro)')
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLTemplateCLIEA14CGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateCLIEA20IE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object SQLTemplateCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      EditMask = '#########-##;0;_'
      FixedChar = True
      Size = 11
    end
    object SQLTemplateCLIEA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Raz'#227'o Soc.'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIEDCAD: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLTemplateCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone1'
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone2'
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLIEA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
  end
end
