inherited DM: TDM
  OldCreateOrder = True
  Left = 257
  Top = 142
  Height = 467
  Width = 643
  inherited DB: TDatabase
    AliasName = 'UnitGestao'
    Left = 45
  end
  inherited SQLTemplate: TRxQuery
    Left = 45
    Top = 54
  end
  inherited Campos: TTableItems
    Left = 45
    Top = 99
  end
  inherited UpdateSQLExclusao: TUpdateSQL
    Left = 259
    Top = 176
  end
  inherited SQLExclusao: TRxQuery
    Left = 45
    Top = 144
  end
  inherited DSExclusao: TDataSource
    Left = 45
    Top = 189
  end
  inherited DSListagem: TDataSource
    Left = 116
    Top = 8
  end
  inherited DSEmail: TDataSource
    Left = 176
    Top = 8
  end
  inherited SQLProdutoSaldoDia: TRxQuery
    Left = 45
    Top = 288
  end
  inherited SQLProdutoSaldoAux: TRxQuery
    Left = 45
    Top = 384
  end
  inherited UpdateSQLProdutoSaldo: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTOSALDODIA'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  PRODICOD = :PRODICOD,'
      '  PSDIDDATA = :PSDIDDATA,'
      '  PSDIN3QTDE = :PSDIN3QTDE,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD and'
      '  PSDIDDATA = :OLD_PSDIDDATA and'
      '  PSDIN3QTDE = :OLD_PSDIN3QTDE and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO')
    InsertSQL.Strings = (
      'insert into PRODUTOSALDODIA'
      
        '  (EMPRICOD, PRODICOD, PSDIDDATA, PSDIN3QTDE, PENDENTE, REGISTRO' +
        ')'
      'values'
      
        '  (:EMPRICOD, :PRODICOD, :PSDIDDATA, :PSDIN3QTDE, :PENDENTE, :RE' +
        'GISTRO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOSALDODIA'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD and'
      '  PSDIDDATA = :OLD_PSDIDDATA and'
      '  PSDIN3QTDE = :OLD_PSDIN3QTDE and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO')
    Left = 45
    Top = 336
  end
  inherited SQLAcesso: TRxQuery
    Left = 168
  end
  object SQLUsuarios: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO')
    Left = 116
    Top = 104
    object SQLUsuariosUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLUsuariosUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLUsuariosUSUAA5SENHA: TStringField
      FieldName = 'USUAA5SENHA'
      Origin = 'DB.USUARIO.USUAA5SENHA'
      FixedChar = True
      Size = 60
    end
    object SQLUsuariosUSUACUSERMASTER: TStringField
      FieldName = 'USUACUSERMASTER'
      Origin = 'DB.USUARIO.USUACUSERMASTER'
      FixedChar = True
      Size = 1
    end
  end
  object SQLConfigCrediario: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGCREDIARIO ')
    Left = 259
    Top = 120
    object SQLConfigCrediarioCFCRN2PERCJURATRAS: TBCDField
      FieldName = 'CFCRN2PERCJURATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCJURATRAS'
      Precision = 15
      Size = 3
    end
    object SQLConfigCrediarioCFCRN2PERCMULATRAS: TBCDField
      FieldName = 'CFCRN2PERCMULATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCMULATRAS'
      Precision = 15
      Size = 3
    end
    object SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField
      FieldName = 'CFCRINRODIASTOLJUR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASTOLJUR'
    end
    object SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField
      FieldName = 'CFCRINRODIASTOLMUL'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASTOLMUL'
    end
    object SQLConfigCrediarioCFCRN2PERCADIANT: TBCDField
      FieldName = 'CFCRN2PERCADIANT'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCADIANT'
      Precision = 15
      Size = 3
    end
    object SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField
      FieldName = 'CFCRINRODIASADIANT'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASADIANT'
    end
    object SQLConfigCrediarioCFCRINRODIACARTA1A: TIntegerField
      FieldName = 'CFCRINRODIACARTA1A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA1A'
    end
    object SQLConfigCrediarioCFCRINRODIACARTA2A: TIntegerField
      FieldName = 'CFCRINRODIACARTA2A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA2A'
    end
    object SQLConfigCrediarioCFCRINRODIACARTA3A: TIntegerField
      FieldName = 'CFCRINRODIACARTA3A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA3A'
    end
    object SQLConfigCrediarioCFCRA255PATHCART1A: TStringField
      FieldName = 'CFCRA255PATHCART1A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCART1A'
      Size = 255
    end
    object SQLConfigCrediarioCFCRA255PATHCART2A: TStringField
      FieldName = 'CFCRA255PATHCART2A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCART2A'
      Size = 255
    end
    object SQLConfigCrediarioCFCRA255PATHCART3A: TStringField
      FieldName = 'CFCRA255PATHCART3A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCART3A'
      Size = 255
    end
    object SQLConfigCrediarioCFCRCCONSMOTBLOQ: TStringField
      FieldName = 'CFCRCCONSMOTBLOQ'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCCONSMOTBLOQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRCCONSCARTAVISO: TStringField
      FieldName = 'CFCRCCONSCARTAVISO'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCCONSCARTAVISO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRA255PATHRELSPC: TStringField
      FieldName = 'CFCRA255PATHRELSPC'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHRELSPC'
      Size = 255
    end
    object SQLConfigCrediarioCFCRA255PATHAUTDEP: TStringField
      FieldName = 'CFCRA255PATHAUTDEP'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHAUTDEP'
      Size = 255
    end
    object SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField
      FieldName = 'CFCRINRODIACARTA4A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA4A'
    end
    object SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField
      FieldName = 'CFCRN2PERCTAXACOBR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCTAXACOBR'
      Precision = 15
      Size = 3
    end
    object SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField
      FieldName = 'CFCRA254PATHMALADIRETA'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA254PATHMALADIRETA'
      Size = 254
    end
  end
  object SQLConfigGeral: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGGERAL')
    Left = 259
    Top = 8
    object SQLConfigGeralCFGEIEMPPADRAO: TIntegerField
      FieldName = 'CFGEIEMPPADRAO'
      Origin = 'DB.CONFIGGERAL.CFGEIEMPPADRAO'
    end
    object SQLConfigGeralEmpresaPadraoCalcField: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaPadraoCalcField'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'CFGEIEMPPADRAO'
      Size = 60
      Lookup = True
    end
    object SQLConfigGeralCFGEA255PATHREPORT: TStringField
      FieldName = 'CFGEA255PATHREPORT'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHREPORT'
      FixedChar = True
      Size = 255
    end
    object SQLConfigGeralCFGECATUSALDODIA: TStringField
      FieldName = 'CFGECATUSALDODIA'
      Origin = 'DB.CONFIGGERAL.CFGECATUSALDODIA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField
      FieldName = 'CFGEA255EXEDUPLICATA'
      Origin = 'DB.CONFIGGERAL.CFGEA255EXEDUPLICATA'
      FixedChar = True
      Size = 255
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 372
    Top = 8
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
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaEMPRCFISJURID: TStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA11CPF: TStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLEmpresaEMPRA10RG: TStringField
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLEmpresaEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60URL: TStringField
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLEmpresaEMPRA100INFSPC: TStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object SQLEmpresaEMPRA15CODEAN: TStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object SQLEmpresaEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
  end
  object SQLConfigVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGVENDA')
    Macros = <>
    Left = 496
    Top = 8
    object SQLConfigVendaOPESICODCANCTROCA: TIntegerField
      FieldName = 'OPESICODCANCTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCTROCA'
    end
    object SQLConfigVendaOPESICODTROCA: TIntegerField
      FieldName = 'OPESICODTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODTROCA'
    end
    object SQLConfigVendaOPESICODCUPOM: TIntegerField
      FieldName = 'OPESICODCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODCUPOM'
    end
    object SQLConfigVendaOPESICODCANCCUPOM: TIntegerField
      FieldName = 'OPESICODCANCCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCCUPOM'
    end
    object SQLConfigVendaOPESICODNF: TIntegerField
      FieldName = 'OPESICODNF'
      Origin = 'DB.CONFIGVENDA.OPESICODNF'
    end
    object SQLConfigVendaOPESICODCANCNF: TIntegerField
      FieldName = 'OPESICODCANCNF'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCNF'
    end
    object SQLConfigVendaOPESICODRETORNO: TIntegerField
      FieldName = 'OPESICODRETORNO'
      Origin = 'DB.CONFIGVENDA.OPESICODRETORNO'
    end
    object SQLConfigVendaCFVECFAZVENDCONSIG: TStringField
      FieldName = 'CFVECFAZVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.CFVECFAZVENDCONSIG'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECTIPOLIMCRED: TStringField
      FieldName = 'CFVECTIPOLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTIPOLIMCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField
      FieldName = 'CFVEN3MAXLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN3MAXLIMCRED'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField
      FieldName = 'CFVEN2PERCLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCLIMCRED'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField
      FieldName = 'CFVECSUBDEBNOLIMITE'
      Origin = 'DB.CONFIGVENDA.CFVECSUBDEBNOLIMITE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEINROCASASDEC: TIntegerField
      FieldName = 'CFVEINROCASASDEC'
      Origin = 'DB.CONFIGVENDA.CFVEINROCASASDEC'
    end
    object SQLConfigVendaCFVECFARREDVLRVEND: TStringField
      FieldName = 'CFVECFARREDVLRVEND'
      Origin = 'DB.CONFIGVENDA.CFVECFARREDVLRVEND'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECTESTALIMTCRED: TStringField
      FieldName = 'CFVECTESTALIMTCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTESTALIMTCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECRENDCONJNOLIM: TStringField
      FieldName = 'CFVECRENDCONJNOLIM'
      Origin = 'DB.CONFIGVENDA.CFVECRENDCONJNOLIM'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECINFDADOVENDA: TStringField
      FieldName = 'CFVECINFDADOVENDA'
      Origin = 'DB.CONFIGVENDA.CFVECINFDADOVENDA'
      FixedChar = True
      Size = 1
    end
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTOSALDO')
    Macros = <>
    Left = 372
    Top = 237
    object SQLProdutoSaldoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDQTDE'
      Size = 3
    end
  end
  object SQLProdutoFilho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLProduto
    SQL.Strings = (
      'select * from PRODUTO'
      'where PRODICODPAI = :PRODICODPAI')
    Macros = <>
    Left = 259
    Top = 285
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICODPAI'
        ParamType = ptUnknown
      end>
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 116
    Top = 229
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO')
    Macros = <>
    Left = 45
    Top = 245
  end
  object SQLConfigConta: TRxQuery
    BeforeEdit = SQLConfigContaBeforeEdit
    BeforePost = SQLConfigContaBeforePost
    OnNewRecord = SQLConfigContaNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGCONTA')
    UpdateObject = UpdateSQLConfigConta
    Macros = <>
    Left = 259
    Top = 70
    object SQLConfigContaCFGCINIVEL1: TBCDField
      FieldName = 'CFGCINIVEL1'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL1'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCNIVEIS: TIntegerField
      FieldName = 'CFGCNIVEIS'
      Origin = 'DB.CONFIGCONTA.CFGCNIVEIS'
    end
    object SQLConfigContaCFGCINIVEL2: TBCDField
      FieldName = 'CFGCINIVEL2'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL2'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL3: TBCDField
      FieldName = 'CFGCINIVEL3'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL3'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL4: TBCDField
      FieldName = 'CFGCINIVEL4'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL4'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL5: TBCDField
      FieldName = 'CFGCINIVEL5'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL5'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL6: TBCDField
      FieldName = 'CFGCINIVEL6'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL6'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL7: TBCDField
      FieldName = 'CFGCINIVEL7'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL7'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL8: TBCDField
      FieldName = 'CFGCINIVEL8'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL8'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL9: TBCDField
      FieldName = 'CFGCINIVEL9'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL9'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCINIVEL10: TBCDField
      FieldName = 'CFGCINIVEL10'
      Origin = 'DB.CONFIGCONTA.CFGCINIVEL10'
      Precision = 15
      Size = 3
    end
    object SQLConfigContaCFGCA30MASCARA: TStringField
      FieldName = 'CFGCA30MASCARA'
      Origin = 'DB.CONFIGCONTA.CFGCA30MASCARA'
      FixedChar = True
      Size = 30
    end
    object SQLConfigContaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONFIGCONTA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigContaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONFIGCONTA.REGISTRO'
    end
  end
  object DSSQLConfigConta: TDataSource
    DataSet = SQLConfigConta
    Left = 372
    Top = 67
  end
  object UpdateSQLConfigConta: TUpdateSQL
    ModifySQL.Strings = (
      'update CONFIGCONTA'
      'set'
      '  CFGCINIVEL1 = :CFGCINIVEL1,'
      '  CFGCNIVEIS = :CFGCNIVEIS,'
      '  CFGCINIVEL2 = :CFGCINIVEL2,'
      '  CFGCINIVEL3 = :CFGCINIVEL3,'
      '  CFGCINIVEL4 = :CFGCINIVEL4,'
      '  CFGCINIVEL5 = :CFGCINIVEL5,'
      '  CFGCINIVEL6 = :CFGCINIVEL6,'
      '  CFGCINIVEL7 = :CFGCINIVEL7,'
      '  CFGCINIVEL8 = :CFGCINIVEL8,'
      '  CFGCINIVEL9 = :CFGCINIVEL9,'
      '  CFGCINIVEL10 = :CFGCINIVEL10,'
      '  CFGCA30MASCARA = :CFGCA30MASCARA,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  CFGCINIVEL1 = :OLD_CFGCINIVEL1 and'
      '  CFGCNIVEIS = :OLD_CFGCNIVEIS and'
      '  CFGCINIVEL2 = :OLD_CFGCINIVEL2 and'
      '  CFGCINIVEL3 = :OLD_CFGCINIVEL3 and'
      '  CFGCINIVEL4 = :OLD_CFGCINIVEL4 and'
      '  CFGCINIVEL5 = :OLD_CFGCINIVEL5 and'
      '  CFGCINIVEL6 = :OLD_CFGCINIVEL6 and'
      '  CFGCINIVEL7 = :OLD_CFGCINIVEL7 and'
      '  CFGCINIVEL8 = :OLD_CFGCINIVEL8 and'
      '  CFGCINIVEL9 = :OLD_CFGCINIVEL9 and'
      '  CFGCINIVEL10 = :OLD_CFGCINIVEL10 and'
      '  CFGCA30MASCARA = :OLD_CFGCA30MASCARA and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO')
    InsertSQL.Strings = (
      'insert into CONFIGCONTA'
      
        '  (CFGCINIVEL1, CFGCNIVEIS, CFGCINIVEL2, CFGCINIVEL3, CFGCINIVEL' +
        '4, CFGCINIVEL5, '
      
        '   CFGCINIVEL6, CFGCINIVEL7, CFGCINIVEL8, CFGCINIVEL9, CFGCINIVE' +
        'L10, CFGCA30MASCARA, '
      '   PENDENTE, REGISTRO)'
      'values'
      
        '  (:CFGCINIVEL1, :CFGCNIVEIS, :CFGCINIVEL2, :CFGCINIVEL3, :CFGCI' +
        'NIVEL4, '
      
        '   :CFGCINIVEL5, :CFGCINIVEL6, :CFGCINIVEL7, :CFGCINIVEL8, :CFGC' +
        'INIVEL9, '
      '   :CFGCINIVEL10, :CFGCA30MASCARA, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from CONFIGCONTA'
      'where'
      '  CFGCINIVEL1 = :OLD_CFGCINIVEL1 and'
      '  CFGCNIVEIS = :OLD_CFGCNIVEIS and'
      '  CFGCINIVEL2 = :OLD_CFGCINIVEL2 and'
      '  CFGCINIVEL3 = :OLD_CFGCINIVEL3 and'
      '  CFGCINIVEL4 = :OLD_CFGCINIVEL4 and'
      '  CFGCINIVEL5 = :OLD_CFGCINIVEL5 and'
      '  CFGCINIVEL6 = :OLD_CFGCINIVEL6 and'
      '  CFGCINIVEL7 = :OLD_CFGCINIVEL7 and'
      '  CFGCINIVEL8 = :OLD_CFGCINIVEL8 and'
      '  CFGCINIVEL9 = :OLD_CFGCINIVEL9 and'
      '  CFGCINIVEL10 = :OLD_CFGCINIVEL10 and'
      '  CFGCA30MASCARA = :OLD_CFGCA30MASCARA and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO')
    Left = 496
    Top = 70
  end
  object SQLPlanodeContas: TRxQuery
    BeforeInsert = SQLPlanodeContasBeforeInsert
    BeforePost = SQLPlanodeContasBeforePost
    OnNewRecord = SQLPlanodeContasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PLANODECONTAS'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 372
    Top = 120
    object SQLPlanodeContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanodeContasPLCTICODREDUZ: TIntegerField
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object SQLPlanodeContasPLCTINIVEL: TIntegerField
      FieldName = 'PLCTINIVEL'
      Origin = 'DB.PLANODECONTAS.PLCTINIVEL'
    end
    object SQLPlanodeContasPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLPlanodeContasPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLPlanodeContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanodeContasPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLPlanodeContasPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanodeContasPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANODECONTAS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanodeContasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANODECONTAS.REGISTRO'
    end
  end
  object DSSQLPlanodeContas: TDataSource
    DataSet = SQLPlanodeContas
    Left = 372
    Top = 181
  end
  object UpDateSQLPlanodeContas: TUpdateSQL
    ModifySQL.Strings = (
      'update PLANODECONTAS'
      'set'
      '  PLCTA15COD = :PLCTA15COD,'
      '  PLCTICODREDUZ = :PLCTICODREDUZ,'
      '  PLCTINIVEL = :PLCTINIVEL,'
      '  PLCTA15CODPAI = :PLCTA15CODPAI,'
      '  PLCTA30CODEDIT = :PLCTA30CODEDIT,'
      '  PLCTA60DESCR = :PLCTA60DESCR,'
      '  PLCTCANALSINT = :PLCTCANALSINT,'
      '  PLCTCTIPOSALDO = :PLCTCTIPOSALDO,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  PLCTA15COD = :OLD_PLCTA15COD')
    InsertSQL.Strings = (
      'insert into PLANODECONTAS'
      
        '  (PLCTA15COD, PLCTICODREDUZ, PLCTINIVEL, PLCTA15CODPAI, PLCTA30' +
        'CODEDIT, '
      
        '   PLCTA60DESCR, PLCTCANALSINT, PLCTCTIPOSALDO, PENDENTE, REGIST' +
        'RO)'
      'values'
      
        '  (:PLCTA15COD, :PLCTICODREDUZ, :PLCTINIVEL, :PLCTA15CODPAI, :PL' +
        'CTA30CODEDIT, '
      
        '   :PLCTA60DESCR, :PLCTCANALSINT, :PLCTCTIPOSALDO, :PENDENTE, :R' +
        'EGISTRO)')
    DeleteSQL.Strings = (
      'delete from PLANODECONTAS'
      'where'
      '  PLCTA15COD = :OLD_PLCTA15COD')
    Left = 496
    Top = 184
  end
  object SQLConta: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PLANODECONTAS')
    UpdateObject = UpDateSQLPlanodeContas
    Macros = <>
    Left = 116
    Top = 54
    object SQLContaPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContaPLCTICODREDUZ: TIntegerField
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object SQLContaPLCTINIVEL: TIntegerField
      FieldName = 'PLCTINIVEL'
      Origin = 'DB.PLANODECONTAS.PLCTINIVEL'
    end
    object SQLContaPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLContaPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLContaPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContaPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLContaPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLContaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANODECONTAS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANODECONTAS.REGISTRO'
    end
  end
  object SQLPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TABELAPRECOPRODUTO'
      'Where PRODICOD=:PRODICOD AND TPRCICOD=:TPRCICOD')
    Macros = <>
    Left = 116
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'TPRCICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLProdutoOrdemPesquisa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ProdutoOrdemPesquisa'
      'order by PDOPIORDEM')
    Macros = <>
    Left = 259
    Top = 229
    object SQLProdutoOrdemPesquisaPDOPIORDEM: TIntegerField
      FieldName = 'PDOPIORDEM'
      Origin = 'DB.PRODUTOORDEMPESQUISA.PDOPIORDEM'
    end
    object SQLProdutoOrdemPesquisaPDOPA30CAMPO: TStringField
      FieldName = 'PDOPA30CAMPO'
      Origin = 'DB.PRODUTOORDEMPESQUISA.PDOPA30CAMPO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLTerminalAtivo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 496
    Top = 131
    object SQLTerminalAtivoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalAtivoTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField
      FieldName = 'TERMCINFDADOSCLICP'
      Origin = 'DB.TERMINAL.TERMCINFDADOSCLICP'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField
      FieldName = 'TERMA60IMPAUTORIZCOM'
      Origin = 'DB.TERMINAL.TERMA60IMPAUTORIZCOM'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField
      FieldName = 'TERMA60IMPFICHACLI'
      Origin = 'DB.TERMINAL.TERMA60IMPFICHACLI'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField
      FieldName = 'TERMA60IMPPEDIDO'
      Origin = 'DB.TERMINAL.TERMA60IMPPEDIDO'
      FixedChar = True
      Size = 60
    end
  end
  object SQLParcelas: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 496
    Top = 238
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 496
    Top = 294
  end
  object SQLConfigFinanceiro: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CONFIGFINANCEIRO')
    Macros = <>
    Left = 259
    Top = 344
    object SQLConfigFinanceiroOPTEICODPAGAR: TIntegerField
      FieldName = 'OPTEICODPAGAR'
      Origin = 'DB.CONFIGFINANCEIRO.OPTEICODPAGAR'
    end
    object SQLConfigFinanceiroOPBCICODPAGAR: TIntegerField
      FieldName = 'OPBCICODPAGAR'
      Origin = 'DB.CONFIGFINANCEIRO.OPBCICODPAGAR'
    end
    object SQLConfigFinanceiroNUMEICODPAGAR: TIntegerField
      FieldName = 'NUMEICODPAGAR'
      Origin = 'DB.CONFIGFINANCEIRO.NUMEICODPAGAR'
    end
    object SQLConfigFinanceiroCTCRICODPAGAR: TIntegerField
      FieldName = 'CTCRICODPAGAR'
      Origin = 'DB.CONFIGFINANCEIRO.CTCRICODPAGAR'
    end
    object SQLConfigFinanceiroALINICODPAGAR: TIntegerField
      FieldName = 'ALINICODPAGAR'
      Origin = 'DB.CONFIGFINANCEIRO.ALINICODPAGAR'
    end
    object SQLConfigFinanceiroCGFIA254HISTPAGAR: TStringField
      FieldName = 'CGFIA254HISTPAGAR'
      Origin = 'DB.CONFIGFINANCEIRO.CGFIA254HISTPAGAR'
      Size = 255
    end
    object SQLConfigFinanceiroOPTEICODRECEBER: TIntegerField
      FieldName = 'OPTEICODRECEBER'
      Origin = 'DB.CONFIGFINANCEIRO.OPTEICODRECEBER'
    end
    object SQLConfigFinanceiroOPBCICODRECEBER: TIntegerField
      FieldName = 'OPBCICODRECEBER'
      Origin = 'DB.CONFIGFINANCEIRO.OPBCICODRECEBER'
    end
    object SQLConfigFinanceiroNUMEICODRECEBER: TIntegerField
      FieldName = 'NUMEICODRECEBER'
      Origin = 'DB.CONFIGFINANCEIRO.NUMEICODRECEBER'
    end
    object SQLConfigFinanceiroCGFIA254HISTRECEBE: TStringField
      FieldName = 'CGFIA254HISTRECEBE'
      Origin = 'DB.CONFIGFINANCEIRO.CGFIA254HISTRECEBE'
      Size = 255
    end
    object SQLConfigFinanceiroALINICODRECEBER: TIntegerField
      FieldName = 'ALINICODRECEBER'
      Origin = 'DB.CONFIGFINANCEIRO.ALINICODRECEBER'
    end
    object SQLConfigFinanceiroPORTICODRECEBER: TIntegerField
      FieldName = 'PORTICODRECEBER'
      Origin = 'DB.CONFIGFINANCEIRO.PORTICODRECEBER'
    end
    object SQLConfigFinanceiroCGFIUSATESOURARIA: TStringField
      FieldName = 'CGFIUSATESOURARIA'
      Origin = 'DB.CONFIGFINANCEIRO.CGFIUSATESOURARIA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigFinanceiroCGFICINFPLCTBXSIMP: TStringField
      FieldName = 'CGFICINFPLCTBXSIMP'
      Origin = 'DB.CONFIGFINANCEIRO.CGFICINFPLCTBXSIMP'
      FixedChar = True
      Size = 1
    end
    object SQLConfigFinanceiroOPBCICODESTORNOCRD: TIntegerField
      FieldName = 'OPBCICODESTORNOCRD'
      Origin = 'DB.CONFIGFINANCEIRO.OPBCICODESTORNOCRD'
    end
    object SQLConfigFinanceiroOPTEICODESTORNOCRD: TIntegerField
      FieldName = 'OPTEICODESTORNOCRD'
      Origin = 'DB.CONFIGFINANCEIRO.OPTEICODESTORNOCRD'
    end
    object SQLConfigFinanceiroOPBCICODESTORNODEB: TIntegerField
      FieldName = 'OPBCICODESTORNODEB'
      Origin = 'DB.CONFIGFINANCEIRO.OPBCICODESTORNODEB'
    end
    object SQLConfigFinanceiroOPTEICODESTORNODEB: TIntegerField
      FieldName = 'OPTEICODESTORNODEB'
      Origin = 'DB.CONFIGFINANCEIRO.OPTEICODESTORNODEB'
    end
  end
  object SQLTeleEntrega: TRxQuery
    Tag = 3
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM TELEENTREGA WHERE (%MFiltro)')
    UpdateObject = UpdateSQLTeleEntrega
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 392
    Top = 264
    object SQLTeleEntregaTELEA13ID: TStringField
      Tag = 2
      FieldName = 'TELEA13ID'
      Origin = 'DB.TELEENTREGA.TELEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTeleEntregaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TELEENTREGA.EMPRICOD'
    end
    object SQLTeleEntregaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TELEENTREGA.TERMICOD'
    end
    object SQLTeleEntregaTELEICOD: TIntegerField
      Tag = 1
      FieldName = 'TELEICOD'
      Origin = 'DB.TELEENTREGA.TELEICOD'
    end
    object SQLTeleEntregaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.TELEENTREGA.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTeleEntregaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.TELEENTREGA.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTeleEntregaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.TELEENTREGA.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTeleEntregaTELEDENTRPREV: TDateTimeField
      FieldName = 'TELEDENTRPREV'
      Origin = 'DB.TELEENTREGA.TELEDENTRPREV'
    end
    object SQLTeleEntregaTELEDENTRPREV1: TDateTimeField
      FieldName = 'TELEDENTRPREV1'
      Origin = 'DB.TELEENTREGA.TELEDENTRPREV1'
    end
    object SQLTeleEntregaTELEDENTRPREV2: TDateTimeField
      FieldName = 'TELEDENTRPREV2'
      Origin = 'DB.TELEENTREGA.TELEDENTRPREV2'
    end
    object SQLTeleEntregaTELEDENTRREAL: TDateTimeField
      FieldName = 'TELEDENTRREAL'
      Origin = 'DB.TELEENTREGA.TELEDENTRREAL'
    end
    object SQLTeleEntregaTELEA60SOLICITANTE: TStringField
      FieldName = 'TELEA60SOLICITANTE'
      Origin = 'DB.TELEENTREGA.TELEA60SOLICITANTE'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARANOME: TStringField
      FieldName = 'TELEA60ENTRPARANOME'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARANOME'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARAEND: TStringField
      FieldName = 'TELEA60ENTRPARAEND'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARAEND'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARABAI: TStringField
      FieldName = 'TELEA60ENTRPARABAI'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARABAI'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA60ENTRPARACID: TStringField
      FieldName = 'TELEA60ENTRPARACID'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARACID'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEA2ENTRPARAUF: TStringField
      FieldName = 'TELEA2ENTRPARAUF'
      Origin = 'DB.TELEENTREGA.TELEA2ENTRPARAUF'
      FixedChar = True
      Size = 2
    end
    object SQLTeleEntregaTELEA15ENTRPARAFONE: TStringField
      FieldName = 'TELEA15ENTRPARAFONE'
      Origin = 'DB.TELEENTREGA.TELEA15ENTRPARAFONE'
      FixedChar = True
      Size = 15
    end
    object SQLTeleEntregaTELEA60RECPORNOME: TStringField
      FieldName = 'TELEA60RECPORNOME'
      Origin = 'DB.TELEENTREGA.TELEA60RECPORNOME'
      FixedChar = True
      Size = 60
    end
    object SQLTeleEntregaTELEADREC: TDateTimeField
      FieldName = 'TELEADREC'
      Origin = 'DB.TELEENTREGA.TELEADREC'
    end
    object SQLTeleEntregaTELEA1016MENSG: TMemoField
      FieldName = 'TELEA1016MENSG'
      Origin = 'DB.TELEENTREGA.TELEA1016MENSG'
      BlobType = ftMemo
      Size = 1016
    end
    object SQLTeleEntregaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TELEENTREGA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTeleEntregaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TELEENTREGA.REGISTRO'
    end
    object SQLTeleEntregaTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
      Origin = 'DB.TELEENTREGA.TPVDICOD'
    end
    object SQLTeleEntregaFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.TELEENTREGA.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTeleEntregaTELEA30OCASIAO: TStringField
      FieldName = 'TELEA30OCASIAO'
      Origin = 'DB.TELEENTREGA.TELEA30OCASIAO'
      FixedChar = True
      Size = 30
    end
  end
  object UpdateSQLTeleEntrega: TUpdateSQL
    ModifySQL.Strings = (
      'update TELEENTREGA'
      'set'
      '  TELEA13ID = :TELEA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  TERMICOD = :TERMICOD,'
      '  TELEICOD = :TELEICOD,'
      '  CUPOA13ID = :CUPOA13ID,'
      '  NOFIA13ID = :NOFIA13ID,'
      '  PDVDA13ID = :PDVDA13ID,'
      '  TELEDENTRPREV = :TELEDENTRPREV,'
      '  TELEDENTRPREV1 = :TELEDENTRPREV1,'
      '  TELEDENTRPREV2 = :TELEDENTRPREV2,'
      '  TELEDENTRREAL = :TELEDENTRREAL,'
      '  TELEA60SOLICITANTE = :TELEA60SOLICITANTE,'
      '  TELEA60ENTRPARANOME = :TELEA60ENTRPARANOME,'
      '  TELEA60ENTRPARAEND = :TELEA60ENTRPARAEND,'
      '  TELEA60ENTRPARABAI = :TELEA60ENTRPARABAI,'
      '  TELEA60ENTRPARACID = :TELEA60ENTRPARACID,'
      '  TELEA2ENTRPARAUF = :TELEA2ENTRPARAUF,'
      '  TELEA15ENTRPARAFONE = :TELEA15ENTRPARAFONE,'
      '  TELEA60RECPORNOME = :TELEA60RECPORNOME,'
      '  TELEADREC = :TELEADREC,'
      '  TELEA1016MENSG = :TELEA1016MENSG,'
      '  TPVDICOD = :TPVDICOD,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  FUNCA13ID = :FUNCA13ID,'
      '  TELEA30OCASIAO = :TELEA30OCASIAO'
      'where'
      '  TELEA13ID = :OLD_TELEA13ID')
    InsertSQL.Strings = (
      'insert into TELEENTREGA'
      
        '  (TELEA13ID, EMPRICOD, TERMICOD, TELEICOD, CUPOA13ID, NOFIA13ID' +
        ', PDVDA13ID, '
      
        '   TELEDENTRPREV, TELEDENTRPREV1, TELEDENTRPREV2, TELEDENTRREAL,' +
        ' TELEA60SOLICITANTE, '
      
        '   TELEA60ENTRPARANOME, TELEA60ENTRPARAEND, TELEA60ENTRPARABAI, ' +
        'TELEA60ENTRPARACID, '
      
        '   TELEA2ENTRPARAUF, TELEA15ENTRPARAFONE, TELEA60RECPORNOME, TEL' +
        'EADREC, '
      
        '   TELEA1016MENSG, TPVDICOD, PENDENTE, REGISTRO, FUNCA13ID, TELE' +
        'A30OCASIAO)'
      'values'
      
        '  (:TELEA13ID, :EMPRICOD, :TERMICOD, :TELEICOD, :CUPOA13ID, :NOF' +
        'IA13ID, '
      
        '   :PDVDA13ID, :TELEDENTRPREV, :TELEDENTRPREV1, :TELEDENTRPREV2,' +
        ' :TELEDENTRREAL, '
      
        '   :TELEA60SOLICITANTE, :TELEA60ENTRPARANOME, :TELEA60ENTRPARAEN' +
        'D, :TELEA60ENTRPARABAI, '
      
        '   :TELEA60ENTRPARACID, :TELEA2ENTRPARAUF, :TELEA15ENTRPARAFONE,' +
        ' :TELEA60RECPORNOME, '
      
        '   :TELEADREC, :TELEA1016MENSG, :TPVDICOD, :PENDENTE, :REGISTRO,' +
        ' :FUNCA13ID, '
      '   :TELEA30OCASIAO)')
    DeleteSQL.Strings = (
      'delete from TELEENTREGA'
      'where'
      '  TELEA13ID = :OLD_TELEA13ID')
    Left = 493
    Top = 264
  end
  object TblTicketPreVendaCab: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaCab.DB'
    Left = 384
    Top = 333
    object TblTicketPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TblTicketPreVendaCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblTicketPreVendaCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblTicketPreVendaCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblTicketPreVendaCabFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TblTicketPreVendaCabTotalNominal: TFloatField
      FieldName = 'TotalNominal'
    end
    object TblTicketPreVendaCabTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblTicketPreVendaCabAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblTicketPreVendaCabDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblTicketPreVendaCabTotalGeral: TFloatField
      FieldName = 'TotalGeral'
    end
    object TblTicketPreVendaCabNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TblTicketPreVendaCabFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TblTicketPreVendaCabNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TblTicketPreVendaCabNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TblTicketPreVendaCabMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 254
    end
    object TblTicketPreVendaCabDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TblTicketPreVendaCabTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeNome: TStringField
      FieldName = 'PessoaRecebeNome'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeEnder: TStringField
      FieldName = 'PessoaRecebeEnder'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeBai: TStringField
      FieldName = 'PessoaRecebeBai'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeCid: TStringField
      FieldName = 'PessoaRecebeCid'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeUF: TStringField
      FieldName = 'PessoaRecebeUF'
      Size = 2
    end
    object TblTicketPreVendaCabPessoaRecebeFone: TStringField
      FieldName = 'PessoaRecebeFone'
      Size = 15
    end
    object TblTicketPreVendaCabMensagem2: TMemoField
      FieldName = 'Mensagem2'
      BlobType = ftMemo
      Size = 500
    end
    object TblTicketPreVendaCabDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
  end
  object TblTicketPreVendaItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaItem.DB'
    Left = 412
    Top = 333
    object TblTicketPreVendaItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblTicketPreVendaItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TblTicketPreVendaItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TblTicketPreVendaItemValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TblTicketPreVendaItemValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
    object TblTicketPreVendaItemDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblTicketPreVendaItemMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
    object TblTicketPreVendaItemReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
  end
  object SQLConfigTransportadora: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONFIGTRANSPORTADORA')
    Macros = <>
    Left = 421
    Top = 59
    object SQLConfigTransportadoraCFTROPFUICODCREDITO: TIntegerField
      FieldName = 'CFTROPFUICODCREDITO'
      Origin = 'DB.CONFIGTRANSPORTADORA.CFTROPFUICODCREDITO'
    end
    object SQLConfigTransportadoraOPFUA60DESCRCREDITO: TStringField
      FieldKind = fkLookup
      FieldName = 'OPFUA60DESCRCREDITO'
      LookupKeyFields = 'OPFUICOD'
      LookupResultField = 'OPFUA60DESCR'
      KeyFields = 'CFTROPFUICODCREDITO'
      Size = 60
      Lookup = True
    end
    object SQLConfigTransportadoraCFTROPFUICODDEBITO: TIntegerField
      FieldName = 'CFTROPFUICODDEBITO'
      Origin = 'DB.CONFIGTRANSPORTADORA.CFTROPFUICODDEBITO'
    end
    object SQLConfigTransportadoraOPFUA60DESCRDEBITO: TStringField
      FieldKind = fkLookup
      FieldName = 'OPFUA60DESCRDEBITO'
      LookupKeyFields = 'OPFUICOD'
      LookupResultField = 'OPFUA60DESCR'
      KeyFields = 'CFTROPFUICODDEBITO'
      Size = 60
      Lookup = True
    end
  end
end
