object DM: TDM
  OldCreateOrder = False
  Left = 569
  Top = 264
  Height = 401
  Width = 449
  object IBDataBase: TIBDatabase
    DatabaseName = 'C:\Util\BancoDados\Giacomini\BANCO.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = ibTrans
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 92
    Top = 8
  end
  object ibTrans: TIBTransaction
    Active = False
    DefaultDatabase = IBDataBase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 20
    Top = 8
  end
  object ibItens: TIBQuery
    Database = IBDataBase
    Transaction = ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT CI.*, p.prodn2aliqpis, p.prodn2aliqcofins, i.icmsn2aliquo' +
        'ta FROM cupomitem CI'
      'LEFT join  CUPOM ON CUPOM.cupoa13id = CI.cupoa13id'
      'LEFT JOIN PRODUTO P ON P.PRODICOD = CI.PRODICOD'
      'left join icms i on i.icmsicod = p.icmsicod'
      
        'WHERE CUPOM.cupodemis >= :xDataInicial and CUPOM.cupodemis <= :x' +
        'DataFinal'
      'order by ci.cupoa13id')
    Left = 20
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xDataInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataFinal'
        ParamType = ptUnknown
      end>
  end
  object dsItens: TDataSource
    DataSet = ibItens
    Left = 64
    Top = 60
  end
  object IBSQL: TIBSQL
    Database = IBDataBase
    ParamCheck = True
    Transaction = ibTrans
    Left = 128
    Top = 60
  end
end
