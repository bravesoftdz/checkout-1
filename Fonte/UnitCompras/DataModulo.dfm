inherited DM: TDM
  OldCreateOrder = True
  Left = 331
  Top = 120
  Height = 490
  Width = 505
  inherited DB: TDatabase
    AliasName = 'UnitGestao'
    Left = 50
    Top = 7
  end
  inherited UpdateSQLExclusao: TUpdateSQL
    Left = 171
    Top = 160
  end
  inherited SQLExclusao: TRxQuery
    Top = 162
  end
  inherited DSListagem: TDataSource
    Left = 96
    Top = 7
  end
  inherited DSEmail: TDataSource
    Left = 152
    Top = 7
  end
  inherited SQLProdutoSaldoAux: TRxQuery
    Left = 168
    Top = 272
  end
  inherited UpdateSQLProdutoSaldo: TUpdateSQL
    Left = 286
    Top = 272
  end
  object SQLUsuarios: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO')
    Macros = <>
    Left = 284
    Top = 7
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
    object SQLUsuariosUSUACVERDADCOMPRCLI: TStringField
      FieldName = 'USUACVERDADCOMPRCLI'
      Origin = 'DB.USUARIO.USUACVERDADCOMPRCLI'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACDESBLOQCLI: TStringField
      FieldName = 'USUACDESBLOQCLI'
      Origin = 'DB.USUARIO.USUACDESBLOQCLI'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUAN2PERCDESC: TBCDField
      FieldName = 'USUAN2PERCDESC'
      Origin = 'DB.USUARIO.USUAN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLUsuariosUSUACVENDCLIBLOQ: TStringField
      FieldName = 'USUACVENDCLIBLOQ'
      Origin = 'DB.USUARIO.USUACVENDCLIBLOQ'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACCANCVENDA: TStringField
      FieldName = 'USUACCANCVENDA'
      Origin = 'DB.USUARIO.USUACCANCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.USUARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.USUARIO.REGISTRO'
    end
    object SQLUsuariosUSUACEXCLCLI: TStringField
      FieldName = 'USUACEXCLCLI'
      Origin = 'DB.USUARIO.USUACEXCLCLI'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACCANCPREVENDA: TStringField
      FieldName = 'USUACCANCPREVENDA'
      Origin = 'DB.USUARIO.USUACCANCPREVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUCALTERASLDINVENTARIO: TStringField
      FieldName = 'USUCALTERASLDINVENTARIO'
      Origin = 'DB.USUARIO.USUCALTERASLDINVENTARIO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACLIBERACREDITO: TStringField
      FieldName = 'USUACLIBERACREDITO'
      Origin = 'DB.USUARIO.USUACLIBERACREDITO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACUSERMASTER: TStringField
      FieldName = 'USUACUSERMASTER'
      Origin = 'DB.USUARIO.USUACUSERMASTER'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACEXCLDADOSTESO: TStringField
      FieldName = 'USUACEXCLDADOSTESO'
      Origin = 'DB.USUARIO.USUACEXCLDADOSTESO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACALTCAIXATES: TStringField
      FieldName = 'USUACALTCAIXATES'
      Origin = 'DB.USUARIO.USUACALTCAIXATES'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACEXCMOVBCO: TStringField
      FieldName = 'USUACEXCMOVBCO'
      Origin = 'DB.USUARIO.USUACEXCMOVBCO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUAA60EMAIL: TStringField
      FieldName = 'USUAA60EMAIL'
      Origin = 'DB.USUARIO.USUAA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLUsuariosUSUACALTVLRVENDA: TStringField
      FieldName = 'USUACALTVLRVENDA'
      Origin = 'DB.USUARIO.USUACALTVLRVENDA'
      FixedChar = True
      Size = 1
    end
  end
  object SQLConfigGeral: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGGERAL')
    Macros = <>
    Left = 360
    Top = 7
    object SQLConfigGeralCFGECATIVAEXPORT: TStringField
      FieldName = 'CFGECATIVAEXPORT'
      Origin = 'DB.CONFIGGERAL.CFGECATIVAEXPORT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECATUSALDODIA: TStringField
      FieldName = 'CFGECATUSALDODIA'
      Origin = 'DB.CONFIGGERAL.CFGECATUSALDODIA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField
      FieldName = 'CFGEITIPMOVCONTENT'
      Origin = 'DB.CONFIGGERAL.CFGEITIPMOVCONTENT'
    end
    object SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField
      FieldName = 'CFGEITIPMOVCONTSAI'
      Origin = 'DB.CONFIGGERAL.CFGEITIPMOVCONTSAI'
    end
    object SQLConfigGeralCFGEA255PATHBLOQ: TStringField
      FieldName = 'CFGEA255PATHBLOQ'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHBLOQ'
      Size = 255
    end
    object SQLConfigGeralCFGECSETAREMPADREL: TStringField
      FieldName = 'CFGECSETAREMPADREL'
      Origin = 'DB.CONFIGGERAL.CFGECSETAREMPADREL'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECTROCAEMPLOGON: TStringField
      FieldName = 'CFGECTROCAEMPLOGON'
      Origin = 'DB.CONFIGGERAL.CFGECTROCAEMPLOGON'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField
      FieldName = 'CFGEA255PATHFOTOCLI'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHFOTOCLI'
      Size = 255
    end
    object SQLConfigGeralCFGE1255PATHMALDIR: TStringField
      FieldName = 'CFGE1255PATHMALDIR'
      Origin = 'DB.CONFIGGERAL.CFGE1255PATHMALDIR'
      Size = 255
    end
    object SQLConfigGeralCFGECDELARQTEMPREL: TStringField
      FieldName = 'CFGECDELARQTEMPREL'
      Origin = 'DB.CONFIGGERAL.CFGECDELARQTEMPREL'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField
      FieldName = 'CFGEA255PATHLOGOEMP'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHLOGOEMP'
      Size = 255
    end
    object SQLConfigGeralCFGECATUALSALDOMES: TStringField
      FieldName = 'CFGECATUALSALDOMES'
      Origin = 'DB.CONFIGGERAL.CFGECATUALSALDOMES'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECVALCODBARPROD: TStringField
      FieldName = 'CFGECVALCODBARPROD'
      Origin = 'DB.CONFIGGERAL.CFGECVALCODBARPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECVALCODANTPRO: TStringField
      FieldName = 'CFGECVALCODANTPRO'
      Origin = 'DB.CONFIGGERAL.CFGECVALCODANTPRO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECVALREFPROD: TStringField
      FieldName = 'CFGECVALREFPROD'
      Origin = 'DB.CONFIGGERAL.CFGECVALREFPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECBASEPRCVENDA: TStringField
      FieldName = 'CFGECBASEPRCVENDA'
      Origin = 'DB.CONFIGGERAL.CFGECBASEPRCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEIEMPPADRAO: TIntegerField
      FieldName = 'CFGEIEMPPADRAO'
      Origin = 'DB.CONFIGGERAL.CFGEIEMPPADRAO'
    end
    object SQLConfigGeralEmpresaPadraoCalcField: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaPadraoCalcField'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60NOMEFANT'
      KeyFields = 'CFGEIEMPPADRAO'
      Size = 60
      Lookup = True
    end
    object SQLConfigGeralCFGEA60HOSTSMTP: TStringField
      FieldName = 'CFGEA60HOSTSMTP'
      Origin = 'DB.CONFIGGERAL.CFGEA60HOSTSMTP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60ENDRETSMTP: TStringField
      FieldName = 'CFGEA60ENDRETSMTP'
      Origin = 'DB.CONFIGGERAL.CFGEA60ENDRETSMTP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField
      FieldName = 'CFGEA60ENDHOSTPOP'
      Origin = 'DB.CONFIGGERAL.CFGEA60ENDHOSTPOP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField
      FieldName = 'CFGEA60NOMEUSERPOP'
      Origin = 'DB.CONFIGGERAL.CFGEA60NOMEUSERPOP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCFGEA60SENHAPOP: TStringField
      FieldName = 'CFGEA60SENHAPOP'
      Origin = 'DB.CONFIGGERAL.CFGEA60SENHAPOP'
      FixedChar = True
      Size = 60
    end
    object SQLConfigGeralCGGEA30VERSAO: TStringField
      FieldName = 'CGGEA30VERSAO'
      Origin = 'DB.CONFIGGERAL.CGGEA30VERSAO'
      FixedChar = True
      Size = 30
    end
    object SQLConfigGeralCFGEA255PATHVERSAO: TStringField
      FieldName = 'CFGEA255PATHVERSAO'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHVERSAO'
      Size = 255
    end
    object SQLConfigGeralCFGEA255PATHETIBAR: TStringField
      FieldName = 'CFGEA255PATHETIBAR'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHETIBAR'
      Size = 255
    end
    object SQLConfigGeralEmpresaMatrizFilialLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaMatrizFilialLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRCMATRIZFILIAL'
      KeyFields = 'CFGEIEMPPADRAO'
      Size = 1
      Lookup = True
    end
    object SQLConfigGeralCFGEA255PATHREPORT: TStringField
      FieldName = 'CFGEA255PATHREPORT'
      Origin = 'DB.CONFIGGERAL.CFGEA255PATHREPORT'
      FixedChar = True
      Size = 255
    end
    object SQLConfigGeralCFGECTESTEANPROD: TStringField
      FieldName = 'CFGECTESTEANPROD'
      Origin = 'DB.CONFIGGERAL.CFGECTESTEANPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECTESTREFPROD: TStringField
      FieldName = 'CFGECTESTREFPROD'
      Origin = 'DB.CONFIGGERAL.CFGECTESTREFPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField
      FieldName = 'CFGECESTOQUEPORLOTE'
      Origin = 'DB.CONFIGGERAL.CFGECESTOQUEPORLOTE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECALCPRECOAUTOM: TStringField
      FieldName = 'CFGECALCPRECOAUTOM'
      Origin = 'DB.CONFIGGERAL.CFGECALCPRECOAUTOM'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECUSASALDODIARIO: TStringField
      FieldName = 'CFGECUSASALDODIARIO'
      Origin = 'DB.CONFIGGERAL.CFGECUSASALDODIARIO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField
      FieldName = 'CFGECTIPOMARGLUCRO'
      Origin = 'DB.CONFIGGERAL.CFGECTIPOMARGLUCRO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 217
    Top = 7
  end
  object SQLConfigVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGVENDA')
    Macros = <>
    Left = 189
    Top = 59
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
    object SQLConfigVendaCFVECTIPOLIMCRED: TStringField
      FieldName = 'CFVECTIPOLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTIPOLIMCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECARREDPARCELA: TStringField
      FieldName = 'CFVECARREDPARCELA'
      Origin = 'DB.CONFIGVENDA.CFVECARREDPARCELA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECTIPOIMPPED: TStringField
      FieldName = 'CFVECTIPOIMPPED'
      Origin = 'DB.CONFIGVENDA.CFVECTIPOIMPPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECDADOSCHQPDV: TStringField
      FieldName = 'CFVECDADOSCHQPDV'
      Origin = 'DB.CONFIGVENDA.CFVECDADOSCHQPDV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECUSADEBCREDCLI: TStringField
      FieldName = 'CFVECUSADEBCREDCLI'
      Origin = 'DB.CONFIGVENDA.CFVECUSADEBCREDCLI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCGVECTESTAITENSNF: TStringField
      FieldName = 'CGVECTESTAITENSNF'
      Origin = 'DB.CONFIGVENDA.CGVECTESTAITENSNF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3ALIQISSQN: TBCDField
      FieldName = 'CFVEN3ALIQISSQN'
      Origin = 'DB.CONFIGVENDA.CFVEN3ALIQISSQN'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField
      FieldName = 'CFVECIMPLEGPEDVENF'
      Origin = 'DB.CONFIGVENDA.CFVECIMPLEGPEDVENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3PERCICMFRETE: TBCDField
      FieldName = 'CFVEN3PERCICMFRETE'
      Origin = 'DB.CONFIGVENDA.CFVEN3PERCICMFRETE'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVEA255OBSPADNF: TStringField
      FieldName = 'CFVEA255OBSPADNF'
      Origin = 'DB.CONFIGVENDA.CFVEA255OBSPADNF'
      FixedChar = True
      Size = 255
    end
    object SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField
      FieldName = 'CFVEITEMPOCONSPROD'
      Origin = 'DB.CONFIGVENDA.CFVEITEMPOCONSPROD'
    end
    object SQLConfigVendaCFVECQUITARPARCHQ: TStringField
      FieldName = 'CFVECQUITARPARCHQ'
      Origin = 'DB.CONFIGVENDA.CFVECQUITARPARCHQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEA255OBSPADRPED: TStringField
      FieldName = 'CFVEA255OBSPADRPED'
      Origin = 'DB.CONFIGVENDA.CFVEA255OBSPADRPED'
      Size = 255
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
    object SQLConfigVendaCFVECRENDCONJNOLIM: TStringField
      FieldName = 'CFVECRENDCONJNOLIM'
      Origin = 'DB.CONFIGVENDA.CFVECRENDCONJNOLIM'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODRETORNO: TIntegerField
      FieldName = 'OPESICODRETORNO'
      Origin = 'DB.CONFIGVENDA.OPESICODRETORNO'
    end
    object SQLConfigVendaOPESICODCANCTROCA: TIntegerField
      FieldName = 'OPESICODCANCTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCTROCA'
    end
    object SQLConfigVendaOPESICODTROCA: TIntegerField
      FieldName = 'OPESICODTROCA'
      Origin = 'DB.CONFIGVENDA.OPESICODTROCA'
    end
    object SQLConfigVendaTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CONFIGVENDA.TPRCICOD'
    end
    object SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField
      FieldName = 'CFVECSUBDEBNOLIMITE'
      Origin = 'DB.CONFIGVENDA.CFVECSUBDEBNOLIMITE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECTESTALIMTCRED: TStringField
      FieldName = 'CFVECTESTALIMTCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTESTALIMTCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEINROCASASDEC: TIntegerField
      FieldName = 'CFVEINROCASASDEC'
      Origin = 'DB.CONFIGVENDA.CFVEINROCASASDEC'
    end
    object SQLConfigVendaCFVEN2PERCCOFINS: TBCDField
      FieldName = 'CFVEN2PERCCOFINS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCCOFINS'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVEN2PERCENCARG: TBCDField
      FieldName = 'CFVEN2PERCENCARG'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCENCARG'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVEN2PERCPIS: TBCDField
      FieldName = 'CFVEN2PERCPIS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCPIS'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVECFARREDVLRVEND: TStringField
      FieldName = 'CFVECFARREDVLRVEND'
      Origin = 'DB.CONFIGVENDA.CFVECFARREDVLRVEND'
      FixedChar = True
      Size = 1
    end
  end
  object SQLConfigCrediario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGCREDIARIO')
    Macros = <>
    Left = 168
    Top = 110
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO')
    Macros = <>
    Left = 265
    Top = 59
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 261
    Top = 110
  end
  object SQLProdutoFilho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLProduto
    SQL.Strings = (
      'select * from PRODUTOCOMPOSICAO'
      'where PRODICOD = :PRODICOD')
    Macros = <>
    Left = 346
    Top = 59
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTOSALDO'
      'where '
      '  EMPRICOD is null')
    Macros = <>
    Left = 345
    Top = 110
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
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPSLDN3QTDMIN: TBCDField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPSLDN3QTDMAX: TBCDField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
      Precision = 15
      Size = 3
    end
  end
  object SQLConfigCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGCOMPRAS')
    Macros = <>
    Left = 103
    Top = 59
    object SQLConfigCompraCFCOITIPMOVCANCNFE: TIntegerField
      FieldName = 'CFCOITIPMOVCANCNFE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOITIPMOVCANCNFE'
    end
    object SQLConfigCompraCFCOCALTPRCPRODENT: TStringField
      FieldName = 'CFCOCALTPRCPRODENT'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTPRCPRODENT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCTESTAITENSNFE: TStringField
      FieldName = 'CFCOCTESTAITENSNFE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTESTAITENSNFE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField
      FieldName = 'CFCOCTOTPRCVENPROD'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTOTPRCVENPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCNUMSERPRODENT: TStringField
      FieldName = 'CFCOCNUMSERPRODENT'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCNUMSERPRODENT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCIMPLEGORDCOMP: TStringField
      FieldName = 'CFCOCIMPLEGORDCOMP'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCIMPLEGORDCOMP'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOITIPMOVNFE: TIntegerField
      FieldName = 'CFCOITIPMOVNFE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOITIPMOVCANCNFE'
    end
    object SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField
      FieldName = 'CFCOCALTVLRCOMPRA'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTVLRCOMPRA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCALTPERCIPI: TStringField
      FieldName = 'CFCOCALTPERCIPI'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTPERCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCALTVLRCUSTO: TStringField
      FieldName = 'CFCOCALTVLRCUSTO'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTVLRCUSTO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField
      FieldName = 'CFCOCEXCLUIPEDENT'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCEXCLUIPEDENT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCEXCLUIPEDENT'
    end
    object SQLConfigCompraTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCEXCLUIPEDENT'
    end
    object SQLConfigCompraCFCOCTESTPRODFORN: TStringField
      FieldName = 'CFCOCTESTPRODFORN'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTESTPRODFORN'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField
      FieldName = 'CFCOCVERIFICAVLRMENOR'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCVERIFICAVLRMENOR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCINFDADOSFRETE: TStringField
      FieldName = 'CFCOCINFDADOSFRETE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCINFDADOSFRETE'
      FixedChar = True
      Size = 1
    end
  end
  object SQLTerminalAtivo: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from TERMINAL'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 93
    Top = 110
    object SQLTerminalAtivoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalAtivoTERMCTIPO: TStringField
      FieldName = 'TERMCTIPO'
      Origin = 'DB.TERMINAL.TERMCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCSTATUSCAIXA: TStringField
      FieldName = 'TERMCSTATUSCAIXA'
      Origin = 'DB.TERMINAL.TERMCSTATUSCAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMDSTATUSCAIXA: TDateTimeField
      FieldName = 'TERMDSTATUSCAIXA'
      Origin = 'DB.TERMINAL.TERMDSTATUSCAIXA'
    end
    object SQLTerminalAtivoTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TERMINAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTerminalAtivoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.TERMINAL.VENDICOD'
    end
    object SQLTerminalAtivoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.TERMINAL.PLRCICOD'
    end
    object SQLTerminalAtivoECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.TERMINAL.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTerminalAtivoTERMCMOVESTOQUE: TStringField
      FieldName = 'TERMCMOVESTOQUE'
      Origin = 'DB.TERMINAL.TERMCMOVESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCUSAVENDEDOR: TStringField
      FieldName = 'TERMCUSAVENDEDOR'
      Origin = 'DB.TERMINAL.TERMCUSAVENDEDOR'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCUSALIMITECRED: TStringField
      FieldName = 'TERMCUSALIMITECRED'
      Origin = 'DB.TERMINAL.TERMCUSALIMITECRED'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMA255MSGTELA: TStringField
      FieldName = 'TERMA255MSGTELA'
      Origin = 'DB.TERMINAL.TERMA255MSGTELA'
      Size = 255
    end
    object SQLTerminalAtivoTERMA60IMPCARNE: TStringField
      FieldName = 'TERMA60IMPCARNE'
      Origin = 'DB.TERMINAL.TERMA60IMPCARNE'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField
      FieldName = 'TERMA60IMPPEDIDO'
      Origin = 'DB.TERMINAL.TERMA60IMPPEDIDO'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMA60IMPORCAMEN: TStringField
      FieldName = 'TERMA60IMPORCAMEN'
      Origin = 'DB.TERMINAL.TERMA60IMPORCAMEN'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMA60IMPCHEQUE: TStringField
      FieldName = 'TERMA60IMPCHEQUE'
      Origin = 'DB.TERMINAL.TERMA60IMPCHEQUE'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMA60IMPTCKAFCX: TStringField
      FieldName = 'TERMA60IMPTCKAFCX'
      Origin = 'DB.TERMINAL.TERMA60IMPTCKAFCX'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMCUSAMOEDA: TStringField
      FieldName = 'TERMCUSAMOEDA'
      Origin = 'DB.TERMINAL.TERMCUSAMOEDA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCIMPRIMECHEQUE: TStringField
      FieldName = 'TERMCIMPRIMECHEQUE'
      Origin = 'DB.TERMINAL.TERMCIMPRIMECHEQUE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCCONFIMPCARNE: TStringField
      FieldName = 'TERMCCONFIMPCARNE'
      Origin = 'DB.TERMINAL.TERMCCONFIMPCARNE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCIMPCONFDIVIDA: TStringField
      FieldName = 'TERMCIMPCONFDIVIDA'
      Origin = 'DB.TERMINAL.TERMCIMPCONFDIVIDA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCINFDADOSCLICP: TStringField
      FieldName = 'TERMCINFDADOSCLICP'
      Origin = 'DB.TERMINAL.TERMCINFDADOSCLICP'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCIMPIDCUPOM: TStringField
      FieldName = 'TERMCIMPIDCUPOM'
      Origin = 'DB.TERMINAL.TERMCIMPIDCUPOM'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMA255MSGCARNE: TStringField
      FieldName = 'TERMA255MSGCARNE'
      Origin = 'DB.TERMINAL.TERMA255MSGCARNE'
      Size = 255
    end
    object SQLTerminalAtivoTERMCIMPBARRASPED: TStringField
      FieldName = 'TERMCIMPBARRASPED'
      Origin = 'DB.TERMINAL.TERMCIMPBARRASPED'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCINFDADOCLIPAD: TStringField
      FieldName = 'TERMCINFDADOCLIPAD'
      Origin = 'DB.TERMINAL.TERMCINFDADOCLIPAD'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMINRODECQUANT: TIntegerField
      FieldName = 'TERMINRODECQUANT'
      Origin = 'DB.TERMINAL.TERMINRODECQUANT'
    end
    object SQLTerminalAtivoTERMINUMEVISTA: TIntegerField
      FieldName = 'TERMINUMEVISTA'
      Origin = 'DB.TERMINAL.TERMINUMEVISTA'
    end
    object SQLTerminalAtivoTERMINUMEPRAZO: TIntegerField
      FieldName = 'TERMINUMEPRAZO'
      Origin = 'DB.TERMINAL.TERMINUMEPRAZO'
    end
    object SQLTerminalAtivoTERMCATIVO: TStringField
      FieldName = 'TERMCATIVO'
      Origin = 'DB.TERMINAL.TERMCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoUSUAICODATIVO: TIntegerField
      FieldName = 'USUAICODATIVO'
      Origin = 'DB.TERMINAL.TERMCATIVO'
    end
    object SQLTerminalAtivoTERMA5ECFPORTACOM: TStringField
      FieldName = 'TERMA5ECFPORTACOM'
      Origin = 'DB.TERMINAL.TERMA5ECFPORTACOM'
      FixedChar = True
      Size = 5
    end
    object SQLTerminalAtivoTERMCIMPPREVENDA: TStringField
      FieldName = 'TERMCIMPPREVENDA'
      Origin = 'DBTERM.TERMINAL.TERMCIMPPREVENDA'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TABELAPRECOPRODUTO'
      'Where PRODICOD=:PRODICOD AND TPRCICOD=:TPRCICOD')
    Macros = <>
    Left = 93
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
      'select * from PRODUTOORDEMPESQUISA'
      'order by PDOPIORDEM')
    Macros = <>
    Left = 127
    Top = 216
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
  object SQLParcelas: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 240
    Top = 190
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 300
    Top = 190
  end
  object QueryOperacaoDebito: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT OPFUICOD,OPFUA60DESCR FROM OPERACAOFUNCIONARIO'
      'WHERE'
      'OPFUCTIPOOPERACAO = "D"'
      '')
    Left = 197
    Top = 384
  end
  object QueryOperacaoCredito: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT OPFUICOD,OPFUA60DESCR FROM OPERACAOFUNCIONARIO'
      'WHERE'
      'OPFUCTIPOOPERACAO = "C"'
      '')
    Left = 197
    Top = 326
  end
  object SQLConfigTransportadora: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONFIGTRANSPORTADORA')
    Macros = <>
    Left = 61
    Top = 323
    object SQLConfigTransportadoraCFTROPFUICODCREDITO: TIntegerField
      FieldName = 'CFTROPFUICODCREDITO'
      Origin = 'DB.CONFIGTRANSPORTADORA.CFTROPFUICODCREDITO'
    end
    object SQLConfigTransportadoraOPFUA60DESCRCREDITO: TStringField
      FieldKind = fkLookup
      FieldName = 'OPFUA60DESCRCREDITO'
      LookupDataSet = QueryOperacaoCredito
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
      LookupDataSet = QueryOperacaoDebito
      LookupKeyFields = 'OPFUICOD'
      LookupResultField = 'OPFUA60DESCR'
      KeyFields = 'CFTROPFUICODDEBITO'
      Size = 60
      Lookup = True
    end
  end
  object DsSQLConfigTransportadora: TDataSource
    DataSet = SQLConfigTransportadora
    Left = 61
    Top = 376
  end
end
