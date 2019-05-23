inherited FormPesquisaChave: TFormPesquisaChave
  Left = 218
  Top = 142
  Width = 774
  Caption = 'Pesquisa por Palavra Chave'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 766
    inherited PanelCabecalho: TPanel
      Width = 762
      inherited LabelTitulo: TLabel
        Left = 10
        Top = 12
      end
      inherited PanelNavigator: TPanel
        Width = 762
        inherited Image1: TImage
          Width = 762
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 632
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 310
        Align = alClient
        Color = 15461355
        TabOrder = 0
        object DBGridLista: TDBGrid
          Left = 1
          Top = 90
          Width = 630
          Height = 219
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSSQLHelp
          FixedColor = 16767449
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGridListaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'HELPCPERGUNTACHAVE'
              Title.Caption = 'Palavra Chave'
              Width = 203
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HELPA13ID'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HELPDINICIO'
              Title.Caption = 'Inicio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HELPDTERMINO'
              Title.Caption = 'T'#233'rmino'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIEA60RAZAOSOC'
              Title.Caption = 'Cliente'
              Width = 258
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HELPCCONTATO'
              Title.Caption = 'Contato'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HELPCNIVEL'
              Title.Caption = 'Nivel'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PENDENTE'
              Title.Caption = 'Pendente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REGISTRO'
              Title.Caption = 'Data Registro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODA60DESCR'
              Title.Caption = 'Produto'
              Width = 156
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 630
          Height = 89
          Align = alTop
          Color = 14536396
          TabOrder = 1
          object Label1: TLabel
            Left = 4
            Top = 42
            Width = 117
            Height = 13
            Caption = 'Chave Para Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object PesquisaOK: TSpeedButton
            Left = 197
            Top = 57
            Width = 37
            Height = 22
            Caption = 'OK'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = PesquisaOKClick
          end
          object Label2: TLabel
            Left = 5
            Top = 3
            Width = 45
            Height = 13
            Caption = 'Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 3
            Top = 57
            Width = 189
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnKeyDown = Edit1KeyDown
          end
          object DBProduto: TDBLookupComboBox
            Left = 5
            Top = 17
            Width = 145
            Height = 21
            Hint = 'Selecione um Produto ou nenhum para todos.'
            KeyField = 'PRODICOD'
            ListField = 'PRODA60DESCR'
            ListSource = DSSQLProdHelp
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object CheckTipoPesquisa: TCheckBox
            Left = 260
            Top = 59
            Width = 209
            Height = 17
            Caption = 'Contendo todas as palavras'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
  end
  object SQLHelp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM HELPDESK')
    Left = 256
    Top = 8
    object SQLHelpHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.HELPDESK.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLHelpEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.HELPDESK.EMPRICOD'
    end
    object SQLHelpTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.HELPDESK.TERMICOD'
    end
    object SQLHelpHELPICOD: TIntegerField
      FieldName = 'HELPICOD'
      Origin = 'DB.HELPDESK.HELPICOD'
    end
    object SQLHelpCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.HELPDESK.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLHelpHELPCCONTATO: TStringField
      FieldName = 'HELPCCONTATO'
      Origin = 'DB.HELPDESK.HELPCCONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLHelpHELPDINICIO: TDateTimeField
      FieldName = 'HELPDINICIO'
      Origin = 'DB.HELPDESK.HELPDINICIO'
    end
    object SQLHelpHELPTSOLICITACAO: TMemoField
      FieldName = 'HELPTSOLICITACAO'
      Origin = 'DB.HELPDESK.HELPTSOLICITACAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLHelpHELPTSOLUCAO: TMemoField
      FieldName = 'HELPTSOLUCAO'
      Origin = 'DB.HELPDESK.HELPTSOLUCAO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLHelpHELPCTIPO: TStringField
      FieldName = 'HELPCTIPO'
      Origin = 'DB.HELPDESK.HELPCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLHelpTPHPICOD: TIntegerField
      FieldName = 'TPHPICOD'
      Origin = 'DB.HELPDESK.TPHPICOD'
    end
    object SQLHelpHELPCNIVEL: TStringField
      FieldName = 'HELPCNIVEL'
      Origin = 'DB.HELPDESK.HELPCNIVEL'
      FixedChar = True
      Size = 1
    end
    object SQLHelpHELPDTERMINO: TDateTimeField
      FieldName = 'HELPDTERMINO'
      Origin = 'DB.HELPDESK.HELPDTERMINO'
    end
    object SQLHelpHELPCPERGUNTACHAVE: TStringField
      FieldName = 'HELPCPERGUNTACHAVE'
      Origin = 'DB.HELPDESK.HELPCPERGUNTACHAVE'
      FixedChar = True
      Size = 100
    end
    object SQLHelpPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.HELPDESK.PRODICOD'
    end
    object SQLHelpPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.HELPDESK.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLHelpREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.HELPDESK.REGISTRO'
    end
    object SQLHelpCLIEA60RAZAOSOC: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIEA60RAZAOSOC'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLHelpPRODA60DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
  end
  object DSSQLHelp: TDataSource
    DataSet = SQLHelp
    Left = 288
    Top = 8
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 320
    Top = 8
  end
  object SQLProduto: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 384
    Top = 8
    object SQLProdutoPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLProdHelp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT DISTINCT PRODICOD FROM HELPDESK')
    Left = 440
    Top = 8
    object SQLProdHelpPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'PRODICOD'
      Origin = 'DB.HELPDESK.PRODICOD'
    end
    object SQLProdHelpPRODA60DESCR: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
  end
  object DSSQLProdHelp: TDataSource
    DataSet = SQLProdHelp
    Left = 472
    Top = 8
  end
end
