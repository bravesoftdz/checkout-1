inherited FormTelaRapidaMovimentoDiverso: TFormTelaRapidaMovimentoDiverso
  Left = 192
  Top = 107
  Height = 473
  Caption = 'Cabe'#231'alho de Entradas/Sa'#237'das no Estoque'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 446
    inherited PanelCentral: TPanel
      Height = 362
      inherited PanelBarra: TPanel
        Top = 174
        Width = 4
        Height = 188
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 85
        Align = alTop
        Color = 12572888
        TabOrder = 1
        object Label3: TLabel
          Left = 35
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 149
          Top = 8
          Width = 54
          Height = 13
          Caption = 'Conclu'#237'do'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 34
          Top = 43
          Width = 119
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit3: TDBDateEdit
          Left = 30
          Top = 20
          Width = 112
          Height = 21
          DataField = 'MOVDDMOVIMENTO'
          DataSource = DSSQLMovimentoDiverso
          NumGlyphs = 2
          TabOrder = 0
        end
        object ComboConcluido: TRxDBComboBox
          Left = 145
          Top = 20
          Width = 112
          Height = 21
          Style = csDropDownList
          DataField = 'MOVDCCONLUIDO'
          DataSource = DSSQLMovimentoDiverso
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit2: TDBEdit
          Left = 30
          Top = 56
          Width = 37
          Height = 21
          DataField = 'OPESICOD'
          TabOrder = 2
        end
        object ComboOperacao: TRxDBLookupCombo
          Left = 70
          Top = 56
          Width = 438
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'OPESICOD'
          DisplayEmpty = 'Selecione uma opera'#231#227'o'
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESICOD;OPESA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLOperacaoEstoque
          TabOrder = 3
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 85
        Width = 757
        Height = 89
        Align = alTop
        BevelWidth = 3
        Color = 12572888
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label13: TLabel
          Left = 10
          Top = 39
          Width = 170
          Height = 13
          Caption = 'C'#243'digo / Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 524
          Top = 39
          Width = 27
          Height = 13
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditCodProduto: TDBEdit
          Left = 6
          Top = 53
          Width = 47
          Height = 20
          Ctl3D = True
          DataField = 'PRODICOD'
          DataSource = DSSQLMovimentoDiversoItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object ComboProdutos: TRxDBLookupCombo
          Left = 54
          Top = 53
          Width = 459
          Height = 20
          DropDownCount = 8
          Ctl3D = True
          DataField = 'PRODICOD'
          DataSource = DSSQLMovimentoDiversoItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PRODICOD'
          LookupDisplay = 'PRODA60DESCR'
          LookupSource = DSSQLProdutos
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 519
          Top = 53
          Width = 75
          Height = 21
          Ctl3D = True
          DataField = 'MVDIN3QTD'
          DataSource = DSSQLMovimentoDiversoItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object BTItemNovo: TBitBtn
          Left = 601
          Top = 52
          Width = 50
          Height = 22
          Caption = 'Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object BtItemGravar: TBitBtn
          Left = 651
          Top = 52
          Width = 50
          Height = 22
          Caption = 'Gravar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object BtItemExcluir: TBitBtn
          Left = 701
          Top = 52
          Width = 50
          Height = 22
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Panel7: TPanel
          Left = 3
          Top = 3
          Width = 751
          Height = 34
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          BevelWidth = 2
          Caption = 'Lan'#231'amento dos Produtos'
          Color = 10053171
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
      end
      object DBGridItens: TDBGrid
        Left = 4
        Top = 174
        Width = 753
        Height = 188
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSSQLMovimentoDiversoItem
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODICOD'
            Title.Caption = 'C'#243'd.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescricaoProduto'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 383
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PVITN3QUANT'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 135
            Visible = True
          end>
      end
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select OPESICOD,OPESA60DESCR from OperacaoEstoque')
    Macros = <>
    Left = 304
    Top = 14
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 332
    Top = 14
  end
  object SQLMovimentoDiverso: TRxQuery
    Tag = 2
    BeforePost = SQLMovimentoDiversoBeforePost
    OnNewRecord = SQLMovimentoDiversoNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from MovimentoDiverso')
    Macros = <>
    Left = 174
    Top = 14
    object SQLMovimentoDiversoMOVDA13ID: TStringField
      Tag = 2
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLMovimentoDiversoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTODIVERSO.EMPRICOD'
    end
    object SQLMovimentoDiversoMOVDICOD: TIntegerField
      Tag = 1
      FieldName = 'MOVDICOD'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDICOD'
    end
    object SQLMovimentoDiversoOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.MOVIMENTODIVERSO.OPESICOD'
    end
    object SQLMovimentoDiversoMOVDDMOVIMENTO: TDateTimeField
      FieldName = 'MOVDDMOVIMENTO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDDMOVIMENTO'
    end
    object SQLMovimentoDiversoMOVDA255OBS: TStringField
      FieldName = 'MOVDA255OBS'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLMovimentoDiversoMOVDCCONLUIDO: TStringField
      FieldName = 'MOVDCCONLUIDO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCCONLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLMovimentoDiversoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLMovimentoDiversoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSO.REGISTRO'
    end
    object SQLMovimentoDiversoUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.MOVIMENTODIVERSO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoDiversoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.MOVIMENTODIVERSO.USUAICOD'
    end
  end
  object DSSQLMovimentoDiverso: TDataSource
    AutoEdit = False
    DataSet = SQLMovimentoDiverso
    Left = 202
    Top = 14
  end
  object SQLProdutos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTO'
      'Order by PRODA60DESCR')
    Macros = <>
    Left = 368
    Top = 14
    object SQLProdutosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutosPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      Precision = 15
      Size = 3
    end
    object SQLProdutosPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutosPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
  end
  object DSSQLProdutos: TDataSource
    DataSet = SQLProdutos
    Left = 396
    Top = 14
  end
  object DSSQLMovimentoDiversoItem: TDataSource
    AutoEdit = False
    DataSet = SQLMovimentoDiversoItem
    Left = 262
    Top = 14
  end
  object SQLMovimentoDiversoItem: TRxQuery
    OnCalcFields = SQLMovimentoDiversoItemCalcFields
    OnNewRecord = SQLMovimentoDiversoItemNewRecord
    DatabaseName = 'DB'
    DataSource = DSSQLMovimentoDiverso
    RequestLive = True
    SQL.Strings = (
      'Select * From MOVIMENTODIVERSOITEM '
      'Where MOVDA13ID = :MOVDA13ID ')
    Macros = <>
    Left = 233
    Top = 14
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'MOVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLMovimentoDiversoItemMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovimentoDiversoItemMVDIIITEM: TIntegerField
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIIITEM'
    end
    object SQLMovimentoDiversoItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODICOD'
    end
    object SQLMovimentoDiversoItemMVDIN3QTD: TBCDField
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLMovimentoDiversoItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLMovimentoDiversoItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.REGISTRO'
    end
    object SQLMovimentoDiversoItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLMovimentoDiversoItemDescricaoProduto: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescricaoProduto'
      Size = 60
      Calculated = True
    end
    object SQLMovimentoDiversoItemReferencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'Referencia'
      Size = 30
      Calculated = True
    end
  end
end
