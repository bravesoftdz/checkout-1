object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 247
  Top = 165
  Height = 480
  Width = 696
  object IBDatabase: TIBDatabase
    DatabaseName = '127.0.0.1:C:\Unit\Gestao\Dados\Conceitos\Banco.gdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = ibTrans
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 24
    Top = 12
  end
  object ibTrans: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 88
    Top = 12
  end
  object ibPedidoVenda: TIBQuery
    Database = IBDatabase
    Transaction = ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select p.*, c.cliea60razaosoc from pedidovenda p left join clien' +
        'te c on c.cliea13id = p.cliea13id')
    Left = 24
    Top = 60
  end
  object ibPedidoVendaItens: TIBQuery
    Database = IBDatabase
    Transaction = ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsPedidoVenda
    SQL.Strings = (
      
        'Select pv.*, p.PRODA30ADESCRREDUZ  from pedidovendaitem pv left ' +
        'join produto p on p.prodicod = pv.prodicod where  pv.PVITN3QUANT' +
        'VEND > 0 and pv.PDVDA13ID = :PDVDA13ID')
    Left = 20
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
      end>
  end
  object dtsPedidoVenda: TDataSource
    DataSet = ibPedidoVenda
    Left = 88
    Top = 60
  end
  object dtsPedidovendaItem: TDataSource
    DataSet = ibPedidoVendaItens
    Left = 92
    Top = 108
  end
  object ibEmpresa: TIBQuery
    Database = IBDatabase
    Transaction = ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Empresa')
    Left = 24
    Top = 158
  end
  object dtsEmpresa: TDataSource
    DataSet = ibEmpresa
    Left = 88
    Top = 158
  end
  object IBMarcas: TIBQuery
    Database = IBDatabase
    Transaction = ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from MARCA')
    Left = 24
    Top = 214
    object IBMarcasMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'MARCA.MARCICOD'
      Required = True
    end
    object IBMarcasMARCA60DESCR: TIBStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object IBMarcasPENDENTE: TIBStringField
      FieldName = 'PENDENTE'
      Origin = 'MARCA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object IBMarcasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'MARCA.REGISTRO'
    end
  end
  object dtsMarcas: TDataSource
    DataSet = IBMarcas
    Left = 88
    Top = 214
  end
  object ibGrupos: TIBQuery
    Database = IBDatabase
    Transaction = ibTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from  GRUPO')
    Left = 24
    Top = 262
    object ibGruposGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'GRUPO.GRUPICOD'
      Required = True
    end
    object ibGruposGRUPA60DESCR: TIBStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'GRUPO.GRUPA60DESCR'
      Required = True
      FixedChar = True
      Size = 60
    end
    object ibGruposPENDENTE: TIBStringField
      FieldName = 'PENDENTE'
      Origin = 'GRUPO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object ibGruposREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'GRUPO.REGISTRO'
    end
  end
  object dtsGrupos: TDataSource
    DataSet = ibGrupos
    Left = 84
    Top = 262
  end
end
