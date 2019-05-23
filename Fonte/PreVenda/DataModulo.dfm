inherited DM: TDM
  OldCreateOrder = True
  Left = 112
  Top = 91
  Height = 387
  Width = 710
  inherited DB: TDatabase
    AliasName = 'UNITGESTAO'
    Left = 32
  end
  inherited SQLTemplate: TRxQuery
    Left = 32
    Top = 52
  end
  inherited Campos: TTableItems
    Left = 32
    Top = 97
  end
  inherited UpdateSQLExclusao: TUpdateSQL
    Left = 118
    Top = 141
  end
  inherited SQLExclusao: TRxQuery
    Left = 32
    Top = 141
  end
  inherited DSExclusao: TDataSource
    Left = 32
    Top = 185
  end
  inherited DSListagem: TDataSource
    Left = 568
    Top = 260
  end
  inherited DSEmail: TDataSource
    Left = 624
    Top = 260
  end
  inherited SQLProdutoSaldoDia: TRxQuery
    Left = 37
    Top = 238
  end
  inherited SQLProdutoSaldoAux: TRxQuery
    Left = 293
    Top = 54
  end
  inherited UpdateSQLProdutoSaldo: TUpdateSQL
    Left = 41
    Top = 294
  end
  inherited SQLAcesso: TRxQuery
    Left = 624
    Top = 310
  end
  object SQLTerminalAtivo: TRxQuery
    DatabaseName = 'DBTerm'
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
    Left = 204
    Top = 8
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
    object SQLTerminalAtivoTERMCECFIMPRCONFDIV: TStringField
      FieldName = 'TERMCECFIMPRCONFDIV'
      Origin = 'DBTERM.TERMINAL.TERMCECFIMPRCONFDIV'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCAUTENTRFIMCUP: TStringField
      FieldName = 'TERMCAUTENTRFIMCUP'
      Origin = 'DBTERM.TERMINAL.TERMCAUTENTRFIMCUP'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCHIDECLIVENDPL: TStringField
      FieldName = 'TERMCHIDECLIVENDPL'
      Origin = 'DBTERM.TERMINAL.TERMCHIDECLIVENDPL'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCIMPRDADINTCUP: TStringField
      FieldName = 'TERMCIMPRDADINTCUP'
      Origin = 'DBTERM.TERMINAL.TERMCIMPRDADINTCUP'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCCONFFECHCUPOM: TStringField
      FieldName = 'TERMCCONFFECHCUPOM'
      Origin = 'DBTERM.TERMINAL.TERMCCONFFECHCUPOM'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMA60IMPAUTORIZCOM: TStringField
      FieldName = 'TERMA60IMPAUTORIZCOM'
      Origin = 'DBTERM.TERMINAL.TERMA60IMPAUTORIZCOM'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMCMOSTRAIDCUPOM: TStringField
      FieldName = 'TERMCMOSTRAIDCUPOM'
      Origin = 'DBTERM.TERMINAL.TERMCMOSTRAIDCUPOM'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DBTERM.TERMINAL.EMPRICOD'
    end
    object SQLTerminalAtivoTERMCECFIMPRCLIE: TStringField
      FieldName = 'TERMCECFIMPRCLIE'
      Origin = 'DBTERM.TERMINAL.TERMCECFIMPRCLIE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCECFIMPRVEND: TStringField
      FieldName = 'TERMCECFIMPRVEND'
      Origin = 'DBTERM.TERMINAL.TERMCECFIMPRVEND'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DBTERM.TERMINAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DBTERM.TERMINAL.REGISTRO'
    end
    object SQLTerminalAtivoTERMIPROXCODCTRC: TIntegerField
      FieldName = 'TERMIPROXCODCTRC'
      Origin = 'DBTERM.TERMINAL.TERMIPROXCODCTRC'
    end
    object SQLTerminalAtivoTERMA60NOMECOMPUT: TStringField
      FieldName = 'TERMA60NOMECOMPUT'
      Origin = 'DBTERM.TERMINAL.TERMA60NOMECOMPUT'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMA254PATHTERM: TStringField
      FieldName = 'TERMA254PATHTERM'
      Origin = 'DBTERM.TERMINAL.TERMA254PATHTERM'
      FixedChar = True
      Size = 254
    end
    object SQLTerminalAtivoTERMA60IMPFICHACLI: TStringField
      FieldName = 'TERMA60IMPFICHACLI'
      Origin = 'DBTERM.TERMINAL.TERMA60IMPFICHACLI'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMITMPLIMITESERV: TIntegerField
      FieldName = 'TERMITMPLIMITESERV'
      Origin = 'DBTERM.TERMINAL.TERMITMPLIMITESERV'
    end
    object SQLTerminalAtivoTERMIINTERVALOSERV: TIntegerField
      FieldName = 'TERMIINTERVALOSERV'
      Origin = 'DBTERM.TERMINAL.TERMIINTERVALOSERV'
    end
    object SQLTerminalAtivoTERMINUMERECCRED: TIntegerField
      FieldName = 'TERMINUMERECCRED'
      Origin = 'DBTERM.TERMINAL.TERMINUMERECCRED'
    end
    object SQLTerminalAtivoTERMINROVIASTEF: TIntegerField
      FieldName = 'TERMINROVIASTEF'
      Origin = 'DBTERM.TERMINAL.TERMINROVIASTEF'
    end
    object SQLTerminalAtivoTERMCAUTENTIMPMATRI: TStringField
      FieldName = 'TERMCAUTENTIMPMATRI'
      Origin = 'DBTERM.TERMINAL.TERMCAUTENTIMPMATRI'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMACTIPOIMPPEDORC: TStringField
      FieldName = 'TERMACTIPOIMPPEDORC'
      Origin = 'DBTERM.TERMINAL.TERMACTIPOIMPPEDORC'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMTPATHPEDORC: TStringField
      FieldName = 'TERMTPATHPEDORC'
      Origin = 'DBTERM.TERMINAL.TERMTPATHPEDORC'
      FixedChar = True
      Size = 254
    end
    object SQLTerminalAtivoTERMA30MODIMPNFISC: TStringField
      FieldName = 'TERMA30MODIMPNFISC'
      Origin = 'DBTERM.TERMINAL.TERMA30MODIMPNFISC'
      FixedChar = True
      Size = 30
    end
    object SQLTerminalAtivoTERMCIMPENTCARNE: TStringField
      FieldName = 'TERMCIMPENTCARNE'
      Origin = 'DBTERM.TERMINAL.TERMCIMPENTCARNE'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DBTERM.TERMINAL.TPDCICOD'
    end
    object SQLTerminalAtivoTERMCIMPCOMPTOTREC: TStringField
      FieldName = 'TERMCIMPCOMPTOTREC'
      Origin = 'DBTERM.TERMINAL.TERMCIMPCOMPTOTREC'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCNAOAUTRCTOCRD: TStringField
      FieldName = 'TERMCNAOAUTRCTOCRD'
      Origin = 'DBTERM.TERMINAL.TERMCNAOAUTRCTOCRD'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCSQLORDENADO: TStringField
      FieldName = 'TERMCSQLORDENADO'
      Origin = 'DBTERM.TERMINAL.TERMCSQLORDENADO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoCFGIICOD: TIntegerField
      FieldName = 'CFGIICOD'
      Origin = 'DBTERM.TERMINAL.CFGIICOD'
    end
    object SQLTerminalAtivoTERMTPATHNF: TStringField
      FieldName = 'TERMTPATHNF'
      Origin = 'DBTERM.TERMINAL.TERMTPATHNF'
      FixedChar = True
      Size = 254
    end
    object SQLTerminalAtivoTERMA5LEITPORTACOM: TStringField
      FieldName = 'TERMA5LEITPORTACOM'
      Origin = 'DBTERM.TERMINAL.TERMA5LEITPORTACOM'
      FixedChar = True
      Size = 5
    end
    object SQLTerminalAtivoTERMA60MODLEITOR: TStringField
      FieldName = 'TERMA60MODLEITOR'
      Origin = 'DBTERM.TERMINAL.TERMA60MODLEITOR'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMCDISPOENTRADA: TStringField
      FieldName = 'TERMCDISPOENTRADA'
      Origin = 'DBTERM.TERMINAL.TERMCDISPOENTRADA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMA60MENSAGEMPDV: TStringField
      FieldName = 'TERMA60MENSAGEMPDV'
      Origin = 'DBTERM.TERMINAL.TERMA60MENSAGEMPDV'
      FixedChar = True
      Size = 60
    end
    object SQLTerminalAtivoTERMCINFDADOCARTAO: TStringField
      FieldName = 'TERMCINFDADOCARTAO'
      Origin = 'DBTERM.TERMINAL.TERMCINFDADOCARTAO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMA30MODIMPCHQ: TStringField
      FieldName = 'TERMA30MODIMPCHQ'
      Origin = 'DBTERM.TERMINAL.TERMA30MODIMPCHQ'
      FixedChar = True
      Size = 30
    end
    object SQLTerminalAtivoTERMA5IMPCHQPORTA: TStringField
      FieldName = 'TERMA5IMPCHQPORTA'
      Origin = 'DBTERM.TERMINAL.TERMA5IMPCHQPORTA'
      FixedChar = True
      Size = 5
    end
    object SQLTerminalAtivoTERMCMOSTRATROCOCUP: TStringField
      FieldName = 'TERMCMOSTRATROCOCUP'
      Origin = 'DBTERM.TERMINAL.TERMCMOSTRATROCOCUP'
      FixedChar = True
      Size = 1
    end
  end
  object SQLExtratoProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EXTRATOPRODUTO ')
    Macros = <>
    Left = 118
    Top = 52
  end
  object SQLConfigGeral: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CONFIGGERAL')
    Macros = <>
    Left = 204
    Top = 52
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
    object SQLConfigGeralEmpresaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60NOMEFANT'
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
    object SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField
      FieldName = 'CFGECESTOQUEPORLOTE'
      Origin = 'DB.CONFIGGERAL.CFGECESTOQUEPORLOTE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigGeralCFGECUSASALDODIARIO: TStringField
      FieldName = 'CFGECUSASALDODIARIO'
      Origin = 'DB.CONFIGGERAL.CFGECUSASALDODIARIO'
      FixedChar = True
      Size = 1
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
  end
  object SQLConfigVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGVENDA')
    Macros = <>
    Left = 214
    Top = 156
    object SQLConfigVendaCFVEN2PERCLIMCRED: TBCDField
      FieldName = 'CFVEN2PERCLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCLIMCRED'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVEN3MAXLIMCRED: TBCDField
      FieldName = 'CFVEN3MAXLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN3MAXLIMCRED'
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
    object SQLConfigVendaCFVECVENDAESTNEGAT: TStringField
      FieldName = 'CFVECVENDAESTNEGAT'
      Origin = 'DB.CONFIGVENDA.CFVECVENDAESTNEGAT'
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
    object SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField
      FieldName = 'CFVECPARC0ENTRBAIX'
      Origin = 'DB.CONFIGVENDA.CFVECPARC0ENTRBAIX'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEA250MSGBLOQ: TStringField
      FieldName = 'CFVEA250MSGBLOQ'
      Origin = 'DB.CONFIGVENDA.CFVEA250MSGBLOQ'
      FixedChar = True
      Size = 250
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
    object SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField
      FieldName = 'MTBLICODVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.MTBLICODVENDCONSIG'
    end
    object SQLConfigVendaCFVECIMPPREVDCOD: TStringField
      FieldName = 'CFVECIMPPREVDCOD'
      Origin = 'DB.CONFIGVENDA.CFVECIMPPREVDCOD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFINVENDADPREVD: TStringField
      FieldName = 'CFVECFINVENDADPREVD'
      Origin = 'DB.CONFIGVENDA.CFVECFINVENDADPREVD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField
      FieldName = 'CFVECFINDPRODPORDESCR'
      Origin = 'DB.CONFIGVENDA.CFVECFINDPRODPORDESCR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODCANCPED: TIntegerField
      FieldName = 'OPESICODCANCPED'
      Origin = 'DB.CONFIGVENDA.OPESICODCANCPED'
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
    object SQLConfigVendaCFVEICMSFRETECOD: TIntegerField
      FieldName = 'CFVEICMSFRETECOD'
      Origin = 'DB.CONFIGVENDA.CFVEICMSFRETECOD'
    end
    object SQLConfigVendaOPESICODPED: TIntegerField
      FieldName = 'OPESICODPED'
      Origin = 'DB.CONFIGVENDA.OPESICODPED'
    end
    object SQLConfigVendaCFVEINROITENSNF: TIntegerField
      FieldName = 'CFVEINROITENSNF'
      Origin = 'DB.CONFIGVENDA.CFVEINROITENSNF'
    end
    object SQLConfigVendaTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONFIGVENDA.TPDCICOD'
    end
    object SQLConfigVendaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONFIGVENDA.PORTICOD'
    end
    object SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField
      FieldName = 'CFVECPEDEVLRPRODUTO'
      Origin = 'DB.CONFIGVENDA.CFVECPEDEVLRPRODUTO'
      FixedChar = True
      Size = 1
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
    object SQLConfigVendaCFVETOBSPADRAONF: TStringField
      FieldName = 'CFVETOBSPADRAONF'
      Origin = 'DB.CONFIGVENDA.CFVETOBSPADRAONF'
      FixedChar = True
      Size = 100
    end
    object SQLConfigVendaCFVETOBSPADRAOPED: TStringField
      FieldName = 'CFVETOBSPADRAOPED'
      Origin = 'DB.CONFIGVENDA.CFVETOBSPADRAOPED'
      FixedChar = True
      Size = 100
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
    object SQLConfigVendaCFVEINROCASASDEC: TIntegerField
      FieldName = 'CFVEINROCASASDEC'
      Origin = 'DB.CONFIGVENDA.CFVEINROCASASDEC'
    end
    object SQLConfigVendaCFVECUSALIBERCRED: TStringField
      FieldName = 'CFVECUSALIBERCRED'
      Origin = 'DB.CONFIGVENDA.CFVECUSALIBERCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField
      FieldName = 'CFVECEXCLUIPEDFAT'
      Origin = 'DB.CONFIGVENDA.CFVECEXCLUIPEDFAT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECALTPEDIMPORT: TStringField
      FieldName = 'CFVECALTPEDIMPORT'
      Origin = 'DB.CONFIGVENDA.CFVECALTPEDIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaOPESICODIMPCUPOM: TIntegerField
      FieldName = 'OPESICODIMPCUPOM'
      Origin = 'DB.CONFIGVENDA.OPESICODIMPCUPOM'
    end
    object SQLConfigVendaOPESICODVENDCONSIG: TIntegerField
      FieldName = 'OPESICODVENDCONSIG'
      Origin = 'DB.CONFIGVENDA.OPESICODVENDCONSIG'
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
    object SQLConfigVendaCFVEN2PERCICMS: TBCDField
      FieldName = 'CFVEN2PERCICMS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCICMS'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVEN2PERCPIS: TBCDField
      FieldName = 'CFVEN2PERCPIS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCPIS'
      Precision = 15
      Size = 3
    end
    object SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField
      FieldName = 'CFVECSOLSENHAALTVLR'
      Origin = 'DB.CONFIGVENDA.CFVECSOLSENHAALTVLR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECIMPDESCRPRINF: TStringField
      FieldName = 'CFVECIMPDESCRPRINF'
      Origin = 'DB.CONFIGVENDA.CFVECIMPDESCRPRINF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField
      FieldName = 'CFVECCONTPEDVDAUSU'
      Origin = 'DB.CONFIGVENDA.CFVECCONTPEDVDAUSU'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECINFPRODSUBTRI: TStringField
      FieldName = 'CFVECINFPRODSUBTRI'
      Origin = 'DB.CONFIGVENDA.CFVECINFPRODSUBTRI'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECQUITAPARCRT: TStringField
      FieldName = 'CFVECQUITAPARCRT'
      Origin = 'DB.CONFIGVENDA.CFVECQUITAPARCRT'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECFRETEPADRAO: TStringField
      FieldName = 'CFVECFRETEPADRAO'
      Origin = 'DB.CONFIGVENDA.CFVECFRETEPADRAO'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVECINFVLRDEVCVEN: TStringField
      FieldName = 'CFVECINFVLRDEVCVEN'
      Origin = 'DB.CONFIGVENDA.CFVECINFVLRDEVCVEN'
      FixedChar = True
      Size = 1
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 204
    Top = 97
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
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Output = toPrinter
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    LoadEngineOnUse = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1
    GraphOptions.Min = -1
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 571
    Top = 310
  end
  object DBRel: TDatabase
    AliasName = 'UNITGESTAO_TEMP'
    DatabaseName = 'DBRelat'
    SessionName = 'Default'
    Left = 69
    Top = 8
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO')
    Macros = <>
    Left = 118
    Top = 8
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
      Origin = 'DB.USUARIO.REGISTRO'
      FixedChar = True
      Size = 60
    end
    object SQLUsuarioUSUACVERDADCOMPRCLI: TStringField
      FieldName = 'USUACVERDADCOMPRCLI'
      Origin = 'DB.USUARIO.USUACVERDADCOMPRCLI'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACDESBLOQCLI: TStringField
      FieldName = 'USUACDESBLOQCLI'
      Origin = 'DB.USUARIO.USUACDESBLOQCLI'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUAN2PERCDESC: TBCDField
      FieldName = 'USUAN2PERCDESC'
      Origin = 'DB.USUARIO.USUAN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLUsuarioUSUACVENDCLIBLOQ: TStringField
      FieldName = 'USUACVENDCLIBLOQ'
      Origin = 'DB.USUARIO.USUACVENDCLIBLOQ'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACUSERMASTER: TStringField
      FieldName = 'USUACUSERMASTER'
      Origin = 'DB.USUARIO.USUACUSERMASTER'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACCANCVENDA: TStringField
      FieldName = 'USUACCANCVENDA'
      Origin = 'DB.USUARIO.USUACCANCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACEXCLCLI: TStringField
      FieldName = 'USUACEXCLCLI'
      Origin = 'DB.USUARIO.USUACEXCLCLI'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACCANCPREVENDA: TStringField
      FieldName = 'USUACCANCPREVENDA'
      Origin = 'DB.USUARIO.USUACCANCPREVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUCALTERASLDINVENTARIO: TStringField
      FieldName = 'USUCALTERASLDINVENTARIO'
      Origin = 'DB.USUARIO.USUCALTERASLDINVENTARIO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACLIBERACREDITO: TStringField
      FieldName = 'USUACLIBERACREDITO'
      Origin = 'DB.USUARIO.USUACLIBERACREDITO'
      FixedChar = True
      Size = 1
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
    object SQLUsuarioUSUACEXCLDADOSTESO: TStringField
      FieldName = 'USUACEXCLDADOSTESO'
      Origin = 'DB.USUARIO.USUACEXCLDADOSTESO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACALTCAIXATES: TStringField
      FieldName = 'USUACALTCAIXATES'
      Origin = 'DB.USUARIO.USUACALTCAIXATES'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACEXCMOVBCO: TStringField
      FieldName = 'USUACEXCMOVBCO'
      Origin = 'DB.USUARIO.USUACEXCMOVBCO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACALTVLRVENDA: TStringField
      FieldName = 'USUACALTVLRVENDA'
      Origin = 'DB.USUARIO.USUACALTVLRVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACBLOQCTRLG: TStringField
      FieldName = 'USUACBLOQCTRLG'
      Origin = 'DB.USUARIO.USUACBLOQCTRLG'
      FixedChar = True
      Size = 1
    end
  end
  object SQLProdutoOrdemPesquisa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ProdutoOrdemPesquisa'
      'order by PDOPIORDEM')
    Macros = <>
    Left = 150
    Top = 209
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
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTO')
    Macros = <>
    Left = 293
    Top = 8
  end
  object SQLProdutoFilho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTOSALDO')
    Macros = <>
    Left = 293
    Top = 103
    object IntegerField1: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object BCDField1: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object BCDField2: TBCDField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
      Precision = 15
      Size = 3
    end
    object BCDField3: TBCDField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
      Precision = 15
      Size = 3
    end
    object StringField1: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTOSALDO')
    Macros = <>
    Left = 295
    Top = 155
    object IntegerField3: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object IntegerField4: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object BCDField4: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object BCDField5: TBCDField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
      Precision = 15
      Size = 3
    end
    object BCDField6: TBCDField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
      Precision = 15
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object SQLPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PRODUTOSALDO')
    Macros = <>
    Left = 296
    Top = 209
    object IntegerField5: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object IntegerField6: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object BCDField7: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object BCDField8: TBCDField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
      Precision = 15
      Size = 3
    end
    object BCDField9: TBCDField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
      Precision = 15
      Size = 3
    end
    object StringField3: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select VENDICOD,VENDA60NOME from Vendedor'
      'Order by VENDA60NOME')
    Macros = <>
    Left = 616
    Top = 39
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVendedor: TDataSource
    AutoEdit = False
    DataSet = SQLVendedor
    Left = 616
    Top = 5
  end
  object DSSQLPrevenda: TDataSource
    AutoEdit = False
    DataSet = SQLPrevenda
    OnDataChange = DSSQLPrevendaDataChange
    Left = 424
    Top = 5
  end
  object SQLPrevenda: TRxQuery
    BeforePost = SQLPrevendaBeforePost
    OnNewRecord = SQLPrevendaNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from PREVENDA'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 424
    Top = 39
    object SQLPrevendaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDA.TERMICOD'
    end
    object SQLPrevendaPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDA.PRVDICOD'
    end
    object SQLPrevendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPrevendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PREVENDA.PLRCICOD'
    end
    object SQLPrevendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDA.VENDICOD'
    end
    object SQLPrevendaCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.PREVENDA.CONVICOD'
    end
    object SQLPrevendaPRVDN2TOTITENS: TBCDField
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENS'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDN2DESC: TBCDField
      FieldName = 'PRVDN2DESC'
      Origin = 'DB.PREVENDA.PRVDN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDN2ACRESC: TBCDField
      FieldName = 'PRVDN2ACRESC'
      Origin = 'DB.PREVENDA.PRVDN2ACRESC'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDN2TOTITENSRET: TBCDField
      FieldName = 'PRVDN2TOTITENSRET'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENSRET'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDCTIPOPADRAO: TStringField
      FieldName = 'PRVDCTIPOPADRAO'
      Origin = 'DB.PREVENDA.PRVDCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLPrevendaPRVDN2CONVTAXA: TBCDField
      FieldName = 'PRVDN2CONVTAXA'
      Origin = 'DB.PREVENDA.PRVDN2CONVTAXA'
      Precision = 15
      Size = 3
    end
    object SQLPrevendaPRVDINROORDCOMPRA: TIntegerField
      FieldName = 'PRVDINROORDCOMPRA'
      Origin = 'DB.PREVENDA.PRVDINROORDCOMPRA'
    end
    object SQLPrevendaPRVDCIMPORT: TStringField
      FieldName = 'PRVDCIMPORT'
      Origin = 'DB.PREVENDA.PRVDCIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaPRVDCMARCADO: TStringField
      FieldName = 'PRVDCMARCADO'
      Origin = 'DB.PREVENDA.PRVDCMARCADO'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'DB.PREVENDA.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaCLIENTECNPJ: TStringField
      FieldName = 'CLIENTECNPJ'
      Origin = 'DB.PREVENDA.CLIENTECNPJ'
      FixedChar = True
    end
    object SQLPrevendaCLIENTEENDE: TStringField
      FieldName = 'CLIENTEENDE'
      Origin = 'DB.PREVENDA.CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaCLIENTECIDA: TStringField
      FieldName = 'CLIENTECIDA'
      Origin = 'DB.PREVENDA.CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object SQLPrevendaCLIENTEOBS: TStringField
      FieldName = 'CLIENTEOBS'
      Origin = 'DB.PREVENDA.CLIENTEOBS'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaPDVDDHVENDA: TDateTimeField
      FieldName = 'PDVDDHVENDA'
      Origin = 'DB.PREVENDA.PDVDDHVENDA'
    end
  end
  object DSSQLCliente: TDataSource
    AutoEdit = False
    DataSet = SQLCliente
    Left = 538
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CLIEA13ID, CLIEA60RAZAOSOC from CLIENTE'
      'Order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 538
    Top = 39
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select PLRCICOD, PLRCA60DESCR, PLRCN2TXJURO from PLANORECEBIMENT' +
        'O'
      'Order By PLRCA60DESCR')
    Macros = <>
    Left = 616
    Top = 120
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoRecebimentoPLRCN2TXJURO: TBCDField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLPlanoRecebimento: TDataSource
    AutoEdit = False
    DataSet = SQLPlanoRecebimento
    Left = 616
    Top = 86
  end
  object SQLPreVendaItem: TRxQuery
    OnCalcFields = SQLPreVendaItemCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PREVENDAITEM'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 425
    Top = 120
    object SQLPreVendaItemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object SQLPreVendaItemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object SQLPreVendaItemPVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object SQLPreVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object SQLPreVendaItemPVITN3QTD: TBCDField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
      DisplayFormat = '##0.000'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITN3VLRUNIT: TBCDField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITN3VLRCUSTUNIT: TBCDField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITN2DESC: TBCDField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPreVendaItemPVITN3VLRUNITLUCR: TBCDField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaItemPVITN2ICMSALIQ: TBCDField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemPRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaItemPVITN3QTDTROCA: TBCDField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItemDescricaoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoProduto'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLPreVendaItemVlrTotalItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VlrTotalItem'
      DisplayFormat = '##0.00'
      Calculated = True
    end
  end
  object DSSQLPreVendaItem: TDataSource
    AutoEdit = False
    DataSet = SQLPreVendaItem
    Left = 425
    Top = 86
  end
end
