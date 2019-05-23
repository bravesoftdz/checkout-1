inherited FormCadastroClienteHelpDeskProduto: TFormCadastroClienteHelpDeskProduto
  Left = 211
  Top = 128
  Caption = 'Cadastro Produtos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 83
            Height = 366
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 293
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLPOCTEMHELP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Title.Caption = 'Registro'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60RAZAOSOC'
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
          end
          inherited PanelMaster: TPanel
            Top = 43
            Height = 40
            object Label3: TLabel
              Left = 6
              Top = 1
              Width = 39
              Height = 13
              Caption = 'Cliente'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 6
              Top = 15
              Width = 100
              Height = 21
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 109
              Top = 15
              Width = 500
              Height = 21
              DataField = 'CLIEA60RAZAOSOC'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 43
            object Label1: TLabel
              Left = 6
              Top = 1
              Width = 45
              Height = 13
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnProduto: TSpeedButton
              Left = 584
              Top = 17
              Width = 24
              Height = 21
              Hint = 'Acessa Produtos'
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
              OnClick = BtnProdutoClick
            end
            object ComboProduto: TRxDBLookupCombo
              Left = 5
              Top = 17
              Width = 580
              Height = 21
              Cursor = crHandPoint
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              EmptyValue = 'null'
              FieldsDelimiter = '>'
              LookupField = 'PRODICOD'
              LookupDisplay = 'PRODICOD;PRODA60DESCR'
              LookupDisplayIndex = 1
              LookupSource = DSSQLProduto
              TabOrder = 0
              OnKeyDown = ComboProdutoKeyDown
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From CLIENTEHELPDESKPRODUTO Where'
      'CLIEA13ID = :CLIEA13ID'
      'and'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.CLIENTEHELPDESKPRODUTO.PRODICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEHELPDESKPRODUTO.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLPOCTEMHELP: TStringField
      DisplayLabel = 'Tem Help Desk'
      FieldName = 'CLPOCTEMHELP'
      Origin = 'DB.CLIENTEHELPDESKPRODUTO.CLPOCTEMHELP'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTEHELPDESKPRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Regsitro'
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTEHELPDESKPRODUTO.REGISTRO'
    end
    object SQLTemplatePRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'CLIEA60RAZAOSOC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 60
      Lookup = True
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODICOD, PRODA60DESCR FROM PRODUTO'
      'ORDER BY PRODA60DESCR')
    Macros = <>
    Left = 42
    Top = 208
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CLIEA13ID, CLIEA60RAZAOSOC FROM CLIENTE'
      'ORDER BY CLIEA60RAZAOSOC')
    Macros = <>
    Left = 70
    Top = 208
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 14
    Top = 208
  end
end
