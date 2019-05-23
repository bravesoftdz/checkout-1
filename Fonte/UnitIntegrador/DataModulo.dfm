inherited DM: TDM
  OldCreateOrder = True
  Left = 732
  Top = 26
  Height = 546
  Width = 591
  inherited DB: TDatabase
    AliasName = 'Easy_Gestao'
    SessionName = ''
    Left = 48
  end
  inherited SQLTemplate: TRxQuery
    Left = 48
    Top = 62
  end
  inherited Campos: TTableItems
    Left = 48
    Top = 116
  end
  inherited UpdateSQLExclusao: TUpdateSQL
    Left = 148
    Top = 169
  end
  inherited SQLExclusao: TRxQuery
    Left = 48
    Top = 169
  end
  inherited DSExclusao: TDataSource
    Left = 48
    Top = 223
  end
  inherited DSListagem: TDataSource
    Left = 148
  end
  inherited DSEmail: TDataSource
    Left = 148
    Top = 223
  end
  inherited SQLProdutoSaldoDia: TRxQuery
    Left = 48
    Top = 277
  end
  inherited SQLProdutoSaldoAux: TRxQuery
    Left = 297
    Top = 384
  end
  inherited UpdateSQLProdutoSaldo: TUpdateSQL
    Left = 48
    Top = 328
  end
  inherited ZConsulta: TZQuery
    Left = 513
    Top = 320
  end
  inherited Zupdate: TZQuery
    Left = 513
    Top = 369
  end
  inherited zdb: TZConnection
    Left = 512
    Top = 272
  end
  inherited SQLConsulta: TRxQuery
    Left = 101
    Top = 442
  end
  inherited SQLUpdate: TRxQuery
    Left = 176
    Top = 442
  end
  object SQLConfigGeral: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGGERAL')
    Left = 377
    Top = 328
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
    object SQLConfigGeralCFGECUSASALDODIARIO: TStringField
      FieldName = 'CFGECUSASALDODIARIO'
      Origin = 'DB.CONFIGGERAL.CFGECUSASALDODIARIO'
      FixedChar = True
      Size = 1
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
    object SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField
      FieldName = 'CFGEA255EXEDUPLICATA'
      Origin = 'DB.CONFIGGERAL.CFGEA255EXEDUPLICATA'
      FixedChar = True
      Size = 255
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
    object SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField
      FieldName = 'CFGECTIPOMARGLUCRO'
      Origin = 'DB.CONFIGGERAL.CFGECTIPOMARGLUCRO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECUSAMARGLIQ: TStringField
      FieldName = 'CFGECUSAMARGLIQ'
      Origin = 'DB.CONFIGGERAL.CFGECUSAMARGLIQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralOPESICODTRANSFENTR: TIntegerField
      FieldName = 'OPESICODTRANSFENTR'
      Origin = 'DB.CONFIGGERAL.OPESICODTRANSFENTR'
    end
    object SQLConfigGeralOPESICODTRANSFSAID: TIntegerField
      FieldName = 'OPESICODTRANSFSAID'
      Origin = 'DB.CONFIGGERAL.OPESICODTRANSFSAID'
    end
    object SQLConfigGeralCFGECBLOQ: TStringField
      FieldName = 'CFGECBLOQ'
      Origin = 'DB.CONFIGGERAL.CFGECBLOQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEDBLOQ: TDateTimeField
      FieldName = 'CFGEDBLOQ'
      Origin = 'DB.CONFIGGERAL.CFGEDBLOQ'
    end
  end
  object SQLUsuarios: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO')
    Left = 377
    Top = 9
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
    object SQLUsuariosUSUACUSERMASTER: TStringField
      FieldName = 'USUACUSERMASTER'
      Origin = 'DB.USUARIO.USUACUSERMASTER'
      FixedChar = True
      Size = 1
    end
    object SQLUsuariosUSUACPERMINTEG: TStringField
      FieldName = 'USUACPERMINTEG'
      Origin = 'DB.USUARIO.USUACPERMINTEG'
      FixedChar = True
      Size = 1
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 257
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
    object SQLEmpresaEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
    object SQLEmpresaEMPRA15CODEAN: TStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
  end
  object SQLConfigVenda: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGVENDA')
    Left = 148
    Top = 276
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
    object SQLConfigVendaCFVEIQTDPADRPDV: TIntegerField
      FieldName = 'CFVEIQTDPADRPDV'
      Origin = 'DB.CONFIGVENDA.CFVEIQTDPADRPDV'
    end
    object SQLConfigVendaCFVEA250MSGBLOQ: TStringField
      FieldName = 'CFVEA250MSGBLOQ'
      Origin = 'DB.CONFIGVENDA.CFVEA250MSGBLOQ'
      FixedChar = True
      Size = 250
    end
    object SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField
      FieldName = 'CFVECPARC0ENTRBAIX'
      Origin = 'DB.CONFIGVENDA.CFVECPARC0ENTRBAIX'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEICMSFRETECOD: TIntegerField
      FieldName = 'CFVEICMSFRETECOD'
      Origin = 'DB.CONFIGVENDA.CFVEICMSFRETECOD'
    end
    object SQLConfigVendaTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CONFIGVENDA.TPRCICOD'
    end
    object SQLConfigVendaCFVECFAZVENDCONSIG: TStringField
      FieldName = 'CFVECFAZVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.CFVECFAZVENDCONSIG'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECMOVESTOQUENF: TStringField
      FieldName = 'CFVECMOVESTOQUENF'
      Origin = 'DB.CONFIGVENDA.CFVECMOVESTOQUENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECMOVESTOQUEPED: TStringField
      FieldName = 'CFVECMOVESTOQUEPED'
      Origin = 'DB.CONFIGVENDA.CFVECMOVESTOQUEPED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODCANCPED: TIntegerField
      FieldName = 'OPESICODCANCPED'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCPED'
    end
    object SQLConfigVendaOPESICODDEVOL: TIntegerField
      FieldName = 'OPESICODDEVOL'
      Origin = 'DB.CONFIGVENDA.OPESICODDEVOL'
    end
    object SQLConfigVendaOPESICODPED: TIntegerField
      FieldName = 'OPESICODPED'
      Origin = 'DB.CONFIGVENDA.OPESICODPED'
    end
    object SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField
      FieldName = 'MTBLICODVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.MTBLICODVENDCONSIG'
    end
    object SQLConfigVendaCFVECFINVENDADPREVD: TStringField
      FieldName = 'CFVECFINVENDADPREVD'
      Origin = 'DB.CONFIGVENDA.CFVECFINVENDADPREVD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECIMPPREVDCOD: TStringField
      FieldName = 'CFVECIMPPREVDCOD'
      Origin = 'DB.CONFIGVENDA.CFVECIMPPREVDCOD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField
      FieldName = 'CFVECFINDPRODPORDESCR'
      Origin = 'DB.CONFIGVENDA.CFVECFINDPRODPORDESCR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONFIGVENDA.PORTICOD'
    end
    object SQLConfigVendaTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONFIGVENDA.TPDCICOD'
    end
    object SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField
      FieldName = 'CFVECEXCLUIPEDFAT'
      Origin = 'DB.CONFIGVENDA.CFVECEXCLUIPEDFAT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEINROITENSNF: TIntegerField
      FieldName = 'CFVEINROITENSNF'
      Origin = 'DB.CONFIGVENDA.CFVEINROITENSNF'
    end
    object SQLConfigVendaCFVECALTPEDIMPORT: TStringField
      FieldName = 'CFVECALTPEDIMPORT'
      Origin = 'DB.CONFIGVENDA.CFVECALTPEDIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField
      FieldName = 'CFVECPEDEVLRPRODUTO'
      Origin = 'DB.CONFIGVENDA.CFVECPEDEVLRPRODUTO'
      FixedChar = True
      Size = 1
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
    object SQLConfigVendaCFVECFARREDVLRVEND: TStringField
      FieldName = 'CFVECFARREDVLRVEND'
      Origin = 'DB.CONFIGVENDA.CFVECFARREDVLRVEND'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODVENDCONSIG: TIntegerField
      FieldName = 'OPESICODVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.OPESICODVENDCONSIG'
    end
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTOSALDO'
      'where '
      '  EMPRICOD is null')
    Macros = <>
    Left = 377
    Top = 115
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
  object SQLProdutoFilho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLProduto
    SQL.Strings = (
      'select * from PRODUTO'
      'where PRODICODPAI = :PRODICODPAI')
    Macros = <>
    Left = 377
    Top = 62
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICODPAI'
        ParamType = ptUnknown
      end>
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 257
    Top = 116
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO')
    Macros = <>
    Left = 257
    Top = 62
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
    Left = 257
    Top = 169
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
    Left = 257
    Top = 223
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
    Left = 377
    Top = 168
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
    Left = 257
    Top = 276
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
    Left = 257
    Top = 330
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
    Left = 377
    Top = 274
  end
  object SQLConta: TRxQuery
    OnNewRecord = SQLPlanodeContasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PLANODECONTAS')
    UpdateObject = UpDateSQLPlanodeContas
    Macros = <>
    Left = 148
    Top = 330
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
    Left = 198
    Top = 62
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
    Left = 148
    Top = 116
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
      'select * from TERMINAL'
      'where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 377
    Top = 221
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
    object SQLTerminalAtivoECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.TERMINAL.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTerminalAtivoTERMCSQLORDENADO: TStringField
      FieldName = 'TERMCSQLORDENADO'
      Origin = 'DB.TERMINAL.TERMCSQLORDENADO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoCFGIICOD: TIntegerField
      FieldName = 'CFGIICOD'
    end
    object SQLTerminalAtivoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLTerminalAtivoTERMCMOVESTOQUE: TStringField
      FieldName = 'TERMCMOVESTOQUE'
      Origin = 'DB.TERMINAL.TERMCMOVESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object QueryConfigIntegracao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CONFIGINTEGRACAO')
    Macros = <>
    Left = 48
    Top = 384
    object QueryConfigIntegracaoCFGIICOD: TIntegerField
      FieldName = 'CFGIICOD'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIICOD'
    end
    object QueryConfigIntegracaoCFGIA60DESCR: TStringField
      FieldName = 'CFGIA60DESCR'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object QueryConfigIntegracaoCFGICTIPOCONEXAO: TStringField
      FieldName = 'CFGICTIPOCONEXAO'
      Origin = 'DB.CONFIGINTEGRACAO.CFGICTIPOCONEXAO'
      FixedChar = True
      Size = 1
    end
    object QueryConfigIntegracaoCFGIA100USUARIO: TStringField
      FieldName = 'CFGIA100USUARIO'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100USUARIO'
      FixedChar = True
      Size = 100
    end
    object QueryConfigIntegracaoCFGIA30SENHA: TStringField
      FieldName = 'CFGIA30SENHA'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA30SENHA'
      FixedChar = True
      Size = 30
    end
    object QueryConfigIntegracaoCFGIA100HOST: TStringField
      FieldName = 'CFGIA100HOST'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100HOST'
      FixedChar = True
      Size = 100
    end
    object QueryConfigIntegracaoCFGIA100POP3: TStringField
      FieldName = 'CFGIA100POP3'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100POP3'
      FixedChar = True
      Size = 100
    end
    object QueryConfigIntegracaoCFGIA100SMTP: TStringField
      FieldName = 'CFGIA100SMTP'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA100SMTP'
      FixedChar = True
      Size = 100
    end
    object QueryConfigIntegracaoCFGIIPORTA: TIntegerField
      FieldName = 'CFGIIPORTA'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIIPORTA'
    end
    object QueryConfigIntegracaoCFGITPATHORIGEM: TMemoField
      FieldName = 'CFGITPATHORIGEM'
      Origin = 'DB.CONFIGINTEGRACAO.CFGITPATHORIGEM'
      BlobType = ftMemo
      Size = 500
    end
    object QueryConfigIntegracaoCFGITPATHDESTINO: TMemoField
      FieldName = 'CFGITPATHDESTINO'
      Origin = 'DB.CONFIGINTEGRACAO.CFGITPATHDESTINO'
      BlobType = ftMemo
      Size = 500
    end
    object QueryConfigIntegracaoCFGA60DIALNAME: TStringField
      FieldName = 'CFGA60DIALNAME'
      Origin = 'DB.CONFIGINTEGRACAO.CFGA60DIALNAME'
      FixedChar = True
      Size = 60
    end
    object QueryConfigIntegracaoCFGIA5PORTAFTP: TStringField
      FieldName = 'CFGIA5PORTAFTP'
      Origin = 'DB.CONFIGINTEGRACAO.CFGIA5PORTAFTP'
      FixedChar = True
      Size = 5
    end
  end
  object SQLConfigCrediario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGCREDIARIO')
    Macros = <>
    Left = 296
    Top = 440
    object SQLConfigCrediarioCFCRN2PERCJURATRAS: TBCDField
      FieldName = 'CFCRN2PERCJURATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCJURATRAS'
      Size = 3
    end
    object SQLConfigCrediarioCFCRN2PERCMULATRAS: TBCDField
      FieldName = 'CFCRN2PERCMULATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCMULATRAS'
      Size = 3
    end
    object SQLConfigCrediarioCFCRN2PERCADIANT: TBCDField
      FieldName = 'CFCRN2PERCADIANT'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCADIANT'
      Size = 3
    end
    object SQLConfigCrediarioCFCRINRODIASADIANT: TIntegerField
      FieldName = 'CFCRINRODIASADIANT'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASADIANT'
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
    object SQLConfigCrediarioCFCRINRODIASTOLJUR: TIntegerField
      FieldName = 'CFCRINRODIASTOLJUR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASTOLJUR'
    end
    object SQLConfigCrediarioCFCRINRODIASTOLMUL: TIntegerField
      FieldName = 'CFCRINRODIASTOLMUL'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIASTOLMUL'
    end
    object SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField
      FieldName = 'CFCRN2PERCTAXACOBR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCTAXACOBR'
      Precision = 15
      Size = 3
    end
    object SQLConfigCrediarioCFCRCBLOQVENDCLI1AV: TStringField
      FieldName = 'CFCRCBLOQVENDCLI1AV'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCBLOQVENDCLI1AV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRCBLOQVENDCLI2AV: TStringField
      FieldName = 'CFCRCBLOQVENDCLI2AV'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCBLOQVENDCLI2AV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRCBLOQVENDCLI3AV: TStringField
      FieldName = 'CFCRCBLOQVENDCLI3AV'
      Origin = 'DB.CONFIGCREDIARIO.CFCRCBLOQVENDCLI3AV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRA254PATHMALADIRETA: TStringField
      FieldName = 'CFCRA254PATHMALADIRETA'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA254PATHMALADIRETA'
      Size = 254
    end
    object SQLConfigCrediarioCFCRIPRZMINCARTAO: TStringField
      FieldName = 'CFCRIPRZMINCARTAO'
      Origin = 'DB.CONFIGCREDIARIO.CFCRIPRZMINCARTAO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField
      FieldName = 'CFCRA255PATHCARTPE'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCARTPE'
      Size = 254
    end
  end
  object FTPIndy: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Passive = True
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 21
    Top = 445
  end
end
