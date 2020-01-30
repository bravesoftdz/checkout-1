inherited DM: TDM
  OldCreateOrder = True
  Left = 155
  Top = 100
  Height = 382
  Width = 514
  inherited DB: TDatabase
    AliasName = 'UnitGestao'
    Connected = True
  end
  inherited SQLAcesso: TRxQuery
    Left = 214
  end
  object SQLConfigGeral: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CONFIGGERAL')
    Macros = <>
    Left = 133
    Top = 61
    object SQLConfigGeralCFGEA255PATHREPORT: TStringField
      FieldName = 'CFGEA255PATHREPORT'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHREPORT'
      FixedChar = True
      Size = 255
    end
  end
  object SQLConfigVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CONFIGVENDA')
    Macros = <>
    Left = 141
    Top = 117
  end
  object SQLProdutoOrdemPesquisa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ProdutoOrdemPesquisa')
    Macros = <>
    Left = 221
    Top = 117
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Produto')
    Macros = <>
    Left = 325
    Top = 117
  end
  object SQLProdutoFilho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Produto')
    Macros = <>
    Left = 394
    Top = 117
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ProdutoSaldo')
    Macros = <>
    Left = 394
    Top = 166
  end
  object SQLPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from TabelaPreco')
    Macros = <>
    Left = 394
    Top = 219
  end
  object SQLConfigCrediario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CONFIGCREDIARIO')
    Macros = <>
    Left = 301
    Top = 37
  end
  object SQLTerminalAtivo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from TERMINAL')
    Macros = <>
    Left = 394
    Top = 37
  end
end
