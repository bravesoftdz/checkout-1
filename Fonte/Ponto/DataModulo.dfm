object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 343
  Top = 196
  Height = 222
  Width = 290
  object DB: TDatabase
    AliasName = 'UnitGestao'
    Connected = True
    DatabaseName = 'DB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 22
    Top = 9
  end
  object SQLFuncionario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '  FORNICOD,'
      '  HORAICOD,'
      '  FORNA13IDCRACHA,'
      '  FORNA60RAZAOSOC,'
      '  FORNBIMAGEM,'
      '  FORNBDIGITAL1,'
      '  FORNBDIGITAL2,'
      '  FORNBDIGITAL3'
      'From '
      '  FORNECEDOR'
      'Where'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 88
    Top = 9
    object SQLFuncionarioFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFuncionarioHORAICOD: TIntegerField
      FieldName = 'HORAICOD'
      Origin = 'DB.FORNECEDOR.HORAICOD'
    end
    object SQLFuncionarioFORNA13IDCRACHA: TStringField
      FieldName = 'FORNA13IDCRACHA'
      Origin = 'DB.FORNECEDOR.FORNA13IDCRACHA'
      FixedChar = True
      Size = 13
    end
    object SQLFuncionarioFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFuncionarioFORNBIMAGEM: TBlobField
      FieldName = 'FORNBIMAGEM'
      Origin = 'DB.FORNECEDOR.FORNBIMAGEM'
      Size = 1
    end
    object SQLFuncionarioFORNBDIGITAL1: TBlobField
      FieldName = 'FORNBDIGITAL1'
      Origin = 'DB.FORNECEDOR.FORNBDIGITAL1'
      Size = 1
    end
    object SQLFuncionarioFORNBDIGITAL2: TBlobField
      FieldName = 'FORNBDIGITAL2'
      Origin = 'DB.FORNECEDOR.FORNBDIGITAL2'
      Size = 1
    end
    object SQLFuncionarioFORNBDIGITAL3: TBlobField
      FieldName = 'FORNBDIGITAL3'
      Origin = 'DB.FORNECEDOR.FORNBDIGITAL3'
      Size = 1
    end
  end
  object SQLPontoFunc: TRxQuery
    BeforePost = SQLPontoFuncBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select '
      '  *'
      'From '
      '  PontoFunc'
      'Where'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 96
    Top = 71
    object SQLPontoFuncPONTA13ID: TStringField
      FieldName = 'PONTA13ID'
      Origin = 'DB.PONTOFUNC.PONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPontoFuncEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PONTOFUNC.EMPRICOD'
    end
    object SQLPontoFuncPONTICOD: TIntegerField
      FieldName = 'PONTICOD'
      Origin = 'DB.PONTOFUNC.PONTICOD'
    end
    object SQLPontoFuncFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.PONTOFUNC.FORNICOD'
    end
    object SQLPontoFuncPONTDDATA: TDateTimeField
      FieldName = 'PONTDDATA'
      Origin = 'DB.PONTOFUNC.PONTDDATA'
    end
    object SQLPontoFuncPONTDMANHAENT: TDateTimeField
      FieldName = 'PONTDMANHAENT'
      Origin = 'DB.PONTOFUNC.PONTDMANHAENT'
    end
    object SQLPontoFuncPONTDMANHASAI: TDateTimeField
      FieldName = 'PONTDMANHASAI'
      Origin = 'DB.PONTOFUNC.PONTDMANHASAI'
    end
    object SQLPontoFuncPONTDTARDEENT: TDateTimeField
      FieldName = 'PONTDTARDEENT'
      Origin = 'DB.PONTOFUNC.PONTDTARDEENT'
    end
    object SQLPontoFuncPONTDTARDESAI: TDateTimeField
      FieldName = 'PONTDTARDESAI'
      Origin = 'DB.PONTOFUNC.PONTDTARDESAI'
    end
    object SQLPontoFuncPONTDNOITEENT: TDateTimeField
      FieldName = 'PONTDNOITEENT'
      Origin = 'DB.PONTOFUNC.PONTDNOITEENT'
    end
    object SQLPontoFuncPONTDNOITESAI: TDateTimeField
      FieldName = 'PONTDNOITESAI'
      Origin = 'DB.PONTOFUNC.PONTDNOITESAI'
    end
    object SQLPontoFuncPONTDDIASEMANA: TStringField
      FieldName = 'PONTDDIASEMANA'
      Origin = 'DB.PONTOFUNC.PONTDDIASEMANA'
      Size = 3
    end
    object SQLPontoFuncPONTDATRAZO: TDateTimeField
      FieldName = 'PONTDATRAZO'
      Origin = 'DB.PONTOFUNC.PONTDATRAZO'
    end
    object SQLPontoFuncPONTDEXTRA: TDateTimeField
      FieldName = 'PONTDEXTRA'
      Origin = 'DB.PONTOFUNC.PONTDEXTRA'
    end
    object SQLPontoFuncPONTTOBS: TStringField
      FieldName = 'PONTTOBS'
      Origin = 'DB.PONTOFUNC.PONTTOBS'
      Size = 254
    end
    object SQLPontoFuncREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PONTOFUNC.REGISTRO'
    end
    object SQLPontoFuncPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PONTOFUNC.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object SQLTemplate: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 22
    Top = 71
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '  EMPRICOD,'
      '  EMPRA60RAZAOSOC'
      'From '
      '  EMPRESA'
      'Where'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 165
    Top = 9
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object SQLHorario: TRxQuery
    BeforePost = SQLPontoFuncBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select '
      '  *'
      'From '
      '  Horario'
      'Where'
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 173
    Top = 71
    object SQLHorarioHORAICOD: TIntegerField
      FieldName = 'HORAICOD'
      Origin = 'DB.HORARIO.HORAICOD'
    end
    object SQLHorarioHORAA60DESCR: TStringField
      FieldName = 'HORAA60DESCR'
      Origin = 'DB.HORARIO.HORAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLHorarioHORADSEGMANENT: TDateTimeField
      FieldName = 'HORADSEGMANENT'
      Origin = 'DB.HORARIO.HORADSEGMANENT'
    end
    object SQLHorarioHORADSEGMANSAI: TDateTimeField
      FieldName = 'HORADSEGMANSAI'
      Origin = 'DB.HORARIO.HORADSEGMANSAI'
    end
    object SQLHorarioHORADSEGTARENT: TDateTimeField
      FieldName = 'HORADSEGTARENT'
      Origin = 'DB.HORARIO.HORADSEGTARENT'
    end
    object SQLHorarioHORADSEGTARSAI: TDateTimeField
      FieldName = 'HORADSEGTARSAI'
      Origin = 'DB.HORARIO.HORADSEGTARSAI'
    end
    object SQLHorarioHORADSEGNOIENT: TDateTimeField
      FieldName = 'HORADSEGNOIENT'
      Origin = 'DB.HORARIO.HORADSEGNOIENT'
    end
    object SQLHorarioHORADSEGNOISAI: TDateTimeField
      FieldName = 'HORADSEGNOISAI'
      Origin = 'DB.HORARIO.HORADSEGNOISAI'
    end
    object SQLHorarioHORADTERMANENT: TDateTimeField
      FieldName = 'HORADTERMANENT'
      Origin = 'DB.HORARIO.HORADTERMANENT'
    end
    object SQLHorarioHORADTERMANSAI: TDateTimeField
      FieldName = 'HORADTERMANSAI'
      Origin = 'DB.HORARIO.HORADTERMANSAI'
    end
    object SQLHorarioHORADTERTARENT: TDateTimeField
      FieldName = 'HORADTERTARENT'
      Origin = 'DB.HORARIO.HORADTERTARENT'
    end
    object SQLHorarioHORADTERTARSAI: TDateTimeField
      FieldName = 'HORADTERTARSAI'
      Origin = 'DB.HORARIO.HORADTERTARSAI'
    end
    object SQLHorarioHORADTERNOIENT: TDateTimeField
      FieldName = 'HORADTERNOIENT'
      Origin = 'DB.HORARIO.HORADTERNOIENT'
    end
    object SQLHorarioHORADTERNOISAI: TDateTimeField
      FieldName = 'HORADTERNOISAI'
      Origin = 'DB.HORARIO.HORADTERNOISAI'
    end
    object SQLHorarioHORADQUAMANENT: TDateTimeField
      FieldName = 'HORADQUAMANENT'
      Origin = 'DB.HORARIO.HORADQUAMANENT'
    end
    object SQLHorarioHORADQUAMANSAI: TDateTimeField
      FieldName = 'HORADQUAMANSAI'
      Origin = 'DB.HORARIO.HORADQUAMANSAI'
    end
    object SQLHorarioHORADQUATARENT: TDateTimeField
      FieldName = 'HORADQUATARENT'
      Origin = 'DB.HORARIO.HORADQUATARENT'
    end
    object SQLHorarioHORADQUATARSAI: TDateTimeField
      FieldName = 'HORADQUATARSAI'
      Origin = 'DB.HORARIO.HORADQUATARSAI'
    end
    object SQLHorarioHORADQUANOIENT: TDateTimeField
      FieldName = 'HORADQUANOIENT'
      Origin = 'DB.HORARIO.HORADQUANOIENT'
    end
    object SQLHorarioHORADQUANOISAI: TDateTimeField
      FieldName = 'HORADQUANOISAI'
      Origin = 'DB.HORARIO.HORADQUANOISAI'
    end
    object SQLHorarioHORADQUIMANENT: TDateTimeField
      FieldName = 'HORADQUIMANENT'
      Origin = 'DB.HORARIO.HORADQUIMANENT'
    end
    object SQLHorarioHORADQUIMANSAI: TDateTimeField
      FieldName = 'HORADQUIMANSAI'
      Origin = 'DB.HORARIO.HORADQUIMANSAI'
    end
    object SQLHorarioHORADQUITARENT: TDateTimeField
      FieldName = 'HORADQUITARENT'
      Origin = 'DB.HORARIO.HORADQUITARENT'
    end
    object SQLHorarioHORADQUITARSAI: TDateTimeField
      FieldName = 'HORADQUITARSAI'
      Origin = 'DB.HORARIO.HORADQUITARSAI'
    end
    object SQLHorarioHORADQUINOIENT: TDateTimeField
      FieldName = 'HORADQUINOIENT'
      Origin = 'DB.HORARIO.HORADQUINOIENT'
    end
    object SQLHorarioHORADQUINOISAI: TDateTimeField
      FieldName = 'HORADQUINOISAI'
      Origin = 'DB.HORARIO.HORADQUINOISAI'
    end
    object SQLHorarioHORADSEXMANENT: TDateTimeField
      FieldName = 'HORADSEXMANENT'
      Origin = 'DB.HORARIO.HORADSEXMANENT'
    end
    object SQLHorarioHORADSEXMANSAI: TDateTimeField
      FieldName = 'HORADSEXMANSAI'
      Origin = 'DB.HORARIO.HORADSEXMANSAI'
    end
    object SQLHorarioHORADSEXTARENT: TDateTimeField
      FieldName = 'HORADSEXTARENT'
      Origin = 'DB.HORARIO.HORADSEXTARENT'
    end
    object SQLHorarioHORADSEXTARSAI: TDateTimeField
      FieldName = 'HORADSEXTARSAI'
      Origin = 'DB.HORARIO.HORADSEXTARSAI'
    end
    object SQLHorarioHORADSEXNOIENT: TDateTimeField
      FieldName = 'HORADSEXNOIENT'
      Origin = 'DB.HORARIO.HORADSEXNOIENT'
    end
    object SQLHorarioHORADSEXNOISAI: TDateTimeField
      FieldName = 'HORADSEXNOISAI'
      Origin = 'DB.HORARIO.HORADSEXNOISAI'
    end
    object SQLHorarioHORADSABMANENT: TDateTimeField
      FieldName = 'HORADSABMANENT'
      Origin = 'DB.HORARIO.HORADSABMANENT'
    end
    object SQLHorarioHORADSABMANSAI: TDateTimeField
      FieldName = 'HORADSABMANSAI'
      Origin = 'DB.HORARIO.HORADSABMANSAI'
    end
    object SQLHorarioHORADSABTARENT: TDateTimeField
      FieldName = 'HORADSABTARENT'
      Origin = 'DB.HORARIO.HORADSABTARENT'
    end
    object SQLHorarioHORADSABTARSAI: TDateTimeField
      FieldName = 'HORADSABTARSAI'
      Origin = 'DB.HORARIO.HORADSABTARSAI'
    end
    object SQLHorarioHORADSABNOIENT: TDateTimeField
      FieldName = 'HORADSABNOIENT'
      Origin = 'DB.HORARIO.HORADSABNOIENT'
    end
    object SQLHorarioHORADSABNOISAI: TDateTimeField
      FieldName = 'HORADSABNOISAI'
      Origin = 'DB.HORARIO.HORADSABNOISAI'
    end
    object SQLHorarioHORADDOMMANENT: TDateTimeField
      FieldName = 'HORADDOMMANENT'
      Origin = 'DB.HORARIO.HORADDOMMANENT'
    end
    object SQLHorarioHORADDOMMANSAI: TDateTimeField
      FieldName = 'HORADDOMMANSAI'
      Origin = 'DB.HORARIO.HORADDOMMANSAI'
    end
    object SQLHorarioHORADDOMTARENT: TDateTimeField
      FieldName = 'HORADDOMTARENT'
      Origin = 'DB.HORARIO.HORADDOMTARENT'
    end
    object SQLHorarioHORADDOMTARSAI: TDateTimeField
      FieldName = 'HORADDOMTARSAI'
      Origin = 'DB.HORARIO.HORADDOMTARSAI'
    end
    object SQLHorarioHORADDOMNOIENT: TDateTimeField
      FieldName = 'HORADDOMNOIENT'
      Origin = 'DB.HORARIO.HORADDOMNOIENT'
    end
    object SQLHorarioHORADDOMNOISAI: TDateTimeField
      FieldName = 'HORADDOMNOISAI'
      Origin = 'DB.HORARIO.HORADDOMNOISAI'
    end
    object SQLHorarioHORADTOLEXTRA: TDateTimeField
      FieldName = 'HORADTOLEXTRA'
      Origin = 'DB.HORARIO.HORADTOLEXTRA'
    end
    object SQLHorarioHORADTOLATRAZO: TDateTimeField
      FieldName = 'HORADTOLATRAZO'
      Origin = 'DB.HORARIO.HORADTOLATRAZO'
    end
  end
end
