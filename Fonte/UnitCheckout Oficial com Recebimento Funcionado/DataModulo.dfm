inherited DM: TDM
  OldCreateOrder = True
  Left = 216
  Top = 49
  Height = 656
  Width = 704
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
    Top = 152
  end
  inherited DSEmail: TDataSource
    Left = 624
    Top = 152
  end
  inherited SQLProdutoSaldoDia: TRxQuery
    Left = 85
    Top = 190
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
    object SQLUsuarioUSUACVENDCLIBLOQCHQ: TStringField
      FieldName = 'USUACVENDCLIBLOQCHQ'
      Origin = 'DB.USUARIO.USUACVENDCLIBLOQCHQ'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACVENDCLIBLOQMOTIV: TStringField
      FieldName = 'USUACVENDCLIBLOQMOTIV'
      Origin = 'DB.USUARIO.USUACVENDCLIBLOQMOTIV'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSUACPVERCLICASH: TStringField
      FieldName = 'USUACPVERCLICASH'
      Origin = 'DB.USUARIO.USUACPVERCLICASH'
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
    object SQLTerminalAtivoTERMIQTDEPADRAO: TIntegerField
      FieldName = 'TERMIQTDEPADRAO'
      Origin = 'DBTERM.TERMINAL.TERMIQTDEPADRAO'
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
  end
  object MemCtRecParc: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
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
    object MemCtRecParcCUPON2DESC: TBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemCtRecParcCUPON2TOTITENS: TBCDField
      DisplayLabel = 'Produtos'
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemCtRecParcCUPON2ACRESC: TBCDField
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
    object MemCtRecParcCTRCN2VLR: TBCDField
      DisplayLabel = 'Valor Atual'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Size = 2
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
    object SQLConfigVendaCFVEA20ORDIMPVEND: TStringField
      FieldName = 'CFVEA20ORDIMPVEND'
      Origin = 'DB.CONFIGVENDA.CFVEA20ORDIMPVEND'
      FixedChar = True
    end
  end
  object DatabaseTerm: TDatabase
    AliasName = 'UNITGESTAO'
    Connected = True
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
    object SQLCupomCUPON2TOTITENS: TBCDField
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPON2DESC: TBCDField
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPON2ACRESC: TBCDField
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPON2TOTITENSRET: TBCDField
      FieldName = 'CUPON2TOTITENSRET'
      Origin = 'DB.CUPOM.CUPON2TOTITENSRET'
      Precision = 15
      Size = 3
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
    object SQLCupomCUPON2CONVTAXA: TBCDField
      FieldName = 'CUPON2CONVTAXA'
      Origin = 'DB.CUPOM.CUPON2CONVTAXA'
      Precision = 15
      Size = 3
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
    object SQLCupomCUPON2VLRCOMISSAO: TBCDField
      FieldName = 'CUPON2VLRCOMISSAO'
      Origin = 'DB.CUPOM.CUPON2VLRCOMISSAO'
      Precision = 15
      Size = 3
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
    object SQLCupomCUPON2JUROATRAS: TBCDField
      FieldName = 'CUPON2JUROATRAS'
      Origin = 'DB.CUPOM.CUPON2JUROATRAS'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPON2MULTAATRAS: TBCDField
      FieldName = 'CUPON2MULTAATRAS'
      Origin = 'DB.CUPOM.CUPON2MULTAATRAS'
      Precision = 15
      Size = 3
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
    object SQLCupomCUPON3BONUSTROCA: TBCDField
      FieldName = 'CUPON3BONUSTROCA'
      Origin = 'DB.CUPOM.CUPON3BONUSTROCA'
      Precision = 15
      Size = 3
    end
    object SQLCupomCUPODENTREGA: TDateTimeField
      FieldName = 'CUPODENTREGA'
      Origin = 'DB.CUPOM.CUPODENTREGA'
    end
    object SQLCupomTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
      Origin = 'DB.CUPOM.TPVDICOD'
    end
    object SQLCupomCUPON3CREDTAXA: TBCDField
      FieldName = 'CUPON3CREDTAXA'
      Origin = 'DB.CUPOM.CUPON3CREDTAXA'
      Precision = 15
      Size = 3
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
    object SQLCupomCUPON2DESCITENS: TBCDField
      FieldName = 'CUPON2DESCITENS'
      Origin = 'DB.CUPOM.CUPON2DESCITENS'
      Precision = 15
      Size = 3
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
    object SQLCupomCUPON2BASEICMS: TBCDField
      FieldName = 'CUPON2BASEICMS'
      Origin = 'DB.CUPOM.CUPON2BASEICMS'
      Precision = 15
      Size = 2
    end
    object SQLCupomCUPON2VLRICMS: TBCDField
      FieldName = 'CUPON2VLRICMS'
      Origin = 'DB.CUPOM.CUPON2VLRICMS'
      Precision = 15
      Size = 2
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
    object SQLCupomTROCO: TBCDField
      FieldName = 'TROCO'
      Origin = 'DB.CUPOM.TROCO'
      Precision = 15
      Size = 2
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
    object SQLCupomItemCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Origin = 'DB.CUPOMITEM.CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3QTDTROCA: TBCDField
      FieldName = 'CPITN3QTDTROCA'
      Origin = 'DB.CUPOMITEM.CPITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRUNIT: TBCDField
      FieldName = 'CPITN3VLRUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRCUSTUNIT: TBCDField
      FieldName = 'CPITN3VLRCUSTUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRCUSTUNIT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN2DESC: TBCDField
      FieldName = 'CPITN2DESC'
      Origin = 'DB.CUPOMITEM.CPITN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRUNITLUCR: TBCDField
      FieldName = 'CPITN3VLRUNITLUCR'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNITLUCR'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCOITN2ICMSALIQ: TBCDField
      FieldName = 'COITN2ICMSALIQ'
      Origin = 'DB.CUPOMITEM.COITN2ICMSALIQ'
      Precision = 15
      Size = 3
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
    object SQLCupomItemCPITN2VLRDESCSOBTOT: TBCDField
      FieldName = 'CPITN2VLRDESCSOBTOT'
      Origin = 'DB.CUPOMITEM.CPITN2VLRDESCSOBTOT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN2BASEICMS: TBCDField
      FieldName = 'CPITN2BASEICMS'
      Origin = 'DB.CUPOMITEM.CPITN2BASEICMS'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemCPITN2VLRICMS: TBCDField
      FieldName = 'CPITN2VLRICMS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemCPITN2VLRQDEVERIAVENDER: TBCDField
      FieldName = 'CPITN2VLRQDEVERIAVENDER'
      Origin = 'DB.CUPOMITEM.CPITN2VLRQDEVERIAVENDER'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.CUPOMITEM.BOMBICOD'
    end
    object SQLCupomItemEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOMITEM.EMPRICOD'
    end
    object SQLCupomItemENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'DB.CUPOMITEM.ENCERRANTE'
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
    object SQLCupomNumerarioCPNMN2VLR: TBCDField
      FieldName = 'CPNMN2VLR'
      Origin = 'DB.CUPOMNUMERARIO.CPNMN2VLR'
      Precision = 15
      Size = 3
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
    object SQLContasReceberCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
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
    object SQLContasReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TBCDField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TBCDField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TBCDField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
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
    object SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
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
  end
  object TblTicketPreVendaCab: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'TicketPreVendaCab.DB'
    Left = 392
    Top = 229
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
    object TblTicketPreVendaCabClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
    object TblTicketPreVendaCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TblTicketPreVendaCabTroco: TFloatField
      FieldName = 'Troco'
    end
  end
  object TblTicketPreVendaItem: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
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
    object SQLCupomItCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Origin = 'DB.CUPOMITEM.CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLCupomItCPITN3QTDTROCA: TBCDField
      FieldName = 'CPITN3QTDTROCA'
      Origin = 'DB.CUPOMITEM.CPITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object SQLCupomItCPITN3VLRUNIT: TBCDField
      FieldName = 'CPITN3VLRUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItCPITN2DESC: TBCDField
      FieldName = 'CPITN2DESC'
      Origin = 'DB.CUPOMITEM.CPITN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomItVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOMITEM.VENDICOD'
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
    object SQLPreVendaItem2PVITN3QTD: TBCDField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItem2PVITN3VLRUNIT: TBCDField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItem2PVITN3VLRCUSTUNIT: TBCDField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItem2PVITN2DESC: TBCDField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItem2VENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPreVendaItem2PVITN3VLRUNITLUCR: TBCDField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItem2PVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaItem2PVITN2ICMSALIQ: TBCDField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaItem2PRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaItem2PVITN3QTDTROCA: TBCDField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
      Precision = 15
      Size = 3
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
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CupomCab.db'
    Left = 392
    Top = 316
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
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CupomItemVend.db'
    Left = 421
    Top = 316
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
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CupomItemRet.db'
    Left = 450
    Top = 316
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
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CupomFinanc.db'
    Left = 479
    Top = 316
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
      '  P.PRVDN2DESC,'
      '  P.VENDICOD,'
      '  P.PRVDCIMPORT,'
      '  P.PDVDDHVENDA,'
      '  C.CLIEA60RAZAOSOC,'
      '  C.CLIEA60ENDRES,'
      '  C.CLIEA60BAIRES,'
      '  C.CLIEA60CIDRES,'
      '  C.CLIEA15FONE1,'
      '  C.CLIETOBS,'
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
      '  V.VENDA60NOME,'
      '  T.TERMA60DESCR,'
      '  P.CLIENTENOME,'
      '  P.CLIENTECNPJ,'
      '  P.CLIENTEENDE,'
      '  P.CLIENTECIDA,'
      '  P.CLIENTEFONE,'
      '  P.CLIENTEOBS,'
      '  P.PDVCPreConclu,'
      '  P.CLDPICOD'
      'from'
      
        '  PREVENDA P, CLIENTE C, PLANORECEBIMENTO PL, VENDEDOR V, TERMIN' +
        'AL T'
      'where'
      '  P.CLIEA13ID = C.CLIEA13ID and'
      '  P.PLRCICOD = PL.PLRCICOD and'
      '  P.VENDICOD = V.VENDICOD and'
      '  P.TERMICOD = T.TERMICOD and'
      '  (%MFiltro)'
      '  %Ordem')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
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
    object SQLPreVendaPRVDN2TOTITENS: TBCDField
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENS'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaPRVDN2DESC: TBCDField
      FieldName = 'PRVDN2DESC'
      Origin = 'DB.PREVENDA.PRVDN2DESC'
      Precision = 15
      Size = 3
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
    object SQLPreVendaCLIETOBS: TStringField
      FieldName = 'CLIETOBS'
      Origin = 'DB.CLIENTE.CLIETOBS'
      FixedChar = True
      Size = 254
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
    object SQLPreVendaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
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
    object SQLPreVendaCLIEN2RENDA: TBCDField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaCLIEN2CONJUGERENDA: TBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object SQLPreVendaCLIEN2LIMITECRED: TBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
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
  end
  object SQLPreVendaItem1: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDAITEM where (%MFiltro)')
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
    object SQLPreVendaItem1PVITN3QTD: TBCDField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
      Size = 3
    end
    object SQLPreVendaItem1PVITN3VLRUNIT: TBCDField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
      Size = 3
    end
    object SQLPreVendaItem1PVITN3VLRCUSTUNIT: TBCDField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
      Size = 3
    end
    object SQLPreVendaItem1PVITN2DESC: TBCDField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
      Size = 3
    end
    object SQLPreVendaItem1VENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPreVendaItem1PVITN3VLRUNITLUCR: TBCDField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
      Size = 3
    end
    object SQLPreVendaItem1PVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaItem1PVITN2ICMSALIQ: TBCDField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
      Size = 3
    end
    object SQLPreVendaItem1PRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaItem1PVITN3QTDTROCA: TBCDField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
      Precision = 15
      Size = 3
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
    object SQLPreVendaNumerarioPVNUN2VLR: TBCDField
      FieldName = 'PVNUN2VLR'
      Origin = 'DB.PREVENDANUMERARIO.PVNUN2VLR'
      Size = 3
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
    object SQLPreVendaContasReceberPVCRN2VLR: TBCDField
      FieldName = 'PVCRN2VLR'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRN2VLR'
      Size = 3
    end
    object SQLPreVendaContasReceberPVCRN2DESCFIN: TBCDField
      FieldName = 'PVCRN2DESCFIN'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRN2DESCFIN'
      Size = 3
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
    Left = 561
    Top = 97
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
    object SQLPedidoVendaPDVDN2VLRFRETE: TBCDField
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
      Precision = 15
      Size = 3
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
    object SQLPedidoVendaPDVDN2VLRDESC: TBCDField
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaPDVDN2TOTPROD: TBCDField
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaPDVDN2TOTPED: TBCDField
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
      Precision = 15
      Size = 3
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
    object SQLPedidoVendaPDVDN2VLRDESCPROM: TBCDField
      FieldName = 'PDVDN2VLRDESCPROM'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESCPROM'
      Precision = 15
      Size = 3
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
    object SQLPedidoVendaItemPVITN3QUANT: TBCDField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN2VLRUNIT: TBCDField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN2PERCDESC: TBCDField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN2VLRDESC: TBCDField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
      Precision = 15
      Size = 3
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
    object SQLPedidoVendaItemPVITN2PERCCOMIS: TBCDField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPVITN3QUANTVEND: TBCDField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItemPDVDA255OBS1: TStringField
      FieldName = 'PDVDA255OBS1'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA255OBS1'
      FixedChar = True
      Size = 255
    end
    object SQLPedidoVendaItemPVITN3TOTVENDITEM: TBCDField
      FieldName = 'PVITN3TOTVENDITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3TOTVENDITEM'
      Precision = 15
      Size = 3
    end
  end
  object DBRel: TDatabase
    AliasName = 'UNITGESTAO_TEMP'
    DatabaseName = 'DBRelat'
    SessionName = 'Default'
    Left = 69
    Top = 8
  end
  object DSTblPedidoItens: TDataSource
    DataSet = TblPedidoItens
    Left = 421
    Top = 405
  end
  object PipePedVd: TppBDEPipeline
    DataSource = DSTblPedidoCab
    CloseDataSource = True
    UserName = 'PipePedVd'
    Left = 450
    Top = 360
  end
  object PipePedVdIt: TppBDEPipeline
    DataSource = DSTblPedidoItens
    CloseDataSource = True
    UserName = 'PipePedVdIt'
    Left = 450
    Top = 405
  end
  object TblPedidoCab: TTable
    OnCalcFields = TblPedidoCabCalcFields
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoCab.DB'
    Left = 392
    Top = 360
    object TblPedidoCabPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoCabEmitente_Nome: TStringField
      FieldName = 'Emitente_Nome'
      Size = 60
    end
    object TblPedidoCabEmitente_Ender: TStringField
      FieldName = 'Emitente_Ender'
      Size = 60
    end
    object TblPedidoCabEmitente_Bairro: TStringField
      FieldName = 'Emitente_Bairro'
      Size = 60
    end
    object TblPedidoCabEmitente_Cidade: TStringField
      FieldName = 'Emitente_Cidade'
      Size = 60
    end
    object TblPedidoCabEmitente_UF: TStringField
      FieldName = 'Emitente_UF'
      Size = 2
    end
    object TblPedidoCabEmitente_CGC: TStringField
      FieldName = 'Emitente_CGC'
    end
    object TblPedidoCabEmitente_IE: TStringField
      FieldName = 'Emitente_IE'
    end
    object TblPedidoCabEmitente_Fone: TStringField
      FieldName = 'Emitente_Fone'
      Size = 15
    end
    object TblPedidoCabDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object TblPedidoCabDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Size = 60
    end
    object TblPedidoCabDestinatario_Endereco: TStringField
      FieldName = 'Destinatario_Endereco'
      Size = 60
    end
    object TblPedidoCabDestinatario_Bairro: TStringField
      FieldName = 'Destinatario_Bairro'
      Size = 60
    end
    object TblPedidoCabDestinatario_Cep: TStringField
      FieldName = 'Destinatario_Cep'
      Size = 15
    end
    object TblPedidoCabDestinatario_Cidade: TStringField
      FieldName = 'Destinatario_Cidade'
      Size = 60
    end
    object TblPedidoCabDestinatario_UF: TStringField
      FieldName = 'Destinatario_UF'
      Size = 2
    end
    object TblPedidoCabDestinatario_CpfCgc: TStringField
      FieldName = 'Destinatario_CpfCgc'
    end
    object TblPedidoCabDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
    end
    object TblPedidoCabDestinatario_Fone: TStringField
      FieldName = 'Destinatario_Fone'
    end
    object TblPedidoCabDestinatario_Fone2: TStringField
      FieldName = 'Destinatario_Fone2'
      Size = 15
    end
    object TblPedidoCabDestinatario_Fax: TStringField
      FieldName = 'Destinatario_Fax'
    end
    object TblPedidoCabTransp: TStringField
      FieldName = 'Transp'
      Size = 60
    end
    object TblPedidoCabDtaEntrega: TDateField
      FieldName = 'DtaEntrega'
    end
    object TblPedidoCabComprador: TStringField
      FieldName = 'Comprador'
      Size = 60
    end
    object TblPedidoCabOrdemCompra: TStringField
      FieldName = 'OrdemCompra'
      Size = 60
    end
    object TblPedidoCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblPedidoCabTipoFrete: TStringField
      FieldName = 'TipoFrete'
      Size = 15
    end
    object TblPedidoCabValorFrete: TFloatField
      FieldName = 'ValorFrete'
    end
    object TblPedidoCabTotalDesconto: TFloatField
      FieldName = 'TotalDesconto'
    end
    object TblPedidoCabTotal: TFloatField
      FieldName = 'Total'
    end
    object TblPedidoCabObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
      Size = 10
    end
    object TblPedidoCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblPedidoCabEmail: TStringField
      FieldName = 'Email'
      Size = 60
    end
    object TblPedidoCabPEDIDOORCAMENTO: TStringField
      FieldName = 'PEDIDOORCAMENTO'
    end
    object TblPedidoCabTotalGeral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalGeral'
      Calculated = True
    end
    object TblPedidoCabEmitente_Email: TStringField
      FieldName = 'Emitente_Email'
      Size = 100
    end
    object TblPedidoCabEmitente_URL: TStringField
      FieldName = 'Emitente_URL'
      Size = 254
    end
    object TblPedidoCabEmitenteLogo: TBlobField
      FieldName = 'EmitenteLogo'
    end
    object TblPedidoCabValorEntrada: TFloatField
      FieldName = 'ValorEntrada'
    end
    object TblPedidoCabRota: TStringField
      FieldName = 'Rota'
      Size = 60
    end
    object TblPedidoCabPlacaVeiculo: TStringField
      FieldName = 'PlacaVeiculo'
      Size = 10
    end
    object TblPedidoCabTroco: TFloatField
      FieldName = 'Troco'
    end
  end
  object TblPedidoItens: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoItens.DB'
    Left = 392
    Top = 405
    object TblPedidoItensPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoItensCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblPedidoItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TblPedidoItensUn: TStringField
      FieldName = 'Un'
      Size = 2
    end
    object TblPedidoItensQtd1: TFloatField
      FieldName = 'Qtd1'
    end
    object TblPedidoItensVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object TblPedidoItensVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object TblPedidoItensCor: TStringField
      FieldName = 'Cor'
      Size = 60
    end
    object TblPedidoItensTecido: TStringField
      FieldName = 'Tecido'
      Size = 60
    end
    object TblPedidoItensLegenda: TIntegerField
      FieldName = 'Legenda'
    end
    object TblPedidoItensQtd2: TFloatField
      FieldName = 'Qtd2'
    end
    object TblPedidoItensQtd3: TFloatField
      FieldName = 'Qtd3'
    end
    object TblPedidoItensQtd4: TFloatField
      FieldName = 'Qtd4'
    end
    object TblPedidoItensQtd5: TFloatField
      FieldName = 'Qtd5'
    end
    object TblPedidoItensQtd6: TFloatField
      FieldName = 'Qtd6'
    end
    object TblPedidoItensQtd7: TFloatField
      FieldName = 'Qtd7'
    end
    object TblPedidoItensQtd8: TFloatField
      FieldName = 'Qtd8'
    end
    object TblPedidoItensQtd9: TFloatField
      FieldName = 'Qtd9'
    end
    object TblPedidoItensQtd10: TFloatField
      FieldName = 'Qtd10'
    end
    object TblPedidoItensQtd11: TFloatField
      FieldName = 'Qtd11'
    end
    object TblPedidoItensQtd12: TFloatField
      FieldName = 'Qtd12'
    end
    object TblPedidoItensQtd13: TFloatField
      FieldName = 'Qtd13'
    end
    object TblPedidoItensQtd14: TFloatField
      FieldName = 'Qtd14'
    end
    object TblPedidoItensQtd15: TFloatField
      FieldName = 'Qtd15'
    end
    object TblPedidoItensReferencia: TStringField
      FieldName = 'Referencia'
      Size = 60
    end
    object TblPedidoItensCodItem: TIntegerField
      FieldName = 'CodItem'
    end
  end
  object TblPedidoFinan: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'PedidoFinan.DB'
    Left = 521
    Top = 405
    object TblPedidoFinanPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoFinanParcela: TStringField
      FieldName = 'Parcela'
      Size = 3
    end
    object TblPedidoFinanVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TblPedidoFinanValor: TFloatField
      FieldName = 'Valor'
    end
    object TblPedidoFinanPortador: TStringField
      FieldName = 'Portador'
      Size = 60
    end
    object TblPedidoFinanNumerario: TStringField
      FieldName = 'Numerario'
      Size = 15
    end
  end
  object DSTblPedidoFinan: TDataSource
    DataSet = TblPedidoFinan
    Left = 550
    Top = 405
  end
  object PipePedFin: TppBDEPipeline
    DataSource = DSTblPedidoFinan
    CloseDataSource = True
    UserName = 'PipePedFin'
    Left = 579
    Top = 405
  end
  object ReportOrc: TppReport
    AutoStop = False
    DataPipeline = PipePedVdIt
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    Left = 479
    Top = 360
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'PipePedVdIt'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 70115
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'Emitente_Nome'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 5cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1588
        mmWidth = 66040
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Emitente_Ender'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12965
        mmWidth = 90224
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Emitente_Cidade'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 17463
        mmWidth = 90224
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Emitente_CGC'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21960
        mmWidth = 90223
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Emitente_Fone'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 26458
        mmWidth = 90223
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'NOME.....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 33338
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'ENDERE'#199'O.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 37835
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'BAIRRO...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 42333
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'CIDADE...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 46831
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'CPF/C.G.C:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 51329
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 63765
        mmWidth = 12700
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        DataField = 'Destinatario_Nome'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 33338
        mmWidth = 90223
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Destinatario_Endereco'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 37835
        mmWidth = 90223
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'Destinatario_Bairro'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 42333
        mmWidth = 90223
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'Destinatario_CpfCgc'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 51329
        mmWidth = 90223
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'Destinatario_Fone'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 55827
        mmWidth = 90223
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'Destinatario_Cidade'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 46831
        mmWidth = 90223
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'FONE.....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 55827
        mmWidth = 23020
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22225
        mmTop = 63765
        mmWidth = 107686
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Quant.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 64029
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 156104
        mmTop = 64029
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 64029
        mmWidth = 18256
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        ParentWidth = True
        Weight = 0.400000005960464
        mmHeight = 265
        mmLeft = 0
        mmTop = 69056
        mmWidth = 197300
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        ParentWidth = True
        Weight = 0.400000005960464
        mmHeight = 265
        mmLeft = 0
        mmTop = 31750
        mmWidth = 197300
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 'OR'#199'AMENTO NRO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6615
        mmWidth = 32544
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'PedICod'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 6615
        mmWidth = 14817
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Codigo'
        DataPipeline = PipePedVdIt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePedVdIt'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'Descricao'
        DataPipeline = PipePedVdIt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePedVdIt'
        mmHeight = 4233
        mmLeft = 22225
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Qtd1'
        DataPipeline = PipePedVdIt
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePedVdIt'
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 0
        mmWidth = 18255
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'VlrUnitario'
        DataPipeline = PipePedVdIt
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedVdIt'
        mmHeight = 4233
        mmLeft = 156104
        mmTop = 0
        mmWidth = 18255
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'VlrTotal'
        DataPipeline = PipePedVdIt
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedVdIt'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 0
        mmWidth = 18255
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 50271
      mmPrintPosition = 0
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'Plano'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 1588
        mmWidth = 90223
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'PLANO....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1588
        mmWidth = 23020
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'P A R C E L A S '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 264
        mmTop = 14817
        mmWidth = 111760
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'O B S E R V A '#199' '#213' E S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 264
        mmTop = 34131
        mmWidth = 111760
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'VENDEDOR.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6085
        mmWidth = 23020
        BandType = 7
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'Vendedor'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 6085
        mmWidth = 90223
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'TOTAL ITENS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 1588
        mmWidth = 27517
        BandType = 7
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'Total'
        DataPipeline = PipePedVd
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 1588
        mmWidth = 18256
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'TOTAL FRETE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 6085
        mmWidth = 27517
        BandType = 7
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'ValorFrete'
        DataPipeline = PipePedVd
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 6085
        mmWidth = 18256
        BandType = 7
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'TotalDesconto'
        DataPipeline = PipePedVd
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 10583
        mmWidth = 18255
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'TOTAL DESC.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 10583
        mmWidth = 27517
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'TOTAL GERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 15081
        mmWidth = 27517
        BandType = 7
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Observacoes'
        DataPipeline = PipePedVd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 9525
        mmLeft = 264
        mmTop = 38629
        mmWidth = 111760
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        ParentWidth = True
        Weight = 0.400000005960464
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'TotalGeral'
        DataPipeline = PipePedVd
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePedVd'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 15081
        mmWidth = 18256
        BandType = 7
      end
    end
  end
  object DSTblPedidoCab: TDataSource
    DataSet = TblPedidoCab
    Left = 421
    Top = 360
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
    object SQLFechamentoCaixaFECXN2VALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FECXN2VALOR'
      Origin = 'DB.FECHAMENTOCAIXA.FECXN2VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 3
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
    object SQLPedidoOrcamentoPDVDN2TOTPROD: TBCDField
      FieldName = 'PDVDN2TOTPROD'
      Precision = 15
      Size = 3
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
    object SQLPedidoOrcamentoPDVDN2VLRDESC: TBCDField
      FieldName = 'PDVDN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoOrcamentoPDVDN2VLRDESCPROM: TBCDField
      FieldName = 'PDVDN2VLRDESCPROM'
      Precision = 15
      Size = 3
    end
    object SQLPedidoOrcamentoPDVDN2VLRFRETE: TBCDField
      FieldName = 'PDVDN2VLRFRETE'
      Precision = 15
      Size = 3
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
    object SQLPedidoOrcamentoPDVDN2TOTPED: TBCDField
      FieldName = 'PDVDN2TOTPED'
      Precision = 15
      Size = 3
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
    object SQLPedidoOrcamentoPDVDN2PERCFAT: TBCDField
      FieldName = 'PDVDN2PERCFAT'
      Precision = 15
      Size = 2
    end
    object SQLPedidoOrcamentoPDVDN2PERCOMIS: TBCDField
      FieldName = 'PDVDN2PERCOMIS'
      Precision = 15
      Size = 2
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
    object SQLPedidoOrcamentoItemPVITN3QUANT: TBCDField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
      Precision = 15
      Size = 3
    end
    object SQLPedidoOrcamentoItemPVITN2VLRUNIT: TBCDField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLPedidoOrcamentoItemPVITN2PERCDESC: TBCDField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoOrcamentoItemPVITN2VLRDESC: TBCDField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
      Precision = 15
      Size = 3
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
    object SQLPedidoOrcamentoItemPVITN3QUANTVEND: TBCDField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
      Precision = 15
      Size = 3
    end
    object SQLPedidoOrcamentoItemPDVDA60OBS: TStringField
      FieldName = 'PDVDA60OBS'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA60OBS'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoOrcamentoItemPVITN2PERCCOMIS: TBCDField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
      Precision = 15
      Size = 3
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
    DatabaseName = 'UnitGestao_Temp'
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
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TblChequesNroDias: TIntegerField
      FieldName = 'NroDias'
    end
  end
  object TblTicketPreVendaFin: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
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
  object SQLBomba: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from BOMBA'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 381
    Top = 536
    object SQLBombaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.BOMBA.EMPRICOD'
    end
    object SQLBombaBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.BOMBA.BOMBICOD'
    end
    object SQLBombaTANQICOD: TIntegerField
      FieldName = 'TANQICOD'
      Origin = 'DB.BOMBA.TANQICOD'
    end
    object SQLBombaBOMBN2CONT: TBCDField
      FieldName = 'BOMBN2CONT'
      Origin = 'DB.BOMBA.BOMBN2CONT'
      Precision = 15
      Size = 2
    end
    object SQLBombaBOMBA30DESCR: TStringField
      FieldName = 'BOMBA30DESCR'
      Origin = 'DB.BOMBA.BOMBA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLBombaBOMBN3VLRVISTA: TBCDField
      FieldName = 'BOMBN3VLRVISTA'
      Origin = 'DB.BOMBA.BOMBN3VLRVISTA'
      DisplayFormat = '##0.000'
      Precision = 15
      Size = 3
    end
    object SQLBombaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.BOMBA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLBombaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.BOMBA.REGISTRO'
    end
    object SQLBombaCONVERTER: TStringField
      FieldName = 'CONVERTER'
      Origin = 'DB.BOMBA.CONVERTER'
      FixedChar = True
      Size = 2
    end
    object SQLBombaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'DB.BOMBA.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLBombaPOINT: TIntegerField
      FieldName = 'POINT'
      Origin = 'DB.BOMBA.POINT'
    end
  end
  object SQLTanque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TANQUE'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 352
    Top = 536
    object SQLTanqueEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TANQUE.EMPRICOD'
    end
    object SQLTanqueTANQICOD: TIntegerField
      FieldName = 'TANQICOD'
      Origin = 'DB.TANQUE.TANQICOD'
    end
    object SQLTanqueTANQA30DESCR: TStringField
      FieldName = 'TANQA30DESCR'
      Origin = 'DB.TANQUE.TANQA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTanquePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.TANQUE.PRODICOD'
    end
    object SQLTanqueTANQN2CAPACID: TBCDField
      FieldName = 'TANQN2CAPACID'
      Origin = 'DB.TANQUE.TANQN2CAPACID'
      Precision = 15
      Size = 2
    end
    object SQLTanqueTANQN2SALDO: TBCDField
      FieldName = 'TANQN2SALDO'
      Origin = 'DB.TANQUE.TANQN2SALDO'
      Precision = 15
      Size = 2
    end
    object SQLTanqueTANQN2ESTMIN: TBCDField
      FieldName = 'TANQN2ESTMIN'
      Origin = 'DB.TANQUE.TANQN2ESTMIN'
      Precision = 15
      Size = 2
    end
  end
  object DSSQLBomba: TDataSource
    DataSet = SQLBomba
    Left = 380
    Top = 492
  end
  object DSSQLTanque: TDataSource
    DataSet = SQLTanque
    Left = 352
    Top = 492
  end
  object IBdb: TIBDatabase
    DatabaseName = 'C:\Unit\Gestao\Dados\Conceitos\Banco.gdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTran01
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 29
    Top = 505
  end
  object IBTran01: TIBTransaction
    Active = False
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 61
    Top = 506
  end
  object IBUpdateGeral: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Fornecedor '
      'where'
      '  CODIGOFORNECEDOR = :CODIGOFORNECEDOR and'
      '  RAZAOSOCIAL = :RAZAOSOCIAL and'
      '  NOMEFANTASIA = :NOMEFANTASIA and'
      '  DATACADASTRAMENTO = :DATACADASTRAMENTO and'
      '  TROCADEMERCADORIA = :TROCADEMERCADORIA and'
      '  CODIGOCATEGORIA = :CODIGOCATEGORIA and'
      '  ENDERECO = :ENDERECO and'
      '  BAIRRO = :BAIRRO and'
      '  CIDADE = :CIDADE and'
      '  CEP = :CEP and'
      '  UF = :UF and'
      '  FONE = :FONE and'
      '  FAX = :FAX and'
      '  EMAIL = :EMAIL and'
      '  CNPJ = :CNPJ and'
      '  INSCRICAOESTADUAL = :INSCRICAOESTADUAL and'
      '  CONTATO1 = :CONTATO1 and'
      '  CONTATO2 = :CONTATO2 and'
      '  FONECONTATO1 = :FONECONTATO1 and'
      '  FONECONTATO2 = :FONECONTATO2 and'
      '  DATADOULTIMOMOVIMENTO = :DATADOULTIMOMOVIMENTO and'
      '  HORARIODOULTIMOMOVIMENTO = :HORARIODOULTIMOMOVIMENTO and'
      '  EXCLUIR = :EXCLUIR')
    ModifySQL.Strings = (
      'update Fornecedor'
      'set'
      '  CODIGOFORNECEDOR = :CODIGOFORNECEDOR,'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  NOMEFANTASIA = :NOMEFANTASIA,'
      '  DATACADASTRAMENTO = :DATACADASTRAMENTO,'
      '  TROCADEMERCADORIA = :TROCADEMERCADORIA,'
      '  CODIGOCATEGORIA = :CODIGOCATEGORIA,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  CEP = :CEP,'
      '  UF = :UF,'
      '  FONE = :FONE,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL,'
      '  CNPJ = :CNPJ,'
      '  INSCRICAOESTADUAL = :INSCRICAOESTADUAL,'
      '  CONTATO1 = :CONTATO1,'
      '  CONTATO2 = :CONTATO2,'
      '  FONECONTATO1 = :FONECONTATO1,'
      '  FONECONTATO2 = :FONECONTATO2,'
      '  DATADOULTIMOMOVIMENTO = :DATADOULTIMOMOVIMENTO,'
      '  HORARIODOULTIMOMOVIMENTO = :HORARIODOULTIMOMOVIMENTO,'
      '  EXCLUIR = :EXCLUIR'
      'where'
      '  CODIGOFORNECEDOR = :OLD_CODIGOFORNECEDOR and'
      '  RAZAOSOCIAL = :OLD_RAZAOSOCIAL and'
      '  NOMEFANTASIA = :OLD_NOMEFANTASIA and'
      '  DATACADASTRAMENTO = :OLD_DATACADASTRAMENTO and'
      '  TROCADEMERCADORIA = :OLD_TROCADEMERCADORIA and'
      '  CODIGOCATEGORIA = :OLD_CODIGOCATEGORIA and'
      '  ENDERECO = :OLD_ENDERECO and'
      '  BAIRRO = :OLD_BAIRRO and'
      '  CIDADE = :OLD_CIDADE and'
      '  CEP = :OLD_CEP and'
      '  UF = :OLD_UF and'
      '  FONE = :OLD_FONE and'
      '  FAX = :OLD_FAX and'
      '  EMAIL = :OLD_EMAIL and'
      '  CNPJ = :OLD_CNPJ and'
      '  INSCRICAOESTADUAL = :OLD_INSCRICAOESTADUAL and'
      '  CONTATO1 = :OLD_CONTATO1 and'
      '  CONTATO2 = :OLD_CONTATO2 and'
      '  FONECONTATO1 = :OLD_FONECONTATO1 and'
      '  FONECONTATO2 = :OLD_FONECONTATO2 and'
      '  DATADOULTIMOMOVIMENTO = :OLD_DATADOULTIMOMOVIMENTO and'
      '  HORARIODOULTIMOMOVIMENTO = :OLD_HORARIODOULTIMOMOVIMENTO '
      'and'
      '  EXCLUIR = :OLD_EXCLUIR')
    InsertSQL.Strings = (
      'insert into Fornecedor'
      
        '  (CODIGOFORNECEDOR, RAZAOSOCIAL, NOMEFANTASIA, DATACADASTRAMENT' +
        'O, TROCADEMERCADORIA, '
      
        '   CODIGOCATEGORIA, ENDERECO, BAIRRO, CIDADE, CEP, UF, FONE, FAX' +
        ', EMAIL, '
      
        '   CNPJ, INSCRICAOESTADUAL, CONTATO1, CONTATO2, FONECONTATO1, FO' +
        'NECONTATO2, '
      '   DATADOULTIMOMOVIMENTO, HORARIODOULTIMOMOVIMENTO, EXCLUIR)'
      'values'
      
        '  (:CODIGOFORNECEDOR, :RAZAOSOCIAL, :NOMEFANTASIA, :DATACADASTRA' +
        'MENTO, '
      
        '   :TROCADEMERCADORIA, :CODIGOCATEGORIA, :ENDERECO, :BAIRRO, :CI' +
        'DADE, :CEP, '
      
        '   :UF, :FONE, :FAX, :EMAIL, :CNPJ, :INSCRICAOESTADUAL, :CONTATO' +
        '1, :CONTATO2, '
      
        '   :FONECONTATO1, :FONECONTATO2, :DATADOULTIMOMOVIMENTO, :HORARI' +
        'ODOULTIMOMOVIMENTO, '
      '   :EXCLUIR)')
    DeleteSQL.Strings = (
      'delete from Fornecedor'
      'where'
      '  CODIGOFORNECEDOR = :OLD_CODIGOFORNECEDOR and'
      '  RAZAOSOCIAL = :OLD_RAZAOSOCIAL and'
      '  NOMEFANTASIA = :OLD_NOMEFANTASIA and'
      '  DATACADASTRAMENTO = :OLD_DATACADASTRAMENTO and'
      '  TROCADEMERCADORIA = :OLD_TROCADEMERCADORIA and'
      '  CODIGOCATEGORIA = :OLD_CODIGOCATEGORIA and'
      '  ENDERECO = :OLD_ENDERECO and'
      '  BAIRRO = :OLD_BAIRRO and'
      '  CIDADE = :OLD_CIDADE and'
      '  CEP = :OLD_CEP and'
      '  UF = :OLD_UF and'
      '  FONE = :OLD_FONE and'
      '  FAX = :OLD_FAX and'
      '  EMAIL = :OLD_EMAIL and'
      '  CNPJ = :OLD_CNPJ and'
      '  INSCRICAOESTADUAL = :OLD_INSCRICAOESTADUAL and'
      '  CONTATO1 = :OLD_CONTATO1 and'
      '  CONTATO2 = :OLD_CONTATO2 and'
      '  FONECONTATO1 = :OLD_FONECONTATO1 and'
      '  FONECONTATO2 = :OLD_FONECONTATO2 and'
      '  DATADOULTIMOMOVIMENTO = :OLD_DATADOULTIMOMOVIMENTO and'
      '  HORARIODOULTIMOMOVIMENTO = :OLD_HORARIODOULTIMOMOVIMENTO and'
      '  EXCLUIR = :OLD_EXCLUIR')
    Left = 59
    Top = 548
  end
  object IBQueryGeral: TIBQuery
    Database = IBdb
    Transaction = IBTran01
    BufferChunks = 1000
    CachedUpdates = False
    UpdateObject = IBUpdateGeral
    Left = 29
    Top = 548
  end
  object dtsPista: TDataSource
    DataSet = SQLPista
    Left = 572
    Top = 548
  end
  object SQLPista: TIBQuery
    Database = IBdb
    Transaction = IBTran01
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT * FROM LEITURAPISTA  where MARCADO = "N" OR MARCADO = "S"' +
        '  ORDER BY ABASTECIDA DESC')
    UpdateObject = upPista
    Left = 507
    Top = 546
    object SQLPistaABASTECIDA: TIntegerField
      FieldName = 'ABASTECIDA'
      Origin = 'LEITURAPISTA.ABASTECIDA'
      Required = True
    end
    object SQLPistaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'LEITURAPISTA.DATA'
      Required = True
    end
    object SQLPistaLITROS: TFloatField
      FieldName = 'LITROS'
      Origin = 'LEITURAPISTA.LITROS'
      Required = True
      DisplayFormat = ',0.000'
    end
    object SQLPistaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'LEITURAPISTA.VALORTOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object SQLPistaVALORUNITARIO: TFloatField
      FieldName = 'VALORUNITARIO'
      Origin = 'LEITURAPISTA.VALORUNITARIO'
      Required = True
    end
    object SQLPistaCANAL: TIBStringField
      FieldName = 'CANAL'
      Origin = 'LEITURAPISTA.CANAL'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLPistaREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'LEITURAPISTA.REGISTRO'
      Required = True
    end
    object SQLPistaMARCADO: TIBStringField
      FieldName = 'MARCADO'
      Origin = 'LEITURAPISTA.MARCADO'
      FixedChar = True
      Size = 1
    end
    object SQLPistaPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = SQLBomba
      LookupKeyFields = 'CONVERTER'
      LookupResultField = 'BOMBA30DESCR'
      KeyFields = 'CANAL'
      Size = 30
      Lookup = True
    end
    object SQLPistaBICO: TStringField
      FieldKind = fkLookup
      FieldName = 'BICO'
      LookupDataSet = SQLBomba
      LookupKeyFields = 'CONVERTER'
      LookupResultField = 'BOMBICOD'
      KeyFields = 'CANAL'
      Size = 2
      Lookup = True
    end
    object SQLPistaENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'LEITURAPISTA.ENCERRANTE'
    end
  end
  object upPista: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ABASTECIDA,'
      '  DATA,'
      '  LITROS,'
      '  VALORTOTAL,'
      '  VALORUNITARIO,'
      '  CANAL,'
      '  REGISTRO,'
      '  MARCADO'
      'from LEITURAPISTA '
      'where'
      '  ABASTECIDA = :ABASTECIDA')
    ModifySQL.Strings = (
      'update LEITURAPISTA'
      'set'
      '  ABASTECIDA = :ABASTECIDA,'
      '  DATA = :DATA,'
      '  LITROS = :LITROS,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  VALORUNITARIO = :VALORUNITARIO,'
      '  CANAL = :CANAL,'
      '  REGISTRO = :REGISTRO,'
      '  MARCADO = :MARCADO'
      'where'
      '  ABASTECIDA = :OLD_ABASTECIDA')
    InsertSQL.Strings = (
      'insert into LEITURAPISTA'
      '  (ABASTECIDA, DATA, LITROS, VALORTOTAL, VALORUNITARIO, CANAL, '
      'REGISTRO, '
      '   MARCADO)'
      'values'
      
        '  (:ABASTECIDA, :DATA, :LITROS, :VALORTOTAL, :VALORUNITARIO, :CA' +
        'NAL, '
      ':REGISTRO, '
      '   :MARCADO)')
    DeleteSQL.Strings = (
      'delete from LEITURAPISTA'
      'where'
      '  ABASTECIDA = :OLD_ABASTECIDA')
    Left = 616
    Top = 548
  end
  object IBSQLBomba: TIBSQL
    Database = IBdb
    ParamCheck = True
    SQL.Strings = (
      'Select Status, bombicod from bomba order by bombicod')
    Transaction = IBTran01
    Left = 508
    Top = 504
  end
  object IBEvents: TIBEvents
    AutoRegister = True
    Database = IBdb
    Events.Strings = (
      'AUTOMACAO')
    Registered = False
    OnEventAlert = IBEventsEventAlert
    Left = 616
    Top = 504
  end
  object IBSQL: TIBSQL
    Database = IBdb
    ParamCheck = True
    Transaction = IBTran01
    Left = 568
    Top = 504
  end
  object SQLPopUP: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CFGCALLCENTER')
    Left = 216
    Top = 544
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
end
