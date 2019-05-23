inherited DM: TDM
  OldCreateOrder = True
  Left = 64405
  Top = 48
  Height = 724
  Width = 859
  inherited DB: TDatabase
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
    Top = 152
  end
  inherited DSEmail: TDataSource
    Left = 624
    Top = 152
  end
  inherited SQLProdutoSaldoAux: TRxQuery
    Left = 294
    Top = 273
  end
  inherited UpdateSQLProdutoSaldo: TUpdateSQL
    Left = 153
    Top = 190
  end
  inherited SQLAcesso: TRxQuery
    Left = 624
    Top = 230
  end
  inherited ZConsulta: TZQuery
    Left = 753
  end
  inherited Zupdate: TZQuery
    Left = 754
  end
  inherited zdb: TZConnection
    Left = 752
    Top = 16
  end
  inherited zdbServidor: TZConnection
    Left = 691
    Top = 20
  end
  inherited zServidor_Consulta: TZQuery
    Left = 755
    Top = 165
  end
  inherited sqlConsulta: TQuery
    Left = 261
    Top = 610
  end
  inherited sqlUpdate: TQuery
    Left = 339
    Top = 610
  end
  inherited SQLProdutoSaldoDia: TRxQuery
    Left = 85
    Top = 190
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
    object SQLUsuarioUSUAN2PERCDESC: TFloatField
      FieldName = 'USUAN2PERCDESC'
      Origin = 'DB.USUARIO.USUAN2PERCDESC'
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
    object SQLUsuarioUSUACVISULUCVEND: TStringField
      FieldName = 'USUACVISULUCVEND'
      Origin = 'DB.USUARIO.USUACVISULUCVEND'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUCDESTRIMPFISC: TStringField
      FieldName = 'USUCDESTRIMPFISC'
      Origin = 'DB.USUARIO.USUCDESTRIMPFISC'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUAA60EMAIL: TStringField
      FieldName = 'USUAA60EMAIL'
      Origin = 'DB.USUARIO.USUAA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLUsuarioUSUACVERTODASEMPR: TStringField
      FieldName = 'USUACVERTODASEMPR'
      Origin = 'DB.USUARIO.USUACVERTODASEMPR'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACBXCPAGFIN: TStringField
      FieldName = 'USUACBXCPAGFIN'
      Origin = 'DB.USUARIO.USUACBXCPAGFIN'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACBXCRECFIN: TStringField
      FieldName = 'USUACBXCRECFIN'
      Origin = 'DB.USUARIO.USUACBXCRECFIN'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUCENCERRAMVTODVS: TStringField
      FieldName = 'USUCENCERRAMVTODVS'
      Origin = 'DB.USUARIO.USUCENCERRAMVTODVS'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACLIBERASALDNEG: TStringField
      FieldName = 'USUACLIBERASALDNEG'
      Origin = 'DB.USUARIO.USUACLIBERASALDNEG'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACVRESFINFORN: TStringField
      FieldName = 'USUACVRESFINFORN'
      Origin = 'DB.USUARIO.USUACVRESFINFORN'
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
    object SQLUsuarioUSUACPERMLEITX: TStringField
      FieldName = 'USUACPERMLEITX'
      Origin = 'DB.USUARIO.USUACPERMLEITX'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPERMREDZ: TStringField
      FieldName = 'USUACPERMREDZ'
      Origin = 'DB.USUARIO.USUACPERMREDZ'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPERMSANGRIA: TStringField
      FieldName = 'USUACPERMSANGRIA'
      Origin = 'DB.USUARIO.USUACPERMSANGRIA'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPERMSUPRI: TStringField
      FieldName = 'USUACPERMSUPRI'
      Origin = 'DB.USUARIO.USUACPERMSUPRI'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPERMRESUCX: TStringField
      FieldName = 'USUACPERMRESUCX'
      Origin = 'DB.USUARIO.USUACPERMRESUCX'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioCANCMESA: TStringField
      FieldName = 'CANCMESA'
      Origin = 'DB.USUARIO.CANCMESA'
      FixedChar = True
      Size = 1
    end
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
    object SQLTerminalAtivoTERMCSOLCODVEND: TStringField
      FieldName = 'TERMCSOLCODVEND'
      Origin = 'DBTERM.TERMINAL.TERMCSOLCODVEND'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCIMPPREVENDASIM: TStringField
      FieldName = 'TERMCIMPPREVENDASIM'
      Origin = 'DBTERM.TERMINAL.TERMCIMPPREVENDASIM'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCBXESTFECHCX: TStringField
      FieldName = 'TERMCBXESTFECHCX'
      Origin = 'DBTERM.TERMINAL.TERMCBXESTFECHCX'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCTECLREDUZ: TStringField
      FieldName = 'TERMCTECLREDUZ'
      Origin = 'DBTERM.TERMINAL.TERMCTECLREDUZ'
      FixedChar = True
      Size = 15
    end
    object SQLTerminalAtivoTERMIQTDEPADRAO: TIntegerField
      FieldName = 'TERMIQTDEPADRAO'
      Origin = 'DBTERM.TERMINAL.TERMIQTDEPADRAO'
    end
    object SQLTerminalAtivoTERMCECFIMPRCONFDIVIMPFAT: TStringField
      FieldName = 'TERMCECFIMPRCONFDIVIMPFAT'
      Origin = 'DBTERM.TERMINAL.TERMCECFIMPRCONFDIVIMPFAT'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCECFIMPRCONFDIVIMPITENS: TStringField
      FieldName = 'TERMCECFIMPRCONFDIVIMPITENS'
      Origin = 'DBTERM.TERMINAL.TERMCECFIMPRCONFDIVIMPITENS'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMCECFIMPRCONFDIVPERGUNTA: TStringField
      FieldName = 'TERMCECFIMPRCONFDIVPERGUNTA'
      Origin = 'DBTERM.TERMINAL.TERMCECFIMPRCONFDIVPERGUNTA'
      FixedChar = True
      Size = 1
    end
    object SQLTerminalAtivoTERMINRODECVALORUNIT: TIntegerField
      FieldName = 'TERMINRODECVALORUNIT'
      Origin = 'DBTERM.TERMINAL.TERMINRODECVALORUNIT'
    end
    object SQLTerminalAtivoECF_VELOC: TIntegerField
      FieldName = 'ECF_VELOC'
      Origin = 'DBTERM.TERMINAL.ECF_VELOC'
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
  object SQLConfigCrediario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGCREDIARIO')
    Macros = <>
    Left = 294
    Top = 8
    object SQLConfigCrediarioCFCRN2PERCJURATRAS: TFloatField
      FieldName = 'CFCRN2PERCJURATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCJURATRAS'
    end
    object SQLConfigCrediarioCFCRN2PERCMULATRAS: TFloatField
      FieldName = 'CFCRN2PERCMULATRAS'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCMULATRAS'
    end
    object SQLConfigCrediarioCFCRN2PERCADIANT: TFloatField
      FieldName = 'CFCRN2PERCADIANT'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCADIANT'
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
    object SQLConfigCrediarioCFCRN2PERCTAXACOBR: TFloatField
      FieldName = 'CFCRN2PERCTAXACOBR'
      Origin = 'DB.CONFIGCREDIARIO.CFCRN2PERCTAXACOBR'
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
  object SQLClienteDadChq: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 294
    Top = 97
    object SQLClienteDadChqCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteDadChqCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDadChqBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLClienteDadChqCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLClienteDadChqCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLClienteDadChqCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDadChqCLIEDABERTCONTA: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
    end
  end
  object SQLTotalizadorCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TOTALIZADORCAIXA ')
    Macros = <>
    Left = 392
    Top = 8
    object SQLTotalizadorCaixaTOTAICOD: TIntegerField
      FieldName = 'TOTAICOD'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAICOD'
    end
    object SQLTotalizadorCaixaTOTAA60DESCR: TStringField
      FieldName = 'TOTAA60DESCR'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTotalizadorCaixaTOTACTRANSFSALDO: TStringField
      FieldName = 'TOTACTRANSFSALDO'
      Origin = 'DB.TOTALIZADORCAIXA.TOTACTRANSFSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLTotalizadorCaixaTOTACDEBITOCREDITO: TStringField
      FieldName = 'TOTACDEBITOCREDITO'
      Origin = 'DB.TOTALIZADORCAIXA.TOTACDEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object SQLTotalizadorCaixaTOTAIORDLIST: TIntegerField
      FieldName = 'TOTAIORDLIST'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAIORDLIST'
    end
  end
  object SQLTotalizar: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 480
    Top = 8
  end
  object SQLOperacaoCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOCAIXA where (%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 561
    Top = 8
    object SQLOperacaoCaixaOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.OPERACAOCAIXA.OPCXICOD'
    end
    object SQLOperacaoCaixaOPCXA60DESCR: TStringField
      FieldName = 'OPCXA60DESCR'
      Origin = 'DB.OPERACAOCAIXA.OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoCaixaOPCXCDEBITOCREDITO: TStringField
      FieldName = 'OPCXCDEBITOCREDITO'
      Origin = 'DB.OPERACAOCAIXA.OPCXCDEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoCaixaOPCXA5SIGLA: TStringField
      FieldName = 'OPCXA5SIGLA'
      Origin = 'DB.OPERACAOCAIXA.OPCXA5SIGLA'
      FixedChar = True
      Size = 5
    end
  end
  object SQLConfigGeral: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
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
    object SQLConfigGeralDIAS_AVISO: TIntegerField
      FieldName = 'DIAS_AVISO'
      Origin = 'DB.CONFIGGERAL.DIAS_AVISO'
    end
    object SQLConfigGeralDATA_INI_SEM_NET: TDateTimeField
      FieldName = 'DATA_INI_SEM_NET'
      Origin = 'DB.CONFIGGERAL.DATA_INI_SEM_NET'
    end
  end
  object MemCtRecParc: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'CtRecParc.DB'
    Left = 32
    Top = 276
    object MemCtRecParcCTRCDVENC: TDateTimeField
      DisplayLabel = 'Dt. Vcto.'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MemCtRecParcCUPOA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object MemCtRecParcCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object MemCtRecParcCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object MemCtRecParcCUPODEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MemCtRecParcCUPON2DESC: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemCtRecParcCUPON2TOTITENS: TFloatField
      DisplayLabel = 'Produtos'
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemCtRecParcCUPON2ACRESC: TFloatField
      DisplayLabel = 'Acr'#233'sc.'
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemCtRecParcCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object MemCtRecParcCTRCN2VLR: TFloatField
      DisplayLabel = 'Valor Atual'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemCtRecParcBaixar: TBooleanField
      FieldName = 'Baixar'
    end
    object MemCtRecParcCTRCN2VLRJURO: TFloatField
      DisplayLabel = 'Vlr. Juro'
      FieldName = 'CTRCN2VLRJURO'
      DisplayFormat = '#,##0.00'
    end
    object MemCtRecParcCTRCN2VLRMULTA: TFloatField
      DisplayLabel = 'Vlr. Multa'
      FieldName = 'CTRCN2VLRMULTA'
      DisplayFormat = '#,##0.00'
    end
    object MemCtRecParcCTRCN2VLRDESC: TFloatField
      DisplayLabel = 'Vlr. Desc.'
      FieldName = 'CTRCN2VLRDESC'
      DisplayFormat = '#,##0.00'
    end
    object MemCtRecParcCTRCN2VLRTXCOBR: TFloatField
      DisplayLabel = 'Vlr. Taxa Cob.'
      FieldName = 'CTRCN2VLRTXCOBR'
      DisplayFormat = '#,##0.00'
    end
    object MemCtRecParcCTRCDULTREC: TDateField
      FieldName = 'CTRCDULTREC'
    end
    object MemCtRecParcValorOrigem: TFloatField
      DisplayLabel = 'Vlr. Origem'
      FieldName = 'ValorOrigem'
      DisplayFormat = '#,##0.00'
    end
  end
  object DSSQLCupomCons: TDataSource
    Left = 118
    Top = 272
  end
  object DSMemCtRecParc: TDataSource
    DataSet = MemCtRecParc
    Left = 33
    Top = 320
  end
  object SQLConfigVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGVENDA')
    Macros = <>
    Left = 294
    Top = 52
    object SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField
      FieldName = 'CFVEN2PERCLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCLIMCRED'
    end
    object SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField
      FieldName = 'CFVEN3MAXLIMCRED'
      Origin = 'DB.CONFIGVENDA.CFVEN3MAXLIMCRED'
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
    object SQLConfigVendaCFVEN3ALIQISSQN: TFloatField
      FieldName = 'CFVEN3ALIQISSQN'
      Origin = 'DB.CONFIGVENDA.CFVEN3ALIQISSQN'
    end
    object SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField
      FieldName = 'CFVECIMPLEGPEDVENF'
      Origin = 'DB.CONFIGVENDA.CFVECIMPLEGPEDVENF'
      FixedChar = True
      Size = 1
    end
    object SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField
      FieldName = 'CFVEN3PERCICMFRETE'
      Origin = 'DB.CONFIGVENDA.CFVEN3PERCICMFRETE'
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
    object SQLConfigVendaCFVEN2PERCCOFINS: TFloatField
      FieldName = 'CFVEN2PERCCOFINS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCCOFINS'
    end
    object SQLConfigVendaCFVEN2PERCENCARG: TFloatField
      FieldName = 'CFVEN2PERCENCARG'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCENCARG'
    end
    object SQLConfigVendaCFVEN2PERCICMS: TFloatField
      FieldName = 'CFVEN2PERCICMS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCICMS'
    end
    object SQLConfigVendaCFVEN2PERCPIS: TFloatField
      FieldName = 'CFVEN2PERCPIS'
      Origin = 'DB.CONFIGVENDA.CFVEN2PERCPIS'
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
    object SQLConfigVendaCFVEA20ORDIMPVEND: TStringField
      FieldName = 'CFVEA20ORDIMPVEND'
      Origin = 'DB.CONFIGVENDA.CFVEA20ORDIMPVEND'
      FixedChar = True
    end
  end
  object DatabaseTerm: TDatabase
    AliasName = 'Easy_Gestao'
    DatabaseName = 'DBTerm'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 32
    Top = 229
  end
  object SQLCupom: TRxQuery
    Tag = 3
    BeforePost = SQLCupomBeforePost
    OnNewRecord = SQLCupomNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CUPOM'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 392
    Top = 52
    object SQLCupomCUPOA13ID: TStringField
      Tag = 2
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOM.EMPRICOD'
    end
    object SQLCupomTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
    end
    object SQLCupomCUPOICOD: TIntegerField
      Tag = 1
      FieldName = 'CUPOICOD'
      Origin = 'DB.CUPOM.CUPOICOD'
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLCupomCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
    end
    object SQLCupomVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object SQLCupomCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.CUPOM.CONVICOD'
    end
    object SQLCupomCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
    object SQLCupomCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
    end
    object SQLCupomCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
    end
    object SQLCupomCUPON2TOTITENSRET: TFloatField
      FieldName = 'CUPON2TOTITENSRET'
      Origin = 'DB.CUPOM.CUPON2TOTITENSRET'
    end
    object SQLCupomCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
    end
    object SQLCupomCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLCupomCUPON2CONVTAXA: TFloatField
      FieldName = 'CUPON2CONVTAXA'
      Origin = 'DB.CUPOM.CUPON2CONVTAXA'
    end
    object SQLCupomCUPOINROORDCOMPRA: TIntegerField
      FieldName = 'CUPOINROORDCOMPRA'
      Origin = 'DB.CUPOM.CUPOINROORDCOMPRA'
    end
    object SQLCupomCUPOA13IDTROCA: TStringField
      FieldName = 'CUPOA13IDTROCA'
      Origin = 'DB.CUPOM.CUPOA13IDTROCA'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCUPON2VLRCOMISSAO: TFloatField
      FieldName = 'CUPON2VLRCOMISSAO'
      Origin = 'DB.CUPOM.CUPON2VLRCOMISSAO'
    end
    object SQLCupomCUPOA20CODANT: TStringField
      FieldName = 'CUPOA20CODANT'
      Origin = 'DB.CUPOM.CUPOA20CODANT'
      FixedChar = True
    end
    object SQLCupomCUPODCANC: TDateTimeField
      FieldName = 'CUPODCANC'
      Origin = 'DB.CUPOM.CUPODCANC'
    end
    object SQLCupomCUPON2JUROATRAS: TFloatField
      FieldName = 'CUPON2JUROATRAS'
      Origin = 'DB.CUPOM.CUPON2JUROATRAS'
    end
    object SQLCupomCUPON2MULTAATRAS: TFloatField
      FieldName = 'CUPON2MULTAATRAS'
      Origin = 'DB.CUPOM.CUPON2MULTAATRAS'
    end
    object SQLCupomCUPODPAGTOCONSIG: TDateTimeField
      FieldName = 'CUPODPAGTOCONSIG'
      Origin = 'DB.CUPOM.CUPODPAGTOCONSIG'
    end
    object SQLCupomPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CUPOM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCupomREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CUPOM.REGISTRO'
    end
    object SQLCupomCUPON3BONUSTROCA: TFloatField
      FieldName = 'CUPON3BONUSTROCA'
      Origin = 'DB.CUPOM.CUPON3BONUSTROCA'
    end
    object SQLCupomCUPODENTREGA: TDateTimeField
      FieldName = 'CUPODENTREGA'
      Origin = 'DB.CUPOM.CUPODENTREGA'
    end
    object SQLCupomTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
      Origin = 'DB.CUPOM.TPVDICOD'
    end
    object SQLCupomCUPON3CREDTAXA: TFloatField
      FieldName = 'CUPON3CREDTAXA'
      Origin = 'DB.CUPOM.CUPON3CREDTAXA'
    end
    object SQLCupomCUPOCCONSIG: TStringField
      FieldName = 'CUPOCCONSIG'
      Origin = 'DB.CUPOM.CUPOCCONSIG'
      FixedChar = True
      Size = 1
    end
    object SQLCupomCUPOV254OBS: TStringField
      FieldName = 'CUPOV254OBS'
      Origin = 'DB.CUPOM.CUPOV254OBS'
      Size = 254
    end
    object SQLCupomUSUAICODCANC: TIntegerField
      FieldName = 'USUAICODCANC'
      Origin = 'DB.CUPOM.USUAICODCANC'
    end
    object SQLCupomCUPOA30DATACARTAO: TStringField
      FieldName = 'CUPOA30DATACARTAO'
      Origin = 'DB.CUPOM.CUPOA30DATACARTAO'
      FixedChar = True
      Size = 30
    end
    object SQLCupomCUPOA30HORACARTAO: TStringField
      FieldName = 'CUPOA30HORACARTAO'
      Origin = 'DB.CUPOM.CUPOA30HORACARTAO'
      FixedChar = True
      Size = 30
    end
    object SQLCupomCUPOA30NSUPROVEDOR: TStringField
      FieldName = 'CUPOA30NSUPROVEDOR'
      Origin = 'DB.CUPOM.CUPOA30NSUPROVEDOR'
      FixedChar = True
      Size = 30
    end
    object SQLCupomCUPOA30NSUINSTITUICAO: TStringField
      FieldName = 'CUPOA30NSUINSTITUICAO'
      Origin = 'DB.CUPOM.CUPOA30NSUINSTITUICAO'
      FixedChar = True
      Size = 30
    end
    object SQLCupomCUPON2DESCITENS: TFloatField
      FieldName = 'CUPON2DESCITENS'
      Origin = 'DB.CUPOM.CUPON2DESCITENS'
    end
    object SQLCupomCATCA13ID: TStringField
      FieldName = 'CATCA13ID'
      Origin = 'DB.CUPOM.CATCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.CUPOM.OPESICOD'
    end
    object SQLCupomPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.CUPOM.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLCupomPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.CUPOM.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLCupomCUPON2BASEICMS: TFloatField
      FieldName = 'CUPON2BASEICMS'
      Origin = 'DB.CUPOM.CUPON2BASEICMS'
    end
    object SQLCupomCUPON2VLRICMS: TFloatField
      FieldName = 'CUPON2VLRICMS'
      Origin = 'DB.CUPOM.CUPON2VLRICMS'
    end
    object SQLCupomCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      Origin = 'DB.CUPOM.CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CUPOM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCupomAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CUPOM.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCUPODQUITACAO: TDateTimeField
      FieldName = 'CUPODQUITACAO'
      Origin = 'DB.CUPOM.CUPODQUITACAO'
    end
    object SQLCupomCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'DB.CUPOM.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLCupomCLIENTECNPJ: TStringField
      FieldName = 'CLIENTECNPJ'
      Origin = 'DB.CUPOM.CLIENTECNPJ'
      FixedChar = True
    end
    object SQLCupomCLIENTEENDE: TStringField
      FieldName = 'CLIENTEENDE'
      Origin = 'DB.CUPOM.CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object SQLCupomCLIENTECIDA: TStringField
      FieldName = 'CLIENTECIDA'
      Origin = 'DB.CUPOM.CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object SQLCupomCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      Origin = 'DB.CUPOM.CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object SQLCupomUSUAICODVENDA: TIntegerField
      FieldName = 'USUAICODVENDA'
      Origin = 'DB.CUPOM.USUAICODVENDA'
    end
    object SQLCupomCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CUPOM.CLDPICOD'
    end
    object SQLCupomCUPOA8PLACAVEIC: TStringField
      FieldName = 'CUPOA8PLACAVEIC'
      Origin = 'DB.CUPOM.CUPOA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLCupomORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Origin = 'DB.CUPOM.ORIGEMVENDA'
      Size = 5
    end
    object SQLCupomTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = 'DB.CUPOM.TROCO'
    end
    object SQLCupomDISPICOD: TIntegerField
      FieldName = 'DISPICOD'
      Origin = 'DB.CUPOM.DISPICOD'
    end
    object SQLCupomCUPOCLEVAR: TStringField
      FieldName = 'CUPOCLEVAR'
      Origin = 'DB.CUPOM.CUPOCLEVAR'
      FixedChar = True
      Size = 1
    end
    object SQLCupomMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
      Origin = 'DB.CUPOM.MTBYICOD'
    end
    object SQLCupomCONTAICOD: TIntegerField
      FieldName = 'CONTAICOD'
      Origin = 'DB.CUPOM.CONTAICOD'
    end
    object SQLCupomMESAICOD: TIntegerField
      FieldName = 'MESAICOD'
      Origin = 'DB.CUPOM.MESAICOD'
    end
    object SQLCupomCLIENTEBAIRRO: TStringField
      FieldName = 'CLIENTEBAIRRO'
      Origin = 'DB.CUPOM.CLIENTEBAIRRO'
      FixedChar = True
      Size = 30
    end
    object SQLCupomCUPOCBUSCA: TStringField
      FieldName = 'CUPOCBUSCA'
      Origin = 'DB.CUPOM.CUPOCBUSCA'
      FixedChar = True
      Size = 1
    end
    object SQLCupomCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Origin = 'DB.CUPOM.CHAVEACESSO'
      Size = 44
    end
    object SQLCupomPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'DB.CUPOM.PROTOCOLO'
      Size = 15
    end
  end
  object DSSQLCupom: TDataSource
    DataSet = SQLCupom
    Left = 480
    Top = 52
  end
  object SQLCupomItem: TRxQuery
    OnNewRecord = SQLCupomItemNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CUPOMITEM'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 392
    Top = 97
    object SQLCupomItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomItemCPITIPOS: TIntegerField
      FieldName = 'CPITIPOS'
      Origin = 'DB.CUPOMITEM.CPITIPOS'
    end
    object SQLCupomItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.CUPOMITEM.PRODICOD'
    end
    object SQLCupomItemCPITCSTATUS: TStringField
      FieldName = 'CPITCSTATUS'
      Origin = 'DB.CUPOMITEM.CPITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItemCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
      Origin = 'DB.CUPOMITEM.CPITN3QTD'
    end
    object SQLCupomItemCPITN3QTDTROCA: TFloatField
      FieldName = 'CPITN3QTDTROCA'
      Origin = 'DB.CUPOMITEM.CPITN3QTDTROCA'
    end
    object SQLCupomItemCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNIT'
    end
    object SQLCupomItemCPITN3VLRCUSTUNIT: TFloatField
      FieldName = 'CPITN3VLRCUSTUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRCUSTUNIT'
    end
    object SQLCupomItemCPITN2DESC: TFloatField
      FieldName = 'CPITN2DESC'
      Origin = 'DB.CUPOMITEM.CPITN2DESC'
    end
    object SQLCupomItemCPITN3VLRUNITLUCR: TFloatField
      FieldName = 'CPITN3VLRUNITLUCR'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNITLUCR'
    end
    object SQLCupomItemCOITN2ICMSALIQ: TFloatField
      FieldName = 'COITN2ICMSALIQ'
      Origin = 'DB.CUPOMITEM.COITN2ICMSALIQ'
    end
    object SQLCupomItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOMITEM.VENDICOD'
    end
    object SQLCupomItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CUPOMITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CUPOMITEM.REGISTRO'
    end
    object SQLCupomItemCPITN2VLRDESCSOBTOT: TFloatField
      FieldName = 'CPITN2VLRDESCSOBTOT'
      Origin = 'DB.CUPOMITEM.CPITN2VLRDESCSOBTOT'
    end
    object SQLCupomItemCPITN2BASEICMS: TFloatField
      FieldName = 'CPITN2BASEICMS'
      Origin = 'DB.CUPOMITEM.CPITN2BASEICMS'
    end
    object SQLCupomItemCPITN2VLRICMS: TFloatField
      FieldName = 'CPITN2VLRICMS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRICMS'
    end
    object SQLCupomItemCPITN2VLRQDEVERIAVENDER: TFloatField
      FieldName = 'CPITN2VLRQDEVERIAVENDER'
      Origin = 'DB.CUPOMITEM.CPITN2VLRQDEVERIAVENDER'
    end
    object SQLCupomItemBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.CUPOMITEM.BOMBICOD'
    end
    object SQLCupomItemCPITTOBS: TStringField
      FieldName = 'CPITTOBS'
      Origin = 'DB.CUPOMITEM.CPITTOBS'
      Size = 200
    end
    object SQLCupomItemEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOMITEM.EMPRICOD'
    end
    object SQLCupomItemCPITN2IMPOSTOMED: TFloatField
      FieldName = 'CPITN2IMPOSTOMED'
      Origin = 'DB.CUPOMITEM.CPITN2IMPOSTOMED'
    end
    object SQLCupomItemBORDA01: TStringField
      FieldName = 'BORDA01'
      Origin = 'DB.CUPOMITEM.BORDA01'
      Size = 60
    end
    object SQLCupomItemBORDA02: TStringField
      FieldName = 'BORDA02'
      Origin = 'DB.CUPOMITEM.BORDA02'
      Size = 60
    end
    object SQLCupomItemBORDA03: TStringField
      FieldName = 'BORDA03'
      Origin = 'DB.CUPOMITEM.BORDA03'
      Size = 60
    end
    object SQLCupomItemSABOR01: TStringField
      FieldName = 'SABOR01'
      Origin = 'DB.CUPOMITEM.SABOR01'
      Size = 60
    end
    object SQLCupomItemSABOR02: TStringField
      FieldName = 'SABOR02'
      Origin = 'DB.CUPOMITEM.SABOR02'
      Size = 60
    end
    object SQLCupomItemSABOR03: TStringField
      FieldName = 'SABOR03'
      Origin = 'DB.CUPOMITEM.SABOR03'
      Size = 60
    end
    object SQLCupomItemSABOR04: TStringField
      FieldName = 'SABOR04'
      Origin = 'DB.CUPOMITEM.SABOR04'
      Size = 60
    end
    object SQLCupomItemSABOR05: TStringField
      FieldName = 'SABOR05'
      Origin = 'DB.CUPOMITEM.SABOR05'
      Size = 60
    end
    object SQLCupomItemSABOR06: TStringField
      FieldName = 'SABOR06'
      Origin = 'DB.CUPOMITEM.SABOR06'
      Size = 60
    end
  end
  object DSSQLCupomItem: TDataSource
    DataSet = SQLCupomItem
    Left = 480
    Top = 97
  end
  object SQLCupomNumerario: TRxQuery
    OnNewRecord = SQLCupomNumerarioNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CUPOMNUMERARIO'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 392
    Top = 141
    object SQLCupomNumerarioCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CUPOMNUMERARIO.NUMEICOD'
    end
    object SQLCupomNumerarioCONMCSTATUS: TStringField
      FieldName = 'CONMCSTATUS'
      Origin = 'DB.CUPOMNUMERARIO.CONMCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomNumerarioCPNMN2VLR: TFloatField
      FieldName = 'CPNMN2VLR'
      Origin = 'DB.CUPOMNUMERARIO.CPNMN2VLR'
    end
    object SQLCupomNumerarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CUPOMNUMERARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCupomNumerarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CUPOMNUMERARIO.REGISTRO'
    end
    object SQLCupomNumerarioCPNMCAUTENT: TStringField
      FieldName = 'CPNMCAUTENT'
      Origin = 'DB.CUPOMNUMERARIO.CPNMCAUTENT'
      FixedChar = True
      Size = 1
    end
    object SQLCupomNumerarioCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CUPOMNUMERARIO.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLCupomNumerarioEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOMNUMERARIO.EMPRICOD'
    end
  end
  object DSSQLCupomNumerario: TDataSource
    DataSet = SQLCupomNumerario
    Left = 480
    Top = 141
  end
  object SQLContasReceber: TRxQuery
    BeforePost = SQLContasReceberBeforePost
    OnNewRecord = SQLContasReceberNewRecord
    OnPostError = SQLContasReceberPostError
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CONTASRECEBER'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 392
    Top = 185
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLContasReceberFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCTEMREGRECEBER: TStringField
      FieldName = 'CTRCCTEMREGRECEBER'
      Origin = 'DB.CONTASRECEBER.CTRCCTEMREGRECEBER'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLContasReceberCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Origin = 'DB.CONTASRECEBER.CONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCA13CTRCAIDCHQ: TStringField
      FieldName = 'CTRCA13CTRCAIDCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA13CTRCAIDCHQ'
      Size = 13
    end
    object SQLContasReceberCTRCCEMITIDOBOLETO: TStringField
      FieldName = 'CTRCCEMITIDOBOLETO'
      Origin = 'DB.CONTASRECEBER.CTRCCEMITIDOBOLETO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCA2MESCOMP: TStringField
      FieldName = 'CTRCA2MESCOMP'
      Origin = 'DB.CONTASRECEBER.CTRCA2MESCOMP'
      FixedChar = True
      Size = 2
    end
    object SQLContasReceberCTRCA4ANOCOMP: TStringField
      FieldName = 'CTRCA4ANOCOMP'
      Origin = 'DB.CONTASRECEBER.CTRCA4ANOCOMP'
      FixedChar = True
      Size = 4
    end
    object SQLContasReceberCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CONTASRECEBER.CLDPICOD'
    end
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 480
    Top = 185
  end
  object SQLProxCodCTRC: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 118
    Top = 97
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTOSALDO')
    Macros = <>
    Left = 294
    Top = 229
    object SQLProdutoSaldoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoPSLDN3QTDE: TFloatField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDQTDE'
    end
  end
  object SQLProdutoFilho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLProduto
    SQL.Strings = (
      'select * from PRODUTOCOMPOSICAO'
      'where PRODICOD = :PRODICOD')
    Macros = <>
    Left = 204
    Top = 229
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 146
    Top = 229
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO')
    Macros = <>
    Left = 118
    Top = 229
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
    object SQLEmpresaEMPRCLUCROREAL: TStringField
      FieldName = 'EMPRCLUCROREAL'
      Origin = 'DB.EMPRESA.EMPRCLUCROREAL'
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
    object SQLEmpresaEMPRIFORMAEMISDANFE: TIntegerField
      FieldName = 'EMPRIFORMAEMISDANFE'
      Origin = 'DB.EMPRESA.EMPRIFORMAEMISDANFE'
    end
    object SQLEmpresaEMPRIFORMAEMISNFE: TIntegerField
      FieldName = 'EMPRIFORMAEMISNFE'
      Origin = 'DB.EMPRESA.EMPRIFORMAEMISNFE'
    end
    object SQLEmpresaEMPRA100CAMINHOLOGO: TStringField
      FieldName = 'EMPRA100CAMINHOLOGO'
      Origin = 'DB.EMPRESA.EMPRA100CAMINHOLOGO'
      Size = 100
    end
    object SQLEmpresaEMPRA100CAMINHOXML: TStringField
      FieldName = 'EMPRA100CAMINHOXML'
      Origin = 'DB.EMPRESA.EMPRA100CAMINHOXML'
      Size = 100
    end
    object SQLEmpresaEMPRA100CAMINHODANFES: TStringField
      FieldName = 'EMPRA100CAMINHODANFES'
      Origin = 'DB.EMPRESA.EMPRA100CAMINHODANFES'
      Size = 100
    end
    object SQLEmpresaEMPRA2WSUF: TStringField
      FieldName = 'EMPRA2WSUF'
      Origin = 'DB.EMPRESA.EMPRA2WSUF'
      Size = 2
    end
    object SQLEmpresaEMPRIWSAMBIENTE: TIntegerField
      FieldName = 'EMPRIWSAMBIENTE'
      Origin = 'DB.EMPRESA.EMPRIWSAMBIENTE'
    end
    object SQLEmpresaEMPRA1VISUALIZAMSG: TStringField
      FieldName = 'EMPRA1VISUALIZAMSG'
      Origin = 'DB.EMPRESA.EMPRA1VISUALIZAMSG'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA100PROXYHOST: TStringField
      FieldName = 'EMPRA100PROXYHOST'
      Origin = 'DB.EMPRESA.EMPRA100PROXYHOST'
      Size = 100
    end
    object SQLEmpresaEMPRIPROXYPORTA: TIntegerField
      FieldName = 'EMPRIPROXYPORTA'
      Origin = 'DB.EMPRESA.EMPRIPROXYPORTA'
    end
    object SQLEmpresaEMPRA50PROXYUSUARIO: TStringField
      FieldName = 'EMPRA50PROXYUSUARIO'
      Origin = 'DB.EMPRESA.EMPRA50PROXYUSUARIO'
      Size = 50
    end
    object SQLEmpresaEMPRA50PROXYSENHA: TStringField
      FieldName = 'EMPRA50PROXYSENHA'
      Origin = 'DB.EMPRESA.EMPRA50PROXYSENHA'
      Size = 50
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
    object SQLEmpresaIDTOKEN: TStringField
      FieldName = 'IDTOKEN'
      Origin = 'DB.EMPRESA.IDTOKEN'
      Size = 30
    end
    object SQLEmpresaTOKEN: TStringField
      FieldName = 'TOKEN'
      Origin = 'DB.EMPRESA.TOKEN'
      Size = 60
    end
    object SQLEmpresaEMPRA75EMAILUSUARIO: TStringField
      FieldName = 'EMPRA75EMAILUSUARIO'
      Origin = 'DB.EMPRESA.EMPRA75EMAILUSUARIO'
      Size = 75
    end
    object SQLEmpresaVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'DB.EMPRESA.VERSAO'
      FixedChar = True
      Size = 1
    end
  end
  object TblTicketPreVendaCab: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaCab.DB'
    Left = 392
    Top = 229
    object TblTicketPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TblTicketPreVendaCabDataEmissao: TStringField
      FieldName = 'DataEmissao'
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
    object TblTicketPreVendaCabFoneClienteVenda: TStringField
      FieldName = 'FoneClienteVenda'
      Size = 15
    end
    object TblTicketPreVendaCabUsuarioVendaSTR: TStringField
      FieldName = 'UsuarioVendaSTR'
    end
    object TblTicketPreVendaCabClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
    object TblTicketPreVendaCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TblTicketPreVendaCabMesaCodigo: TIntegerField
      FieldName = 'MesaCodigo'
    end
    object TblTicketPreVendaCabContaCodigo: TIntegerField
      FieldName = 'ContaCodigo'
    end
    object TblTicketPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
    end
    object TblTicketPreVendaCabDisplayNumero: TIntegerField
      FieldName = 'DisplayNumero'
    end
    object TblTicketPreVendaCabBusca: TStringField
      FieldName = 'Busca'
      Size = 1
    end
    object TblTicketPreVendaCabLevarCasa: TStringField
      FieldName = 'LevarCasa'
      Size = 1
    end
    object TblTicketPreVendaCabBairroClienteVenda: TStringField
      FieldName = 'BairroClienteVenda'
      Size = 60
    end
    object TblTicketPreVendaCabMotoboy: TStringField
      FieldName = 'Motoboy'
      Size = 30
    end
    object TblTicketPreVendaCabTaxaTele: TFloatField
      FieldName = 'TaxaTele'
    end
    object TblTicketPreVendaCabSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object TblTicketPreVendaCabSeq_Dia: TIntegerField
      FieldName = 'Seq_Dia'
    end
  end
  object TblTicketPreVendaItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaItem.DB'
    Left = 420
    Top = 229
    object TblTicketPreVendaItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblTicketPreVendaItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TblTicketPreVendaItemComplemento: TStringField
      FieldName = 'Complemento'
      Size = 200
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
    object TblTicketPreVendaItemTroca: TStringField
      FieldName = 'Troca'
      Size = 1
    end
    object TblTicketPreVendaItemImpCozinha: TStringField
      FieldName = 'ImpCozinha'
      Size = 1
    end
    object TblTicketPreVendaItemImpVale: TStringField
      FieldName = 'ImpVale'
      Size = 1
    end
    object TblTicketPreVendaItemPRODA30COZINHA: TStringField
      FieldName = 'PRODA30COZINHA'
      Size = 30
    end
    object TblTicketPreVendaItemBORDA01: TStringField
      FieldName = 'BORDA01'
      Origin = 'DB.PREVENDAITEM.BORDA01'
      Size = 60
    end
    object TblTicketPreVendaItemBORDA02: TStringField
      FieldName = 'BORDA02'
      Origin = 'DB.PREVENDAITEM.BORDA02'
      Size = 60
    end
    object TblTicketPreVendaItemBORDA03: TStringField
      FieldName = 'BORDA03'
      Origin = 'DB.PREVENDAITEM.BORDA03'
      Size = 60
    end
    object TblTicketPreVendaItemSABOR01: TStringField
      FieldName = 'SABOR01'
      Origin = 'DB.PREVENDAITEM.SABOR01'
      Size = 60
    end
    object TblTicketPreVendaItemSABOR02: TStringField
      FieldName = 'SABOR02'
      Origin = 'DB.PREVENDAITEM.SABOR02'
      Size = 60
    end
    object TblTicketPreVendaItemSABOR03: TStringField
      FieldName = 'SABOR03'
      Origin = 'DB.PREVENDAITEM.SABOR03'
      Size = 60
    end
    object TblTicketPreVendaItemSABOR04: TStringField
      FieldName = 'SABOR04'
      Origin = 'DB.PREVENDAITEM.SABOR04'
      Size = 60
    end
    object TblTicketPreVendaItemSABOR05: TStringField
      FieldName = 'SABOR05'
      Origin = 'DB.PREVENDAITEM.SABOR05'
      Size = 60
    end
    object TblTicketPreVendaItemSABOR06: TStringField
      FieldName = 'SABOR06'
      Origin = 'DB.PREVENDAITEM.SABOR06'
      Size = 60
    end
  end
  object SQLCupomIt: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CUPOMITEM'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 561
    Top = 229
    object SQLCupomItCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomItCPITIPOS: TIntegerField
      FieldName = 'CPITIPOS'
      Origin = 'DB.CUPOMITEM.CPITIPOS'
    end
    object SQLCupomItPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.CUPOMITEM.PRODICOD'
    end
    object SQLCupomItCPITCSTATUS: TStringField
      FieldName = 'CPITCSTATUS'
      Origin = 'DB.CUPOMITEM.CPITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
      Origin = 'DB.CUPOMITEM.CPITN3QTD'
    end
    object SQLCupomItCPITN3QTDTROCA: TFloatField
      FieldName = 'CPITN3QTDTROCA'
      Origin = 'DB.CUPOMITEM.CPITN3QTDTROCA'
    end
    object SQLCupomItCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNIT'
    end
    object SQLCupomItCPITN2DESC: TFloatField
      FieldName = 'CPITN2DESC'
      Origin = 'DB.CUPOMITEM.CPITN2DESC'
    end
    object SQLCupomItVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOMITEM.VENDICOD'
    end
    object SQLCupomItCPITTOBS: TStringField
      FieldName = 'CPITTOBS'
      Origin = 'DB.CUPOMITEM.CPITTOBS'
      Size = 200
    end
    object SQLCupomItBORDA01: TStringField
      FieldName = 'BORDA01'
      Origin = 'DB.CUPOMITEM.BORDA01'
      Size = 60
    end
    object SQLCupomItBORDA02: TStringField
      FieldName = 'BORDA02'
      Origin = 'DB.CUPOMITEM.BORDA02'
      Size = 60
    end
    object SQLCupomItBORDA03: TStringField
      FieldName = 'BORDA03'
      Origin = 'DB.CUPOMITEM.BORDA03'
      Size = 60
    end
    object SQLCupomItSABOR01: TStringField
      FieldName = 'SABOR01'
      Origin = 'DB.CUPOMITEM.SABOR01'
      Size = 60
    end
    object SQLCupomItSABOR02: TStringField
      FieldName = 'SABOR02'
      Origin = 'DB.CUPOMITEM.SABOR02'
      Size = 60
    end
    object SQLCupomItSABOR03: TStringField
      FieldName = 'SABOR03'
      Origin = 'DB.CUPOMITEM.SABOR03'
      Size = 60
    end
    object SQLCupomItSABOR04: TStringField
      FieldName = 'SABOR04'
      Origin = 'DB.CUPOMITEM.SABOR04'
      Size = 60
    end
    object SQLCupomItSABOR05: TStringField
      FieldName = 'SABOR05'
      Origin = 'DB.CUPOMITEM.SABOR05'
      Size = 60
    end
    object SQLCupomItSABOR06: TStringField
      FieldName = 'SABOR06'
      Origin = 'DB.CUPOMITEM.SABOR06'
      Size = 60
    end
  end
  object SQLCup: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CUPOM'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 533
    Top = 229
  end
  object SQLPreVD: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDA'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 392
    Top = 272
  end
  object SQLPreVDIt: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDAITEM'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 420
    Top = 272
  end
  object SQLPreVendaItem2: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PREVENDAITEM'
      'where PRVDICOD is null')
    Macros = <>
    Left = 204
    Top = 272
    object SQLPreVendaItem2TERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object SQLPreVendaItem2PRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object SQLPreVendaItem2PVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object SQLPreVendaItem2PRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object SQLPreVendaItem2PVITN3QTD: TFloatField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
    end
    object SQLPreVendaItem2PVITN3VLRUNIT: TFloatField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
    end
    object SQLPreVendaItem2PVITN3VLRCUSTUNIT: TFloatField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
    end
    object SQLPreVendaItem2PVITN2DESC: TFloatField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
    end
    object SQLPreVendaItem2VENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPreVendaItem2PVITN3VLRUNITLUCR: TFloatField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
    end
    object SQLPreVendaItem2PVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaItem2PVITN2ICMSALIQ: TFloatField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
    end
    object SQLPreVendaItem2PRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaItem2PVITN3QTDTROCA: TFloatField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
    end
    object SQLPreVendaItem2PVITTOBS: TStringField
      FieldName = 'PVITTOBS'
      Origin = 'DB.PREVENDAITEM.PVITTOBS'
      Size = 200
    end
    object SQLPreVendaItem2SITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'DB.PREVENDAITEM.SITUACAO'
    end
    object SQLPreVendaItem2DATA_PEDIDO: TIntegerField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DB.PREVENDAITEM.DATA_PEDIDO'
    end
    object SQLPreVendaItem2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DB.PREVENDAITEM.DESCRICAO'
      Size = 200
    end
    object SQLPreVendaItem2COZINHA: TStringField
      FieldName = 'COZINHA'
      Origin = 'DB.PREVENDAITEM.COZINHA'
    end
    object SQLPreVendaItem2BORDA01: TStringField
      FieldName = 'BORDA01'
      Origin = 'DB.PREVENDAITEM.BORDA01'
      Size = 60
    end
    object SQLPreVendaItem2BORDA02: TStringField
      FieldName = 'BORDA02'
      Origin = 'DB.PREVENDAITEM.BORDA02'
      Size = 60
    end
    object SQLPreVendaItem2BORDA03: TStringField
      FieldName = 'BORDA03'
      Origin = 'DB.PREVENDAITEM.BORDA03'
      Size = 60
    end
    object SQLPreVendaItem2SABOR01: TStringField
      FieldName = 'SABOR01'
      Origin = 'DB.PREVENDAITEM.SABOR01'
      Size = 60
    end
    object SQLPreVendaItem2SABOR02: TStringField
      FieldName = 'SABOR02'
      Origin = 'DB.PREVENDAITEM.SABOR02'
      Size = 60
    end
    object SQLPreVendaItem2SABOR03: TStringField
      FieldName = 'SABOR03'
      Origin = 'DB.PREVENDAITEM.SABOR03'
      Size = 60
    end
    object SQLPreVendaItem2SABOR04: TStringField
      FieldName = 'SABOR04'
      Origin = 'DB.PREVENDAITEM.SABOR04'
      Size = 60
    end
    object SQLPreVendaItem2SABOR05: TStringField
      FieldName = 'SABOR05'
      Origin = 'DB.PREVENDAITEM.SABOR05'
      Size = 60
    end
    object SQLPreVendaItem2SABOR06: TStringField
      FieldName = 'SABOR06'
      Origin = 'DB.PREVENDAITEM.SABOR06'
      Size = 60
    end
  end
  object SQLCliDadosCompra: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from CLIENTE'
      'where %Filtro')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 294
    Top = 141
    object SQLCliDadosCompraCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCliDadosCompraCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object SQLCliDadosCompraCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object SQLCliDadosCompraMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
  end
  object SQLPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TABELAPRECOPRODUTO'
      'Where PRODICOD=:PRODICOD AND TPRCICOD=:TPRCICOD')
    Macros = <>
    Left = 204
    Top = 141
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
  object TblCupomCab: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'CupomCab.db'
    Left = 392
    Top = 381
    object TblCupomCabCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Size = 13
    end
    object TblCupomCabEmpresaEmit: TStringField
      FieldName = 'EmpresaEmit'
      Size = 60
    end
    object TblCupomCabEmpresaEmit_Ender: TStringField
      FieldName = 'EmpresaEmit_Ender'
      Size = 60
    end
    object TblCupomCabEmpresaEmit_Bairro: TStringField
      FieldName = 'EmpresaEmit_Bairro'
      Size = 60
    end
    object TblCupomCabEmpresaEmit_Cidade: TStringField
      FieldName = 'EmpresaEmit_Cidade'
      Size = 60
    end
    object TblCupomCabEmpresaEmit_Fone: TStringField
      FieldName = 'EmpresaEmit_Fone'
      Size = 15
    end
    object TblCupomCabCliente_Codigo: TStringField
      FieldName = 'Cliente_Codigo'
      Size = 13
    end
    object TblCupomCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblCupomCabCliente_Ender: TStringField
      FieldName = 'Cliente_Ender'
      Size = 60
    end
    object TblCupomCabCliente_Bairro: TStringField
      FieldName = 'Cliente_Bairro'
      Size = 60
    end
    object TblCupomCabCliente_Cidade: TStringField
      FieldName = 'Cliente_Cidade'
      Size = 60
    end
    object TblCupomCabCliente_CPF: TStringField
      FieldName = 'Cliente_CPF'
      Size = 15
    end
    object TblCupomCabCliente_Fone: TStringField
      FieldName = 'Cliente_Fone'
      Size = 15
    end
    object TblCupomCabQtde_Devolvida: TIntegerField
      FieldName = 'Qtde_Devolvida'
    end
    object TblCupomCabQtde_Retirada: TIntegerField
      FieldName = 'Qtde_Retirada'
    end
    object TblCupomCabCondPagto: TStringField
      FieldName = 'CondPagto'
      Size = 60
    end
    object TblCupomCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblCupomCabDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object TblCupomCabObservacoes: TStringField
      FieldName = 'Observacoes'
      Size = 254
    end
    object TblCupomCabTotalBruto: TFloatField
      FieldName = 'TotalBruto'
    end
    object TblCupomCabEncargosFin: TFloatField
      FieldName = 'EncargosFin'
    end
    object TblCupomCabDescRetorno: TFloatField
      FieldName = 'DescRetorno'
    end
    object TblCupomCabSaldoAnterior: TFloatField
      FieldName = 'SaldoAnterior'
    end
    object TblCupomCabTotalDescontos: TFloatField
      FieldName = 'TotalDescontos'
    end
    object TblCupomCabTotalLiquido: TFloatField
      FieldName = 'TotalLiquido'
    end
    object TblCupomCabCreditoTroco: TFloatField
      FieldName = 'CreditoTroco'
    end
    object TblCupomCabTotalPagar: TFloatField
      FieldName = 'TotalPagar'
    end
    object TblCupomCabConsignada: TStringField
      FieldName = 'Consignada'
      Size = 1
    end
    object TblCupomCabVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
  end
  object TblCupomItemVend: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'CupomItemVend.db'
    Left = 421
    Top = 380
    object TblCupomItemVendCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Size = 13
    end
    object TblCupomItemVendItem: TIntegerField
      FieldName = 'Item'
    end
    object TblCupomItemVendCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblCupomItemVendDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TblCupomItemVendQuant: TFloatField
      FieldName = 'Quant'
    end
    object TblCupomItemVendValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TblCupomItemVendCodigoAntigo: TStringField
      FieldName = 'CodigoAntigo'
      Size = 15
    end
  end
  object TblCupomItemRet: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'CupomItemRet.db'
    Left = 450
    Top = 380
    object TblCupomItemRetCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Size = 13
    end
    object TblCupomItemRetItem: TIntegerField
      FieldName = 'Item'
    end
    object TblCupomItemRetCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblCupomItemRetDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TblCupomItemRetQuant: TFloatField
      FieldName = 'Quant'
    end
    object TblCupomItemRetValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TblCupomItemRetCodigoAntigo: TStringField
      FieldName = 'CodigoAntigo'
      Size = 15
    end
  end
  object TblCupomFinan: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'CupomFinanc.db'
    Left = 479
    Top = 380
    object TblCupomFinanCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Size = 13
    end
    object TblCupomFinanDataVenc: TDateField
      FieldName = 'DataVenc'
    end
    object TblCupomFinanValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object SQLProdutoOrdemPesquisa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ProdutoOrdemPesquisa'
      'order by PDOPIORDEM')
    Macros = <>
    Left = 294
    Top = 185
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
  object SQLPreVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  P.TERMICOD,'
      '  P.PRVDICOD,'
      '  P.CONVICOD,'
      '  P.CLIEA13ID,'
      '  P.PLRCICOD,'
      '  P.PRVDCMARCADO,'
      '  P.PRVDN2TOTITENS,'
      '  P.PRVDN2CONVTAXA,'
      '  P.PRVDN2DESC,'
      '  P.VENDICOD,'
      '  P.PRVDCIMPORT,'
      '  P.PDVDDHVENDA,'
      '  P.ORIGEMVENDA,'
      '  P.CLIENTENOME,'
      '  P.CLIENTECNPJ,'
      '  P.CLIENTEENDE,'
      '  P.CLIENTECIDA,'
      '  P.CLIENTEFONE,'
      '  P.CLIENTEOBS,'
      '  P.PDVCPreConclu,'
      '  P.CLDPICOD,'
      '  P.MESAICOD,'
      '  P.CONTAICOD,'
      '  P.DISPICOD,'
      '  P.CUPOCLEVAR,'
      '  P.CUPOCBUSCA,'
      '  P.MTBYICOD,'
      '  P.SEQUENCIAL,'
      '  P.EMPRICOD,'
      '  P.TOTAL_ITENS,'
      '  C.CLIEA60RAZAOSOC,'
      '  C.CLIEA60ENDRES,'
      '  C.CLIEA60BAIRES,'
      '  C.CLIEA60CIDRES,'
      '  C.CLIEA15FONE1,'
      '  C.CLIETOBS1,'
      '  C.CLIEDCAD,'
      '  C.CLIEDNASC,'
      '  C.CLIEDPRICOMPRA,'
      '  C.CLIEDULTCOMPRA,'
      '  C.TPCLICOD,'
      '  C.MTBLICOD,'
      '  C.CLIEN2RENDA,'
      '  C.CLIEN2CONJUGERENDA,'
      '  C.CLIEN2LIMITECRED,'
      '  PL.PLRCA60DESCR,'
      '  V.VENDA60NOME'
      'from'
      '  PREVENDA P, CLIENTE C, PLANORECEBIMENTO PL, VENDEDOR V'
      'where'
      '  P.CLIEA13ID = C.CLIEA13ID and'
      '  P.PLRCICOD = PL.PLRCICOD and'
      '  P.VENDICOD = V.VENDICOD and'
      '  %MFiltro and'
      '  %MFiltro2 and'
      '  %MFiltro3 and'
      '  %MFiltro4'
      '%Ordem')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro2'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro3'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro4'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Ordem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 204
    Top = 316
    object SQLPreVendaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDA.TERMICOD'
    end
    object SQLPreVendaPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDA.PRVDICOD'
    end
    object SQLPreVendaCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.PREVENDA.CONVICOD'
    end
    object SQLPreVendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLPreVendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPreVendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PREVENDA.PLRCICOD'
    end
    object SQLPreVendaPRVDCMARCADO: TStringField
      FieldName = 'PRVDCMARCADO'
      Origin = 'DB.PREVENDA.PRVDCMARCADO'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaPRVDN2TOTITENS: TFloatField
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENS'
    end
    object SQLPreVendaPRVDN2CONVTAXA: TFloatField
      FieldName = 'PRVDN2CONVTAXA'
    end
    object SQLPreVendaPRVDN2DESC: TFloatField
      FieldName = 'PRVDN2DESC'
      Origin = 'DB.PREVENDA.PRVDN2DESC'
    end
    object SQLPreVendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDA.VENDICOD'
    end
    object SQLPreVendaPRVDCIMPORT: TStringField
      FieldName = 'PRVDCIMPORT'
      Origin = 'DB.PREVENDA.PRVDCIMPORT'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLPreVendaCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object SQLPreVendaCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object SQLPreVendaCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object SQLPreVendaTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
    end
    object SQLPreVendaMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLPreVendaPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'DB.PREVENDA.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIENTEENDE: TStringField
      FieldName = 'CLIENTEENDE'
      Origin = 'DB.PREVENDA.CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIENTECIDA: TStringField
      FieldName = 'CLIENTECIDA'
      Origin = 'DB.PREVENDA.CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object SQLPreVendaCLIENTEOBS: TStringField
      FieldName = 'CLIENTEOBS'
      Origin = 'DB.PREVENDA.CLIENTEOBS'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaCLIENTECNPJ: TStringField
      FieldName = 'CLIENTECNPJ'
      Origin = 'DB.PREVENDA.CLIENTECNPJ'
      FixedChar = True
    end
    object SQLPreVendaCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object SQLPreVendaCLIEN2RENDA: TFloatField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
    end
    object SQLPreVendaCLIEN2CONJUGERENDA: TFloatField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
    end
    object SQLPreVendaCLIEN2LIMITECRED: TFloatField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
    end
    object SQLPreVendaPDVDDHVENDA: TDateTimeField
      FieldName = 'PDVDDHVENDA'
      Origin = 'DB.PREVENDA.PDVDDHVENDA'
    end
    object SQLPreVendaPDVCPRECONCLU: TStringField
      FieldName = 'PDVCPRECONCLU'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object SQLPreVendaCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
    end
    object SQLPreVendaORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Size = 5
    end
    object SQLPreVendaMESAICOD: TIntegerField
      FieldName = 'MESAICOD'
    end
    object SQLPreVendaCONTAICOD: TIntegerField
      FieldName = 'CONTAICOD'
    end
    object SQLPreVendaCLIETOBS1: TBlobField
      FieldName = 'CLIETOBS1'
      Size = 1
    end
    object SQLPreVendaDISPICOD: TIntegerField
      FieldName = 'DISPICOD'
    end
    object SQLPreVendaCUPOCBUSCA: TStringField
      FieldName = 'CUPOCBUSCA'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaCUPOCLEVAR: TStringField
      FieldName = 'CUPOCLEVAR'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
    end
    object SQLPreVendaSEQUENCIAL: TIntegerField
      FieldName = 'SEQUENCIAL'
    end
    object SQLPreVendaTOTAL_ITENS: TIntegerField
      FieldName = 'TOTAL_ITENS'
    end
  end
  object SQLPreVendaItem1: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDAITEM where (%MFiltro)'
      'order by PVITIPOS asc')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 234
    Top = 316
    object SQLPreVendaItem1TERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object SQLPreVendaItem1PRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object SQLPreVendaItem1PVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object SQLPreVendaItem1PRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object SQLPreVendaItem1PVITN3QTD: TFloatField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
    end
    object SQLPreVendaItem1PVITN3VLRUNIT: TFloatField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
    end
    object SQLPreVendaItem1PVITN3VLRCUSTUNIT: TFloatField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
    end
    object SQLPreVendaItem1PVITN2DESC: TFloatField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
    end
    object SQLPreVendaItem1VENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPreVendaItem1PVITN3VLRUNITLUCR: TFloatField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
    end
    object SQLPreVendaItem1PVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaItem1PVITN2ICMSALIQ: TFloatField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
    end
    object SQLPreVendaItem1PRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaItem1PVITN3QTDTROCA: TFloatField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
    end
    object SQLPreVendaItem1PVITTOBS: TStringField
      FieldName = 'PVITTOBS'
      Origin = 'DB.PREVENDAITEM.PVITTOBS'
      Size = 200
    end
    object SQLPreVendaItem1BORDA01: TStringField
      FieldName = 'BORDA01'
      Origin = 'DB.PREVENDAITEM.BORDA01'
      Size = 60
    end
    object SQLPreVendaItem1BORDA02: TStringField
      FieldName = 'BORDA02'
      Origin = 'DB.PREVENDAITEM.BORDA02'
      Size = 60
    end
    object SQLPreVendaItem1BORDA03: TStringField
      FieldName = 'BORDA03'
      Origin = 'DB.PREVENDAITEM.BORDA03'
      Size = 60
    end
    object SQLPreVendaItem1SABOR01: TStringField
      FieldName = 'SABOR01'
      Origin = 'DB.PREVENDAITEM.SABOR01'
      Size = 60
    end
    object SQLPreVendaItem1SABOR02: TStringField
      FieldName = 'SABOR02'
      Origin = 'DB.PREVENDAITEM.SABOR02'
      Size = 60
    end
    object SQLPreVendaItem1SABOR03: TStringField
      FieldName = 'SABOR03'
      Origin = 'DB.PREVENDAITEM.SABOR03'
      Size = 60
    end
    object SQLPreVendaItem1SABOR04: TStringField
      FieldName = 'SABOR04'
      Origin = 'DB.PREVENDAITEM.SABOR04'
      Size = 60
    end
    object SQLPreVendaItem1SABOR05: TStringField
      FieldName = 'SABOR05'
      Origin = 'DB.PREVENDAITEM.SABOR05'
      Size = 60
    end
    object SQLPreVendaItem1SABOR06: TStringField
      FieldName = 'SABOR06'
      Origin = 'DB.PREVENDAITEM.SABOR06'
      Size = 60
    end
  end
  object SQLPreVendaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDANUMERARIO where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 264
    Top = 316
    object SQLPreVendaNumerarioTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDANUMERARIO.TERMICOD'
    end
    object SQLPreVendaNumerarioPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDANUMERARIO.PRVDICOD'
    end
    object SQLPreVendaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PREVENDANUMERARIO.NUMEICOD'
    end
    object SQLPreVendaNumerarioPVNUN2VLR: TFloatField
      FieldName = 'PVNUN2VLR'
      Origin = 'DB.PREVENDANUMERARIO.PVNUN2VLR'
    end
  end
  object SQLPreVendaContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDACONTASRECEBER where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 294
    Top = 316
    object SQLPreVendaContasReceberPVCRICOD: TIntegerField
      FieldName = 'PVCRICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRICOD'
    end
    object SQLPreVendaContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.TERMICOD'
    end
    object SQLPreVendaContasReceberPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.PRVDICOD'
    end
    object SQLPreVendaContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.NUMEICOD'
    end
    object SQLPreVendaContasReceberPVCRINROPARC: TIntegerField
      FieldName = 'PVCRINROPARC'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRINROPARC'
    end
    object SQLPreVendaContasReceberPVCRDVENC: TDateTimeField
      FieldName = 'PVCRDVENC'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRDVENC'
    end
    object SQLPreVendaContasReceberPVCRN2VLR: TFloatField
      FieldName = 'PVCRN2VLR'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRN2VLR'
    end
    object SQLPreVendaContasReceberPVCRN2DESCFIN: TFloatField
      FieldName = 'PVCRN2DESCFIN'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRN2DESCFIN'
    end
  end
  object SQLPedidoVenda: TRxQuery
    Tag = 2
    BeforePost = SQLPedidoVendaBeforePost
    OnPostError = SQLPedidoVendaPostError
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PEDIDOVENDA'
      'where PDVDA13ID is null')
    Macros = <>
    Left = 32
    Top = 365
    object SQLPedidoVendaPDVDA13ID: TStringField
      Tag = 2
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDA.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOVENDA.EMPRICOD'
    end
    object SQLPedidoVendaPDVDICOD: TIntegerField
      Tag = 1
      FieldName = 'PDVDICOD'
      Origin = 'DB.PEDIDOVENDA.PDVDICOD'
    end
    object SQLPedidoVendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PEDIDOVENDA.VENDICOD'
    end
    object SQLPedidoVendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PEDIDOVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOVENDA.TRANICOD'
    end
    object SQLPedidoVendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PEDIDOVENDA.PLRCICOD'
    end
    object SQLPedidoVendaPDVDDEMISSAO: TDateTimeField
      FieldName = 'PDVDDEMISSAO'
      Origin = 'DB.PEDIDOVENDA.PDVDDEMISSAO'
    end
    object SQLPedidoVendaPDVDN2VLRFRETE: TFloatField
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
    end
    object SQLPedidoVendaPDVDA30NROPEDCOMP: TStringField
      FieldName = 'PDVDA30NROPEDCOMP'
      Origin = 'DB.PEDIDOVENDA.PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoVendaPDVDA30COMPRADOR: TStringField
      FieldName = 'PDVDA30COMPRADOR'
      Origin = 'DB.PEDIDOVENDA.PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoVendaPDVDCTIPO: TStringField
      FieldName = 'PDVDCTIPO'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaPDVDCSTATUS: TStringField
      FieldName = 'PDVDCSTATUS'
      Origin = 'DB.PEDIDOVENDA.PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaPDVDN2VLRDESC: TFloatField
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
    end
    object SQLPedidoVendaPDVDN2TOTPROD: TFloatField
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
    end
    object SQLPedidoVendaPDVDN2TOTPED: TFloatField
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
    end
    object SQLPedidoVendaPDVDTOBS: TStringField
      FieldName = 'PDVDTOBS'
      Origin = 'DB.PEDIDOVENDA.PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLPedidoVendaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDA.REGISTRO'
    end
    object SQLPedidoVendaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaPDVDN2VLRDESCPROM: TFloatField
      FieldName = 'PDVDN2VLRDESCPROM'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESCPROM'
    end
    object SQLPedidoVendaPDVDCTIPOFRETE: TStringField
      FieldName = 'PDVDCTIPOFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaPDVDDENTREGA: TDateTimeField
      FieldName = 'PDVDDENTREGA'
      Origin = 'DB.PEDIDOVENDA.PDVDDENTREGA'
    end
    object SQLPedidoVendaPDVDINROTALAO: TIntegerField
      FieldName = 'PDVDINROTALAO'
      Origin = 'DB.PEDIDOVENDA.PDVDINROTALAO'
    end
    object SQLPedidoVendaPDVDCIMPORTADO: TStringField
      FieldName = 'PDVDCIMPORTADO'
      Origin = 'DB.PEDIDOVENDA.PDVDCIMPORTADO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPedidoVendaItem: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PEDIDOVENDAITEM'
      'where PDVDA13ID is null')
    Macros = <>
    Left = 150
    Top = 344
    object SQLPedidoVendaItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITIITEM'
    end
    object SQLPedidoVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object SQLPedidoVendaItemPVITN3QUANT: TFloatField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
    end
    object SQLPedidoVendaItemPVITN2VLRUNIT: TFloatField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
    end
    object SQLPedidoVendaItemPVITN2PERCDESC: TFloatField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
    end
    object SQLPedidoVendaItemPVITN2VLRDESC: TFloatField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
    end
    object SQLPedidoVendaItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDAITEM.REGISTRO'
    end
    object SQLPedidoVendaItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaItemPDVDA60OBS: TStringField
      FieldName = 'PDVDA60OBS'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA60OBS'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoVendaItemPVITN2PERCCOMIS: TFloatField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
    end
    object SQLPedidoVendaItemPVITN3QUANTVEND: TFloatField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
    end
    object SQLPedidoVendaItemPDVDA255OBS1: TStringField
      FieldName = 'PDVDA255OBS1'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA255OBS1'
      FixedChar = True
      Size = 255
    end
    object SQLPedidoVendaItemPVITN3TOTVENDITEM: TFloatField
      FieldName = 'PVITN3TOTVENDITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3TOTVENDITEM'
    end
  end
  object DBRel: TDatabase
    AliasName = 'Easy_Temp'
    DatabaseName = 'DBRelat'
    SessionName = 'Default'
    Left = 69
    Top = 8
  end
  object DSSQLPedidoVenda: TDataSource
    DataSet = SQLPedidoVenda
    Left = 61
    Top = 365
  end
  object SQLParcelas: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 232
    Top = 384
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 292
    Top = 384
  end
  object SQLFechamentoCaixa: TRxQuery
    Tag = 3
    BeforePost = SQLFechamentoCaixaBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from FECHAMENTOCAIXA where FECXDDATAMOV is null')
    Macros = <>
    Left = 32
    Top = 416
    object SQLFechamentoCaixaFECXA13ID: TStringField
      Tag = 2
      FieldName = 'FECXA13ID'
      Origin = 'DB.FECHAMENTOCAIXA.FECXA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFechamentoCaixaFECXDDATAMOV: TDateTimeField
      DisplayLabel = 'Data Mov.'
      FieldName = 'FECXDDATAMOV'
      Origin = 'DB.FECHAMENTOCAIXA.FECXDDATAMOV'
    end
    object SQLFechamentoCaixaEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.FECHAMENTOCAIXA.EMPRICOD'
    end
    object SQLFechamentoCaixaTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.FECHAMENTOCAIXA.TERMICOD'
    end
    object SQLFechamentoCaixaNUMEICOD: TIntegerField
      DisplayLabel = 'Numer'#225'rio'
      FieldName = 'NUMEICOD'
      Origin = 'DB.FECHAMENTOCAIXA.NUMEICOD'
    end
    object SQLFechamentoCaixaFECXICOD: TIntegerField
      Tag = 1
      FieldName = 'FECXICOD'
      Origin = 'DB.FECHAMENTOCAIXA.FECXICOD'
    end
    object SQLFechamentoCaixaFECXN2VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'FECXN2VALOR'
      Origin = 'DB.FECHAMENTOCAIXA.FECXN2VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object SQLFechamentoCaixaUSUAICOD: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAICOD'
      Origin = 'DB.FECHAMENTOCAIXA.USUAICOD'
    end
    object SQLFechamentoCaixaNUMEA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'NUMEA30DESCR'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLFechamentoCaixaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FECHAMENTOCAIXA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLFechamentoCaixaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FECHAMENTOCAIXA.REGISTRO'
    end
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from NUMERARIO')
    Macros = <>
    Left = 125
    Top = 416
    object SQLNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
    object SQLNumerarioOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.NUMERARIO.OPCXICOD'
    end
    object SQLNumerarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NUMERARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NUMERARIO.REGISTRO'
    end
    object SQLNumerarioPRCAA13ID: TStringField
      FieldName = 'PRCAA13ID'
      Origin = 'DB.NUMERARIO.PRCAA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLConfigCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ConfigCompras')
    Macros = <>
    Left = 544
    Top = 280
    object SQLConfigCompraCFCOCTOTPRCVENPROD: TStringField
      FieldName = 'CFCOCTOTPRCVENPROD'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCTOTPRCVENPROD'
      FixedChar = True
      Size = 1
    end
    object SQLConfigCompraCFCOITIPMOVNFE: TIntegerField
      FieldName = 'CFCOITIPMOVNFE'
      Origin = 'DB.CONFIGCOMPRAS.CFCOITIPMOVNFE'
    end
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
    object SQLConfigCompraPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONFIGCOMPRAS.PORTICOD'
    end
    object SQLConfigCompraTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONFIGCOMPRAS.TPDCICOD'
    end
    object SQLConfigCompraCFCOCEXCLUIPEDENT: TStringField
      FieldName = 'CFCOCEXCLUIPEDENT'
      Origin = 'DB.CONFIGCOMPRAS.CFCOCEXCLUIPEDENT'
      FixedChar = True
      Size = 1
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
  object SQLPedidoOrcamento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'Pedido.*,'
      'Cliente.CLIEA60RAZAOSOC,'
      'Vendedor.VENDA60NOME,'
      'Plano.PLRCA60DESCR'
      'from'
      'PEDIDOVENDA PEDIDO'
      'left outer join CLIENTE  on Pedido.CLIEA13ID = CLIENTE.CLIEA13ID'
      'left outer join VENDEDOR on Pedido.VENDICOD  = VENDEDOR.VENDICOD'
      
        'left outer join PLANORECEBIMENTO PLANO on Pedido.PLRCICOD = PLAN' +
        'ORECEBIMENTO.PLRCICOD'
      'where'
      '(%MFiltro)'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 232
    Top = 440
    object SQLPedidoOrcamentoPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoOrcamentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoOrcamentoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLPedidoOrcamentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLPedidoOrcamentoPDVDN2TOTPROD: TFloatField
      FieldName = 'PDVDN2TOTPROD'
    end
    object SQLPedidoOrcamentoCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoOrcamentoVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoOrcamentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoOrcamentoPDVDN2VLRDESC: TFloatField
      FieldName = 'PDVDN2VLRDESC'
    end
    object SQLPedidoOrcamentoPDVDN2VLRDESCPROM: TFloatField
      FieldName = 'PDVDN2VLRDESCPROM'
    end
    object SQLPedidoOrcamentoPDVDN2VLRFRETE: TFloatField
      FieldName = 'PDVDN2VLRFRETE'
    end
    object SQLPedidoOrcamentoPDVDTOBS: TStringField
      FieldName = 'PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLPedidoOrcamentoPDVDCTIPO: TStringField
      FieldName = 'PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoOrcamentoPDVDDEMISSAO: TDateTimeField
      FieldName = 'PDVDDEMISSAO'
    end
    object SQLPedidoOrcamentoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLPedidoOrcamentoPDVDICOD: TIntegerField
      FieldName = 'PDVDICOD'
    end
    object SQLPedidoOrcamentoTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
    end
    object SQLPedidoOrcamentoPDVDA30NROPEDCOMP: TStringField
      FieldName = 'PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoOrcamentoPDVDA30COMPRADOR: TStringField
      FieldName = 'PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoOrcamentoPDVDCSTATUS: TStringField
      FieldName = 'PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoOrcamentoPDVDN2TOTPED: TFloatField
      FieldName = 'PDVDN2TOTPED'
    end
    object SQLPedidoOrcamentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLPedidoOrcamentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoOrcamentoPDVDCTIPOFRETE: TStringField
      FieldName = 'PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoOrcamentoPDVDDENTREGA: TDateTimeField
      FieldName = 'PDVDDENTREGA'
    end
    object SQLPedidoOrcamentoPDVDINROTALAO: TIntegerField
      FieldName = 'PDVDINROTALAO'
    end
    object SQLPedidoOrcamentoPDVDCIMPORTADO: TStringField
      FieldName = 'PDVDCIMPORTADO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoOrcamentoPDVDN2PERCFAT: TFloatField
      FieldName = 'PDVDN2PERCFAT'
    end
    object SQLPedidoOrcamentoPDVDN2PERCOMIS: TFloatField
      FieldName = 'PDVDN2PERCOMIS'
    end
    object SQLPedidoOrcamentoUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoOrcamentoROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
    end
    object SQLPedidoOrcamentoSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLPedidoOrcamentoVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoOrcamentoPDVDA15NROPEDPALM: TStringField
      FieldName = 'PDVDA15NROPEDPALM'
      FixedChar = True
      Size = 15
    end
    object SQLPedidoOrcamentoNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLPedidoOrcamentoPDVD8PLACAVEIC: TStringField
      FieldName = 'PDVD8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLPedidoOrcamentoOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
  end
  object SQLPedidoOrcamentoItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'PEDIDOVENDAITEM'
      'where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 273
    Top = 440
    object SQLPedidoOrcamentoItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoOrcamentoItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITIITEM'
    end
    object SQLPedidoOrcamentoItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object SQLPedidoOrcamentoItemPVITN3QUANT: TFloatField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
    end
    object SQLPedidoOrcamentoItemPVITN2VLRUNIT: TFloatField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
    end
    object SQLPedidoOrcamentoItemPVITN2PERCDESC: TFloatField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
    end
    object SQLPedidoOrcamentoItemPVITN2VLRDESC: TFloatField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
    end
    object SQLPedidoOrcamentoItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDAITEM.REGISTRO'
    end
    object SQLPedidoOrcamentoItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoOrcamentoItemPVITN3QUANTVEND: TFloatField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
    end
    object SQLPedidoOrcamentoItemPDVDA60OBS: TStringField
      FieldName = 'PDVDA60OBS'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA60OBS'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoOrcamentoItemPVITN2PERCCOMIS: TFloatField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
    end
    object SQLPedidoOrcamentoItemPDVDA255OBS1: TStringField
      FieldName = 'PDVDA255OBS1'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA255OBS1'
      FixedChar = True
      Size = 255
    end
    object SQLPedidoOrcamentoItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.PEDIDOVENDAITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLProvedorCartao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PROVEDORCARTAO')
    Macros = <>
    Left = 616
    Top = 361
  end
  object SQLTeleEntrega: TRxQuery
    Tag = 3
    CachedUpdates = True
    BeforePost = SQLTeleEntregaBeforePost
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
    Left = 448
    Top = 456
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
      DisplayLabel = 'Ocasi'#227'o'
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
    Left = 549
    Top = 456
  end
  object SQLECF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct'
      'ECFA30MODELO'
      'from'
      'ecf ')
    Macros = <>
    Left = 128
    Top = 472
    object SQLECFECFA30MODELO: TStringField
      FieldName = 'ECFA30MODELO'
      Origin = 'DB.ECF.ECFA30MODELO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLConfigFinanceiro: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONFIGFINANCEIRO')
    Macros = <>
    Left = 38
    Top = 460
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
  end
  object DSTblCheques: TDataSource
    DataSet = TblCheques
    Left = 281
    Top = 481
  end
  object TblCheques: TMemoryTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TblCheques'
    Left = 253
    Top = 481
    object TblChequesDtDep: TDateTimeField
      FieldName = 'DtDep'
    end
    object TblChequesNroCheque: TFloatField
      FieldName = 'NroCheque'
      DisplayFormat = '000000'
    end
    object TblChequesValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
    end
    object TblChequesHistorico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object TblChequesPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object TblChequesBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Size = 5
    end
    object TblChequesAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object TblChequesCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object TblChequesDATAABERT: TDateField
      FieldName = 'DATAABERT'
    end
    object TblChequesTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object TblChequesCGCCPF: TStringField
      FieldName = 'CGCCPF'
    end
    object TblChequesALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object TblChequesDataVecto: TDateField
      DisplayLabel = 'Dt. Vencto.'
      FieldName = 'DataVecto'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object TblTicketPreVendaFin: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoFinan.DB'
    Left = 449
    Top = 229
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
  end
  object SQLMesaStatus: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MESA WHERE (%MFILTRO)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFILTRO'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 176
    Top = 544
    object SQLMesaStatusMESAICOD: TIntegerField
      FieldName = 'MESAICOD'
      Origin = 'DB.MESA.MESAICOD'
    end
    object SQLMesaStatusMESAICAPAC: TIntegerField
      FieldName = 'MESAICAPAC'
      Origin = 'DB.MESA.MESAICAPAC'
    end
    object SQLMesaStatusMESACSTATUS: TStringField
      FieldName = 'MESACSTATUS'
      Origin = 'DB.MESA.MESACSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLMesaStatusMESADABERTURA: TDateTimeField
      FieldName = 'MESADABERTURA'
      Origin = 'DB.MESA.MESADABERTURA'
      DisplayFormat = 'hh:mm'
    end
    object SQLMesaStatusMESADFECHAMENTO: TDateTimeField
      FieldName = 'MESADFECHAMENTO'
      Origin = 'DB.MESA.MESADFECHAMENTO'
      DisplayFormat = 'hh:mm'
    end
    object SQLMesaStatusMESAN3VLRTOTAL: TFloatField
      FieldName = 'MESAN3VLRTOTAL'
      Origin = 'DB.MESA.MESAN3VLRTOTAL'
      DisplayFormat = '##0.00'
    end
    object SQLMesaStatusMESADULTPED: TDateTimeField
      FieldName = 'MESADULTPED'
      Origin = 'DB.MESA.MESADULTPED'
      DisplayFormat = 'hh:mm'
    end
    object SQLMesaStatusVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.MESA.VENDICOD'
    end
    object SQLMesaStatusNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'DB.MESA.NOMECLIENTE'
      Size = 60
    end
  end
  object dsSQLMesaStatus: TDataSource
    DataSet = SQLMesaStatus
    Left = 211
    Top = 543
  end
  object SQLConfigInventario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * From CONFIGINVENTARIO')
    Left = 576
    Top = 56
    object SQLConfigInventarioOPESICODENTRADA: TIntegerField
      FieldName = 'OPESICODENTRADA'
      Origin = 'DB.CONFIGINVENTARIO.OPESICODENTRADA'
    end
    object SQLConfigInventarioOPESICODSAIDA: TIntegerField
      FieldName = 'OPESICODSAIDA'
      Origin = 'DB.CONFIGINVENTARIO.OPESICODSAIDA'
    end
  end
  object TblAutenticacao: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'Autenticacao.DB'
    Left = 608
    Top = 541
    object TblAutenticacaoEmpresaNome: TStringField
      FieldName = 'EmpresaNome'
      Size = 60
    end
    object TblAutenticacaoTerminalNome: TStringField
      FieldName = 'TerminalNome'
      Size = 30
    end
    object TblAutenticacaoOperacao: TStringField
      FieldName = 'Operacao'
      Size = 60
    end
    object TblAutenticacaoUsuarioNome: TStringField
      FieldName = 'UsuarioNome'
      Size = 60
    end
    object TblAutenticacaoValor: TFloatField
      FieldName = 'Valor'
    end
    object TblAutenticacaoHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object TblAutenticacaoForma: TStringField
      FieldName = 'Forma'
      Size = 30
    end
  end
  object dsSQLDisplay: TDataSource
    DataSet = SQLDisplay
    Left = 347
    Top = 551
  end
  object SQLDisplay: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DISPLAY')
    Macros = <>
    Left = 312
    Top = 552
    object SQLDisplayDISPICOD: TIntegerField
      FieldName = 'DISPICOD'
      Origin = 'DB.DISPLAY.DISPICOD'
    end
    object SQLDisplayDISPA30DESCR: TStringField
      FieldName = 'DISPA30DESCR'
      Origin = 'DB.DISPLAY.DISPA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLDisplayDISPINROINICIAL: TIntegerField
      FieldName = 'DISPINROINICIAL'
      Origin = 'DB.DISPLAY.DISPINROINICIAL'
    end
    object SQLDisplayDISPINROFINAL: TIntegerField
      FieldName = 'DISPINROFINAL'
      Origin = 'DB.DISPLAY.DISPINROFINAL'
    end
    object SQLDisplayDISPINROATUAL: TIntegerField
      FieldName = 'DISPINROATUAL'
      Origin = 'DB.DISPLAY.DISPINROATUAL'
    end
  end
  object MemPedidosImportados: TMemoryTable
    Left = 744
    Top = 288
    object MemPedidosImportadosTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object MemPedidosImportadosPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
    end
  end
  object SQLConfigRest: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * From CONFIGREST')
    Left = 576
    Top = 104
    object SQLConfigRestCONFN2TAXASERV: TFloatField
      FieldName = 'CONFN2TAXASERV'
      Origin = 'DB.CONFIGREST.CONFN2TAXASERV'
    end
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
    ControlePorta = True
    Left = 102
    Top = 597
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.PathSalvar = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.PathNFe = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.PathInu = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.PathEvento = 'c:\easy2solutions\nfce\'
    Configuracoes.WebServices.UF = 'RS'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 1500
    Configuracoes.WebServices.Tentativas = 1
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFeESCPOS
    Left = 41
    Top = 597
  end
  object ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS
    PathPDF = '.\pdf\'
    Sistema = 'Easy2Solutions'
    Site = 'http://www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe
    TipoDANFE = tiNFCe
    ImprimeDescAcrescItem = False
    PosPrinter = ACBrPosPrinter
    Left = 72
    Top = 597
  end
  object RestClient: TRestClient
    ConnectionType = hctIndy
    EnabledCompression = False
    Left = 664
    Top = 448
  end
  object cdsAPIAutorizacao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 536
    object cdsAPIAutorizacaoDATA_AUTORIZACAO: TStringField
      FieldName = 'DATA_AUTORIZACAO'
      Size = 15
    end
    object cdsAPIAutorizacaoOBS_AUTORIZACAO: TStringField
      FieldName = 'OBS_AUTORIZACAO'
      Size = 250
    end
    object cdsAPIAutorizacaoDIAS_AVISO: TStringField
      FieldName = 'DIAS_AVISO'
      Size = 15
    end
  end
end
