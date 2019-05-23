inherited FormTelaManutencaoTabelaPreco: TFormTelaManutencaoTabelaPreco
  Left = 222
  Top = 102
  Width = 801
  Height = 546
  Caption = 'Assistente p/ Manuten'#231#227'o da Tabela de Pre'#231'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 785
    Height = 508
    inherited PanelCentral: TPanel
      Width = 781
      Height = 424
      inherited PanelBarra: TPanel
        Width = 0
        Height = 407
      end
      object PanelAssistente: TPanel
        Left = 134
        Top = 38
        Width = 508
        Height = 331
        BevelOuter = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 9
          Top = 158
          Width = 34
          Height = 13
          Caption = 'Grupo'
        end
        object Label2: TLabel
          Left = 9
          Top = 198
          Width = 60
          Height = 13
          Caption = 'Sub-Grupo'
        end
        object Label3: TLabel
          Left = 9
          Top = 236
          Width = 49
          Height = 13
          Caption = 'Variacao'
        end
        object Label4: TLabel
          Left = 9
          Top = 278
          Width = 35
          Height = 13
          Caption = 'Marca'
        end
        object GroupOperacao: TRadioGroup
          Left = 8
          Top = 5
          Width = 92
          Height = 147
          Caption = 'Opera'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Incluir'
            'Excluir')
          ParentFont = False
          TabOrder = 0
          OnClick = GroupOperacaoClick
        end
        object GroupForma: TRadioGroup
          Left = 106
          Top = 5
          Width = 396
          Height = 147
          Caption = 'Forma'#231#227'o do Pre'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Amentar Pre'#231'o Normal por Percentual'
            'Diminuir Pre'#231'o Normal por Percentual'
            'Somar Valor Fixo ao Pre'#231'o Normal'
            'Subtrair Valor Fixo do Pre'#231'o Normal'
            'Trocar Pre'#231'o Normal por Valor Fixo')
          ParentFont = False
          TabOrder = 1
        end
        object GroupValor: TGroupBox
          Left = 364
          Top = 17
          Width = 121
          Height = 55
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object EditValor: TCurrencyEdit
            Left = 16
            Top = 21
            Width = 88
            Height = 21
            AutoSize = False
            DisplayFormat = '0'
            TabOrder = 0
          end
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 9
          Top = 174
          Width = 490
          Height = 21
          DropDownCount = 8
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          TabOrder = 3
          OnChange = ComboGrupoChange
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 9
          Top = 213
          Width = 490
          Height = 21
          DropDownCount = 8
          Enabled = False
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          TabOrder = 4
          OnChange = ComboSubGrupoChange
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 9
          Top = 252
          Width = 490
          Height = 21
          DropDownCount = 8
          Enabled = False
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          TabOrder = 5
        end
        object ComboMarca: TRxDBLookupCombo
          Left = 9
          Top = 294
          Width = 490
          Height = 21
          DropDownCount = 8
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupSource = DSSQLMarca
          TabOrder = 6
        end
        object GroupExistente: TRadioGroup
          Left = 365
          Top = 75
          Width = 120
          Height = 68
          Caption = 'J'#225' Existentes'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Atualizar'
            'Manter Igual')
          ParentFont = False
          TabOrder = 7
          OnClick = GroupOperacaoClick
        end
      end
      object ProgressBar: TProgressBar
        Left = 0
        Top = 407
        Width = 781
        Height = 17
        Align = alBottom
        TabOrder = 2
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 781
      inherited PanelCabecalho: TPanel
        Width = 781
        inherited PanelNavigator: TPanel
          Width = 781
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 781
            inherited BtnFecharTela: TSpeedButton
              Left = 699
            end
            object BtnOk: TSpeedButton
              Left = 8
              Top = 3
              Width = 75
              Height = 25
              Caption = '&Executar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                DE040000424DDE0400000000000036040000280000000C0000000E0000000100
                080000000000A8000000130B0000130B0000000100000001000000000000A7C2
                B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
                88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000111111111100
                11111111111111111111000B0011111111111111110009090011111111111111
                1100090F10001111111111110009090D0E0011111111110009090B000C060011
                11111100090800000A0200111111000909000011000206001111000708001111
                0003020011111100001111111100030600111111111111111100050200111111
                1111111111110003040011111111111111110001020011111111111111111100
                0011}
              ParentFont = False
              OnClick = BtnOkClick
            end
          end
        end
      end
    end
  end
  object SQLAssistente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select PRODICOD,PRODA60REFER,PRODN3VLRVENDA,PRODN3VLRCOMPRA,PROD' +
        'N3VLRCUSTO From Produto '
      'Where '
      '(%MGrupo) AND'
      '(%MSubGrupo) AND'
      '(%MVariacao) AND'
      '(%MMarca)')
    Macros = <
      item
        DataType = ftString
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVariacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 24
    Top = 96
    object SQLAssistentePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLAssistentePRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLAssistentePRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLAssistentePRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLAssistentePRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
    end
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Grupo')
    Macros = <>
    Left = 24
    Top = 131
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'Select * From SubGrupo'
      'Where GRUPICOD=:GRUPICOD')
    Macros = <>
    Left = 24
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end>
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'DB.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'Select * From Variacao'
      'Where GRUPICOD=:GRUPICOD AND SUBGICOD=:SUBGICOD')
    Macros = <>
    Left = 24
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBGICOD'
        ParamType = ptUnknown
      end>
    object SQLVariacaoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.VARIACAO.VARIICOD'
    end
    object SQLVariacaoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'DB.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Marca')
    Macros = <>
    Left = 24
    Top = 243
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 53
    Top = 131
  end
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 53
    Top = 168
  end
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 53
    Top = 204
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 53
    Top = 244
  end
  object SQLAssistenteCount: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Count(PRODICOD) as NRO From Produto '
      'Where '
      '(%MGrupo) AND'
      '(%MSubGrupo) AND'
      '(%MVariacao) AND'
      '(%MMarca)')
    Macros = <
      item
        DataType = ftString
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVariacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 54
    Top = 96
    object SQLAssistenteCountNRO: TIntegerField
      FieldName = 'NRO'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
  end
  object SQLIncluir: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'INSERT INTO TABELAPRECOPRODUTO'
      '(TPRCICOD,'
      ' PRODICOD,'
      ' PRODA60REFER, '
      ' TPCPN3VLRVENDA,'
      ' TPCPN3MARGLUCR,'
      ' TPCPN3VLRVENDAPROM,'
      ' TPCPDINIPROMO,'
      ' TPCPDFIMPROMO,'
      ' PENDENTE,'
      ' REGISTRO)'
      'VALUES'
      '(:TPRCICOD,'
      ' :PRODICOD,'
      ' :PRODA60REFER,'
      ' :TPCPN3VLRVENDA,'
      ' :TPCPN3MARGLUCR,'
      ' 0,'
      ' NULL,'
      ' NULL,'
      ' "S",'
      ' :REGISTRO)')
    Macros = <>
    Left = 84
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPRCICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PRODA60REFER'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'TPCPN3VLRVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'TPCPN3MARGLUCR'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'REGISTRO'
        ParamType = ptUnknown
      end>
  end
  object SQLTabelaPrecoProduto: TRxQuery
    BeforeDelete = SQLTabelaPrecoProdutoBeforeDelete
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From TabelaPrecoProduto Where'
      'TPRCICOD=:TPRCICOD AND'
      'PRODICOD=:PRODICOD')
    UpdateObject = UpdateSQLTabelaPrecoProduto
    Macros = <>
    Left = 84
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPRCICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
    object SQLTabelaPrecoProdutoTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.TPRCICOD'
    end
    object SQLTabelaPrecoProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.PRODICOD'
    end
    object SQLTabelaPrecoProdutoTPCPN3VLRVENDA: TBCDField
      FieldName = 'TPCPN3VLRVENDA'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLTabelaPrecoProdutoTPCPN3MARGLUCR: TBCDField
      FieldName = 'TPCPN3MARGLUCR'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3MARGLUCR'
      Precision = 15
      Size = 3
    end
    object SQLTabelaPrecoProdutoTPCPN3VLRVENDAPROM: TBCDField
      FieldName = 'TPCPN3VLRVENDAPROM'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDAPROM'
      Precision = 15
      Size = 3
    end
    object SQLTabelaPrecoProdutoTPCPDINIPROMO: TDateTimeField
      FieldName = 'TPCPDINIPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDINIPROMO'
    end
    object SQLTabelaPrecoProdutoTPCPDFIMPROMO: TDateTimeField
      FieldName = 'TPCPDFIMPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDFIMPROMO'
    end
    object SQLTabelaPrecoProdutoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TABELAPRECOPRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTabelaPrecoProdutoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TABELAPRECOPRODUTO.REGISTRO'
    end
  end
  object UpdateSQLTabelaPrecoProduto: TUpdateSQL
    ModifySQL.Strings = (
      'update TabelaPrecoProduto'
      'set'
      '  TPRCICOD = :TPRCICOD,'
      '  PRODICOD = :PRODICOD,'
      '  TPCPN3VLRVENDA = :TPCPN3VLRVENDA,'
      '  TPCPN3MARGLUCR = :TPCPN3MARGLUCR,'
      '  TPCPN3VLRVENDAPROM = :TPCPN3VLRVENDAPROM,'
      '  TPCPDINIPROMO = :TPCPDINIPROMO,'
      '  TPCPDFIMPROMO = :TPCPDFIMPROMO,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  TPRCICOD = :OLD_TPRCICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    InsertSQL.Strings = (
      'insert into TabelaPrecoProduto'
      
        '  (TPRCICOD, PRODICOD, TPCPN3VLRVENDA, TPCPN3MARGLUCR, TPCPN3VLR' +
        'VENDAPROM, '
      '   TPCPDINIPROMO, TPCPDFIMPROMO, PENDENTE, REGISTRO)'
      'values'
      
        '  (:TPRCICOD, :PRODICOD, :TPCPN3VLRVENDA, :TPCPN3MARGLUCR, :TPCP' +
        'N3VLRVENDAPROM, '
      '   :TPCPDINIPROMO, :TPCPDFIMPROMO, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from TabelaPrecoProduto'
      'where'
      '  TPRCICOD = :OLD_TPRCICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    Left = 115
    Top = 132
  end
end
