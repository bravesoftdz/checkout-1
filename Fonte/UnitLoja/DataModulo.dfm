inherited DM: TDM
  OldCreateOrder = True
  Left = 389
  Top = 129
  Height = 516
  Width = 920
  inherited DB: TDatabase
    AliasName = 'Easy_Gestao'
    Connected = False
    Left = 21
  end
  inherited SQLTemplate: TRxQuery
    Left = 21
    Top = 53
  end
  inherited Campos: TTableItems
    Left = 21
    Top = 100
  end
  inherited UpdateSQLExclusao: TUpdateSQL
    Left = 107
    Top = 152
  end
  inherited SQLExclusao: TRxQuery
    Left = 21
    Top = 144
  end
  inherited DSExclusao: TDataSource
    Left = 21
    Top = 189
  end
  inherited DSListagem: TDataSource
    Left = 146
  end
  inherited DSEmail: TDataSource
    Left = 202
  end
  inherited SQLProdutoSaldoDia: TRxQuery
    Left = 311
    Top = 152
  end
  inherited SQLProdutoSaldoAux: TRxQuery
    Left = 24
    Top = 246
  end
  inherited UpdateSQLProdutoSaldo: TUpdateSQL
    Left = 222
    Top = 160
  end
  inherited SQLAcesso: TRxQuery
    Left = 160
    Top = 110
  end
  inherited ZConsulta: TZQuery
    Left = 729
    Top = 71
  end
  inherited Zupdate: TZQuery
    Left = 729
    Top = 129
  end
  inherited zdb: TZConnection
    Left = 731
    Top = 20
  end
  inherited zdbServidor: TZConnection
    Left = 821
    Top = 20
  end
  inherited zServidor_Consulta: TZQuery
    Left = 818
    Top = 72
  end
  inherited SQLConsulta: TRxQuery
    Left = 21
    Top = 370
  end
  inherited SQLUpdate: TRxQuery
    Left = 24
    Top = 418
  end
  object SQLConfigGeral: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGGERAL')
    Macros = <>
    Left = 181
    Top = 56
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
    object SQLConfigGeralCFGECUSAMARGLIQ: TStringField
      FieldName = 'CFGECUSAMARGLIQ'
      Origin = 'DB.CONFIGGERAL.CFGECUSAMARGLIQ'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGEDBLOQ: TDateTimeField
      FieldName = 'CFGEDBLOQ'
      Origin = 'DB.CONFIGGERAL.CFGEDBLOQ'
    end
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO')
    Macros = <>
    Left = 95
    Top = 54
    object SQLUsuarioUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLUsuarioUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLUsuarioUSUAA5SENHA: TStringField
      FieldName = 'USUAA5SENHA'
      Origin = 'DB.USUARIO.USUAA5SENHA'
      FixedChar = True
      Size = 60
    end
    object SQLUsuarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.USUARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.USUARIO.REGISTRO'
    end
    object SQLUsuarioUSUACUSERMASTER: TStringField
      FieldName = 'USUACUSERMASTER'
      Origin = 'DB.USUARIO.USUACUSERMASTER'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPERMVMOVCX: TStringField
      FieldName = 'USUACPERMVMOVCX'
      Origin = 'DB.USUARIO.USUACPERMVMOVCX'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPERMVVENDAS: TStringField
      FieldName = 'USUACPERMVVENDAS'
      Origin = 'DB.USUARIO.USUACPERMVVENDAS'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACVRESFINFORN: TStringField
      FieldName = 'USUACVRESFINFORN'
      Origin = 'DB.USUARIO.USUACVRESFINFORN'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACRESUMOFIN: TStringField
      FieldName = 'USUACRESUMOFIN'
      Origin = 'DB.USUARIO.USUACRESUMOFIN'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPERMITEADM: TStringField
      FieldName = 'USUACPERMITEADM'
      Origin = 'DB.USUARIO.USUACPERMITEADM'
      FixedChar = True
      Size = 1
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 261
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
    object SQLEmpresaEMPRA60CONTATO: TStringField
      FieldName = 'EMPRA60CONTATO'
      Origin = 'DB.EMPRESA.EMPRA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCLUCROREAL: TStringField
      FieldName = 'EMPRCLUCROREAL'
      Origin = 'DB.EMPRESA.EMPRCLUCROREAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRN2VLRFUNDOPROMO: TBCDField
      FieldName = 'EMPRN2VLRFUNDOPROMO'
      Origin = 'DB.EMPRESA.EMPRN2VLRFUNDOPROMO'
      Precision = 15
      Size = 2
    end
    object SQLEmpresaEMPRA3CRT: TStringField
      FieldName = 'EMPRA3CRT'
      Origin = 'DB.EMPRESA.EMPRA3CRT'
      Size = 3
    end
    object SQLEmpresaEMPRIENDNRO: TIntegerField
      FieldName = 'EMPRIENDNRO'
      Origin = 'DB.EMPRESA.EMPRIENDNRO'
    end
    object SQLEmpresaEMPRA75EMAILUSUARIO: TStringField
      FieldName = 'EMPRA75EMAILUSUARIO'
      Origin = 'DB.EMPRESA.EMPRA75EMAILUSUARIO'
      Size = 75
    end
    object SQLEmpresaEMPRA50EMAILHOST: TStringField
      FieldName = 'EMPRA50EMAILHOST'
      Origin = 'DB.EMPRESA.EMPRA50EMAILHOST'
      Size = 50
    end
    object SQLEmpresaEMPRIEMAILPORTA: TIntegerField
      FieldName = 'EMPRIEMAILPORTA'
      Origin = 'DB.EMPRESA.EMPRIEMAILPORTA'
    end
    object SQLEmpresaEMPRA50EMAILSENHA: TStringField
      FieldName = 'EMPRA50EMAILSENHA'
      Origin = 'DB.EMPRESA.EMPRA50EMAILSENHA'
      Size = 50
    end
    object SQLEmpresaEMPRA1SSL: TStringField
      FieldName = 'EMPRA1SSL'
      Origin = 'DB.EMPRESA.EMPRA1SSL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA60EMAILCOPIA: TStringField
      FieldName = 'EMPRA60EMAILCOPIA'
      Origin = 'DB.EMPRESA.EMPRA60EMAILCOPIA'
      Size = 60
    end
    object SQLEmpresaEMPRA1TSL: TStringField
      FieldName = 'EMPRA1TSL'
      Origin = 'DB.EMPRESA.EMPRA1TSL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA100CERTIFSERIE: TStringField
      FieldName = 'EMPRA100CERTIFSERIE'
      Origin = 'DB.EMPRESA.EMPRA100CERTIFSERIE'
      Size = 100
    end
    object SQLEmpresaEMPRA35CERTIFSENHA: TStringField
      FieldName = 'EMPRA35CERTIFSENHA'
      Origin = 'DB.EMPRESA.EMPRA35CERTIFSENHA'
      Size = 35
    end
    object SQLEmpresaEMPRIMUNICODFED: TIntegerField
      FieldName = 'EMPRIMUNICODFED'
      Origin = 'DB.EMPRESA.EMPRIMUNICODFED'
    end
    object SQLEmpresaEMPRIUFCODFED: TIntegerField
      FieldName = 'EMPRIUFCODFED'
      Origin = 'DB.EMPRESA.EMPRIUFCODFED'
    end
  end
  object SQLConfigVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGVENDA')
    Macros = <>
    Left = 345
    Top = 8
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
    object SQLConfigVendaCFVECRENDCONJNOLIM: TStringField
      FieldName = 'CFVECRENDCONJNOLIM'
      Origin = 'DB.CONFIGVENDA.CFVECRENDCONJNOLIM'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECARREDPARCELA: TStringField
      FieldName = 'CFVECARREDPARCELA'
      Origin = 'DB.CONFIGVENDA.CFVECARREDPARCELA'
      FixedChar = True
      Size = 1
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
    object SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField
      FieldName = 'CFVECPARC0ENTRBAIX'
      Origin = 'DB.CONFIGVENDA.CFVECPARC0ENTRBAIX'
      FixedChar = True
      Size = 1
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
    object SQLConfigVendaOPESICODDEVOL: TIntegerField
      FieldName = 'OPESICODDEVOL'
      Origin = 'DB.CONFIGVENDA.OPESICODDEVOL'
    end
    object SQLConfigVendaCFVECTESTALIMTCRED: TStringField
      FieldName = 'CFVECTESTALIMTCRED'
      Origin = 'DB.CONFIGVENDA.CFVECTESTALIMTCRED'
      FixedChar = True
      Size = 1
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
    object SQLConfigVendaCFVECQUITAPARCONV: TStringField
      FieldName = 'CFVECQUITAPARCONV'
      Origin = 'DB.CONFIGVENDA.CFVECQUITAPARCONV'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFARREDVLRVEND: TStringField
      FieldName = 'CFVECFARREDVLRVEND'
      Origin = 'DB.CONFIGVENDA.CFVECFARREDVLRVEND'
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
  object SQLTerminalAtivo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'where'
      '(%MFiltro)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 436
    Top = 8
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
    object SQLTerminalAtivoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
    object SQLTerminalAtivoTERMA60IMPPEDIDO: TStringField
      FieldName = 'TERMA60IMPPEDIDO'
      Origin = 'DB.TERMINAL.TERMA60IMPPEDIDO'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMINRODECQUANT: TIntegerField
      FieldName = 'TERMINRODECQUANT'
      Origin = 'DB.TERMINAL.TERMINRODECQUANT'
    end
    object SQLTerminalAtivoTERMA255MSGCARNE: TStringField
      FieldName = 'TERMA255MSGCARNE'
      Origin = 'DB.TERMINAL.TERMA255MSGCARNE'
      Size = 255
    end
    object SQLTerminalAtivoTERMCMOVESTOQUE: TStringField
      FieldName = 'TERMCMOVESTOQUE'
      Origin = 'DB.TERMINAL.TERMCMOVESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCIMPPREVENDA: TStringField
      FieldName = 'TERMCIMPPREVENDA'
      Origin = 'DB.TERMINAL.TERMCIMPPREVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCMOVTRANSF: TStringField
      FieldName = 'TERMCMOVTRANSF'
      Origin = 'DB.TERMINAL.TERMCMOVTRANSF'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMA254PATHTERM: TStringField
      FieldName = 'TERMA254PATHTERM'
      Origin = 'DB.TERMINAL.TERMA254PATHTERM'
      FixedChar = True
      Size = 254
    end
  end
  object SQLConfigCrediario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ConfigCrediario')
    Macros = <>
    Left = 527
    Top = 8
    object SQLConfigCrediarioCFCRN2PERCMULATRAS: TBCDField
      FieldName = 'CFCRN2PERCMULATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCMULATRAS'
      Precision = 15
      Size = 3
    end
    object SQLConfigCrediarioCFCRN2PERCJURATRAS: TBCDField
      FieldName = 'CFCRN2PERCJURATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCJURATRAS'
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
    object SQLConfigCrediarioCFCRN2PERCTAXACOBR: TBCDField
      FieldName = 'CFCRN2PERCTAXACOBR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCTAXACOBR'
      Precision = 15
      Size = 3
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
    object SQLConfigCrediarioCFCRINRODIACARTA4A: TIntegerField
      FieldName = 'CFCRINRODIACARTA4A'
      Origin = 'DB.CONFIGCREDIARIO.CFCRINRODIACARTA4A'
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
    object SQLConfigCrediarioCFCRA255PATHCARTPE: TStringField
      FieldName = 'CFCRA255PATHCARTPE'
      Origin = 'DB.CONFIGCREDIARIO.CFCRA255PATHCARTPE'
      Size = 254
    end
  end
  object SQLConfigCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGCOMPRAS')
    Macros = <>
    Left = 621
    Top = 8
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
      Origin = 'DB.CONFIGCOMPRAS.CFCOITIPMOVNFE'
    end
    object SQLConfigCompraCFCOCTESTPRODFORN: TStringField
      FieldName = 'CFCOCTESTPRODFORN'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTESTPRODFORN'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONFIGCOMPRAS.PORTICOD'
    end
    object SQLConfigCompraTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONFIGCOMPRAS.TPDCICOD'
    end
    object SQLConfigCompraCFCOCINFDADOSFRETE: TStringField
      FieldName = 'CFCOCINFDADOSFRETE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCINFDADOSFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCALTPERCIPI: TStringField
      FieldName = 'CFCOCALTPERCIPI'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTPERCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCALTVLRCOMPRA: TStringField
      FieldName = 'CFCOCALTVLRCOMPRA'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCALTVLRCOMPRA'
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
    object SQLConfigCompraCFCOCVERIFICAVLRMENOR: TStringField
      FieldName = 'CFCOCVERIFICAVLRMENOR'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCVERIFICAVLRMENOR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCPREVREALNFCOMPRAFIN: TStringField
      FieldName = 'CFCOCPREVREALNFCOMPRAFIN'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCPREVREALNFCOMPRAFIN'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOCNIMPFINPEDCOMP: TStringField
      FieldName = 'CFCOCNIMPFINPEDCOMP'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCNIMPFINPEDCOMP'
      FixedChar = True
      Size = 1
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO')
    Macros = <>
    Left = 261
    Top = 53
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 237
    Top = 108
  end
  object SQLProdutoFilho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLProduto
    SQL.Strings = (
      'select * from PRODUTO'
      'where PRODICODPAI = :PRODICODPAI')
    Macros = <>
    Left = 345
    Top = 53
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICODPAI'
        ParamType = ptUnknown
      end>
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTOSALDO')
    Macros = <>
    Left = 345
    Top = 100
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
  object SQLLimparPreVenda: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 107
    Top = 197
  end
  object SQLPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TABELAPRECOPRODUTO'
      'Where PRODICOD=:PRODICOD AND TPRCICOD=:TPRCICOD')
    Macros = <>
    Left = 107
    Top = 109
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
    Left = 341
    Top = 253
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
  object SQLConfigConta: TRxQuery
    BeforeEdit = SQLConfigContaBeforeEdit
    BeforePost = SQLConfigContaBeforePost
    OnNewRecord = SQLConfigContaNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONFIGCONTA')
    Macros = <>
    Left = 432
    Top = 53
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
  object DSSQLPlanodeContas: TDataSource
    DataSet = SQLPlanodeContas
    Left = 439
    Top = 146
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
    Left = 439
    Top = 101
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
  object SQLConta: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PLANODECONTAS')
    Macros = <>
    Left = 510
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
  object SQLParcelas: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 384
    Top = 198
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 444
    Top = 198
  end
  object SQLConfigInventario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * From CONFIGINVENTARIO')
    Left = 560
    Top = 120
    object SQLConfigInventarioOPESICODENTRADA: TIntegerField
      FieldName = 'OPESICODENTRADA'
      Origin = 'DB.CONFIGINVENTARIO.OPESICODENTRADA'
    end
    object SQLConfigInventarioOPESICODSAIDA: TIntegerField
      FieldName = 'OPESICODSAIDA'
      Origin = 'DB.CONFIGINVENTARIO.OPESICODSAIDA'
    end
  end
  object SQLConfigFinanceiro: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CONFIGFINANCEIRO')
    Macros = <>
    Left = 616
    Top = 56
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
    object SQLConfigFinanceiroOPTEICODESTORNOCRD: TIntegerField
      FieldName = 'OPTEICODESTORNOCRD'
      Origin = 'DB.CONFIGFINANCEIRO.OPTEICODESTORNOCRD'
    end
    object SQLConfigFinanceiroOPBCICODESTORNOCRD: TIntegerField
      FieldName = 'OPBCICODESTORNOCRD'
      Origin = 'DB.CONFIGFINANCEIRO.OPBCICODESTORNOCRD'
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
    Left = 128
    Top = 246
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
    Left = 221
    Top = 246
  end
  object DBTemp: TDatabase
    AliasName = 'Easy_Temp'
    DatabaseName = 'DBTemp'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 75
    Top = 8
  end
  object SQLConfigTransportadora: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONFIGTRANSPORTADORA')
    Macros = <>
    Left = 557
    Top = 179
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
  object DsSQLConfigTransportadora: TDataSource
    DataSet = SQLConfigTransportadora
    Left = 557
    Top = 232
  end
  object SQLPopUP: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CFGCALLCENTER')
    Left = 24
    Top = 312
    object SQLPopUPPOPTEMPO: TStringField
      FieldName = 'POPTEMPO'
      Origin = 'DB.CFGCALLCENTER.POPTEMPO'
      FixedChar = True
      Size = 2
    end
    object SQLPopUPCFGCCEXIBIRPOPTARE: TStringField
      FieldName = 'CFGCCEXIBIRPOPTARE'
      Origin = 'DB.CFGCALLCENTER.CFGCCEXIBIRPOPTARE'
      FixedChar = True
      Size = 1
    end
  end
  object DSNovoContato: TDataSource
    DataSet = SQLNovoContato
    Left = 133
    Top = 361
  end
  object SQLNovoContato: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From '
      '   Contato '
      'Where'
      '   CONTDCONTATO is NULL')
    Macros = <>
    Left = 133
    Top = 312
    object SQLNovoContatoEMPRICOD: TIntegerField
      Tag = 1
      FieldName = 'EMPRICOD'
    end
    object SQLNovoContatoCONTDCONTATO: TDateTimeField
      Tag = 1
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATO.CONTDCONTATO'
    end
    object SQLNovoContatoCONTICOD: TIntegerField
      Tag = 1
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATO.CONTICOD'
    end
    object SQLNovoContatoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CONTATO.VENDICOD'
    end
    object SQLNovoContatoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTATO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNovoContatoTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CONTATO.TPCLICOD'
    end
    object SQLNovoContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.CONTATO.TPCTICOD'
    end
    object SQLNovoContatoTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.CONTATO.TPRTICOD'
    end
    object SQLNovoContatoTPCTICODPROX: TIntegerField
      FieldName = 'TPCTICODPROX'
      Origin = 'DB.CONTATO.TPCTICODPROX'
    end
    object SQLNovoContatoCONTDPROXCONT: TDateTimeField
      FieldName = 'CONTDPROXCONT'
      Origin = 'DB.CONTATO.CONTDPROXCONT'
    end
    object SQLNovoContatoCONTDREAL: TDateTimeField
      FieldName = 'CONTDREAL'
      Origin = 'DB.CONTATO.CONTDREAL'
    end
    object SQLNovoContatoCONTA255OBS: TStringField
      FieldName = 'CONTA255OBS'
      Origin = 'DB.CONTATO.CONTA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLNovoContatoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNovoContatoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTATO.REGISTRO'
    end
    object SQLNovoContatoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CONTATO.USUAICOD'
    end
  end
  object TblTicketPreVendaFin: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoFinan.DB'
    Left = 583
    Top = 365
    object TblTicketPreVendaFinPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblTicketPreVendaFinParcela: TStringField
      FieldName = 'Parcela'
      Size = 3
    end
    object TblTicketPreVendaFinVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TblTicketPreVendaFinValor: TFloatField
      FieldName = 'Valor'
    end
    object TblTicketPreVendaFinPortador: TStringField
      FieldName = 'Portador'
      Size = 60
    end
    object TblTicketPreVendaFinNumerario: TStringField
      FieldName = 'Numerario'
      Size = 15
    end
    object TblTicketPreVendaFinTipopadrao: TStringField
      FieldName = 'Tipopadrao'
      Size = 5
    end
  end
  object TblTicketPreVendaCab: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaCab.DB'
    Left = 583
    Top = 315
    object TblTicketPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TblTicketPreVendaCabEmpresaEmit: TStringField
      FieldName = 'EmpresaEmit'
      Size = 60
    end
    object TblTicketPreVendaCabEmpresaEmit_Ender: TStringField
      FieldName = 'EmpresaEmit_Ender'
      Size = 60
    end
    object TblTicketPreVendaCabEmpresaEmit_Bairro: TStringField
      FieldName = 'EmpresaEmit_Bairro'
      Size = 60
    end
    object TblTicketPreVendaCabEmpresaEmit_Cidade: TStringField
      FieldName = 'EmpresaEmit_Cidade'
      Size = 60
    end
    object TblTicketPreVendaCabEmpresaEmit_Fone: TStringField
      FieldName = 'EmpresaEmit_Fone'
      Size = 15
    end
    object TblTicketPreVendaCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblTicketPreVendaCabVendedor: TStringField
      FieldName = 'Vendedor'
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
      Size = 240
    end
    object TblTicketPreVendaCabVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
    object TblTicketPreVendaCabNomeClienteVenda: TStringField
      FieldName = 'NomeClienteVenda'
      Size = 60
    end
    object TblTicketPreVendaCabDocumentoClienteVenda: TStringField
      FieldName = 'DocumentoClienteVenda'
    end
    object TblTicketPreVendaCabEnderecoClienteVenda: TStringField
      FieldName = 'EnderecoClienteVenda'
      Size = 60
    end
    object TblTicketPreVendaCabCidadeClienteVenda: TStringField
      FieldName = 'CidadeClienteVenda'
      Size = 30
    end
    object TblTicketPreVendaCabOBSImpressaoCupom: TStringField
      FieldName = 'OBSImpressaoCupom'
      Size = 60
    end
    object TblTicketPreVendaCabTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblTicketPreVendaCabPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
    end
    object TblTicketPreVendaCabDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object TblTicketPreVendaCabFoneClienteVenda: TStringField
      FieldName = 'FoneClienteVenda'
      Size = 15
    end
    object TblTicketPreVendaCabUsuarioVendaSTR: TStringField
      FieldName = 'UsuarioVendaSTR'
    end
    object TblTicketPreVendaCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TblTicketPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
    end
    object TblTicketPreVendaCabPEDIDOORCAMENTO: TStringField
      FieldName = 'PEDIDOORCAMENTO'
    end
    object TblTicketPreVendaCabDisplayNumero: TIntegerField
      FieldName = 'DisplayNumero'
    end
    object TblTicketPreVendaCabMesaCodigo: TIntegerField
      FieldName = 'MesaCodigo'
    end
    object TblTicketPreVendaCabContaCodigo: TIntegerField
      FieldName = 'ContaCodigo'
    end
    object TblTicketPreVendaCabLevarCasa: TStringField
      FieldName = 'LevarCasa'
      Size = 1
    end
    object TblTicketPreVendaCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
    end
    object TblTicketPreVendaCabKM: TStringField
      FieldName = 'KM'
      Size = 10
    end
    object TblTicketPreVendaCabClienteDependente: TStringField
      FieldName = 'ClienteDependente'
    end
  end
  object TblTicketPreVendaItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaItem.DB'
    Left = 583
    Top = 342
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
    object TblTicketPreVendaItemUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
    object TblTicketPreVendaItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TblTicketPreVendaItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object TblTicketPreVendaItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TblTicketPreVendaItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
    end
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = True
    Configuracoes.Arquivos.PathSalvar = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.PathNFe = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.PathInu = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.PathEvento = 'c:\easy2solutions\nfce\'
    Configuracoes.WebServices.UF = 'RS'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.Tentativas = 1
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFeESCPOS
    Left = 771
    Top = 241
  end
  object ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS
    ACBrNFe = ACBrNFe
    Sistema = 'Easy2Solutions'
    PathPDF = '.\pdf\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiNFCe
    NumCopias = 1
    Site = 'http://www.projetoacbr.com.br'
    ImprimirDescPorc = False
    ImprimirTotalLiquido = False
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 3
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    FonteTributos = 'IBPT'
    PosCanhoto = prCabecalho
    ImprimeEmUmaLinha = False
    ImprimeDescAcrescItem = False
    PosPrinter = ACBrPosPrinter
    Left = 802
    Top = 241
  end
  object ACBrPosPrinter: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    ConfigLogo.IgnorarLogo = True
    LinhasEntreCupons = 3
    CortaPapel = True
    ControlePorta = True
    Left = 832
    Top = 241
  end
end
