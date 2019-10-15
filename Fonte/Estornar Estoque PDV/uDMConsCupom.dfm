object DMConsCupom: TDMConsCupom
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 429
  Top = 159
  Height = 312
  Width = 463
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT EMPRICOD, EMPRA60RAZAOSOC FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMConection.scoDados
    Left = 32
    Top = 40
    object sdsEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Required = True
    end
    object sdsEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 64
    Top = 40
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 96
    Top = 40
    object cdsEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Required = True
    end
    object cdsEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 128
    Top = 40
  end
  object sdsTerminal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT TERMICOD, TERMA60DESCR FROM TERMINAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMConection.scoDados
    Left = 32
    Top = 96
    object sdsTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Required = True
    end
    object sdsTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dspTerminal: TDataSetProvider
    DataSet = sdsTerminal
    Left = 64
    Top = 96
  end
  object cdsTerminal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTerminal'
    Left = 96
    Top = 96
    object cdsTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Required = True
    end
    object cdsTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dsTerminal: TDataSource
    DataSet = cdsTerminal
    Left = 128
    Top = 96
  end
  object sdsCupom: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select *'#13#10'from CUPOM'#13#10'where EMPRICOD = :EMPRESA and'#13#10'      TERMI' +
      'COD = :TERMINAL and'#13#10'      CUPODEMIS between :DATAINICIAL and :D' +
      'ATAFINAL and'#13#10'      COALESCE(ESTORNOU,'#39'N'#39') <> '#39'S'#39#13#10'ORDER BY CUPO' +
      'A13ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TERMINAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
    SQLConnection = DMConection.scoDados
    Left = 32
    Top = 152
    object sdsCupomCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object sdsCupomEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object sdsCupomTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object sdsCupomCUPOICOD: TIntegerField
      FieldName = 'CUPOICOD'
      Required = True
    end
    object sdsCupomCUPODEMIS: TSQLTimeStampField
      FieldName = 'CUPODEMIS'
    end
    object sdsCupomCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object sdsCupomPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object sdsCupomVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object sdsCupomCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
    end
    object sdsCupomCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object sdsCupomCUPON2TOTITENS: TFMTBCDField
      FieldName = 'CUPON2TOTITENS'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPON2DESC: TFMTBCDField
      FieldName = 'CUPON2DESC'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPON2ACRESC: TFMTBCDField
      FieldName = 'CUPON2ACRESC'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPON2TOTITENSRET: TFMTBCDField
      FieldName = 'CUPON2TOTITENSRET'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
    end
    object sdsCupomCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object sdsCupomCUPON2CONVTAXA: TFMTBCDField
      FieldName = 'CUPON2CONVTAXA'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPOINROORDCOMPRA: TIntegerField
      FieldName = 'CUPOINROORDCOMPRA'
    end
    object sdsCupomCUPOA13IDTROCA: TStringField
      FieldName = 'CUPOA13IDTROCA'
      FixedChar = True
      Size = 13
    end
    object sdsCupomCUPON2VLRCOMISSAO: TFMTBCDField
      FieldName = 'CUPON2VLRCOMISSAO'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPOA20CODANT: TStringField
      FieldName = 'CUPOA20CODANT'
      FixedChar = True
    end
    object sdsCupomCUPODCANC: TSQLTimeStampField
      FieldName = 'CUPODCANC'
    end
    object sdsCupomCUPON2JUROATRAS: TFMTBCDField
      FieldName = 'CUPON2JUROATRAS'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPON2MULTAATRAS: TFMTBCDField
      FieldName = 'CUPON2MULTAATRAS'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPODPAGTOCONSIG: TSQLTimeStampField
      FieldName = 'CUPODPAGTOCONSIG'
    end
    object sdsCupomCUPON3BONUSTROCA: TFMTBCDField
      FieldName = 'CUPON3BONUSTROCA'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPODENTREGA: TSQLTimeStampField
      FieldName = 'CUPODENTREGA'
    end
    object sdsCupomTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
    end
    object sdsCupomUSUAICODCANC: TIntegerField
      FieldName = 'USUAICODCANC'
    end
    object sdsCupomPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCupomREGISTRO: TSQLTimeStampField
      FieldName = 'REGISTRO'
    end
    object sdsCupomCUPON3CREDTAXA: TFMTBCDField
      FieldName = 'CUPON3CREDTAXA'
      Precision = 15
      Size = 3
    end
    object sdsCupomCUPOCCONSIG: TStringField
      FieldName = 'CUPOCCONSIG'
      FixedChar = True
      Size = 1
    end
    object sdsCupomCUPOV254OBS: TStringField
      FieldName = 'CUPOV254OBS'
      Size = 254
    end
    object sdsCupomCUPOA30DATACARTAO: TStringField
      FieldName = 'CUPOA30DATACARTAO'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCUPOA30HORACARTAO: TStringField
      FieldName = 'CUPOA30HORACARTAO'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCUPOA30NSUPROVEDOR: TStringField
      FieldName = 'CUPOA30NSUPROVEDOR'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCUPOA30NSUINSTITUICAO: TStringField
      FieldName = 'CUPOA30NSUINSTITUICAO'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCUPON2DESCITENS: TFMTBCDField
      FieldName = 'CUPON2DESCITENS'
      Precision = 15
      Size = 3
    end
    object sdsCupomCATCA13ID: TStringField
      FieldName = 'CATCA13ID'
      FixedChar = True
      Size = 13
    end
    object sdsCupomAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object sdsCupomCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object sdsCupomCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object sdsCupomCUPODQUITACAO: TSQLTimeStampField
      FieldName = 'CUPODQUITACAO'
    end
    object sdsCupomCUPON2BASEICMS: TFMTBCDField
      FieldName = 'CUPON2BASEICMS'
      Precision = 15
      Size = 2
    end
    object sdsCupomCUPON2VLRICMS: TFMTBCDField
      FieldName = 'CUPON2VLRICMS'
      Precision = 15
      Size = 2
    end
    object sdsCupomOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object sdsCupomPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object sdsCupomPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object sdsCupomCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object sdsCupomCLIENTECNPJ: TStringField
      FieldName = 'CLIENTECNPJ'
      FixedChar = True
    end
    object sdsCupomCLIENTEENDE: TStringField
      FieldName = 'CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object sdsCupomCLIENTECIDA: TStringField
      FieldName = 'CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object sdsCupomUSUAICODVENDA: TIntegerField
      FieldName = 'USUAICODVENDA'
    end
    object sdsCupomCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
    end
    object sdsCupomCUPOA8PLACAVEIC: TStringField
      FieldName = 'CUPOA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object sdsCupomORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Size = 5
    end
    object sdsCupomTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Precision = 15
      Size = 2
    end
    object sdsCupomCUPOCLEVAR: TStringField
      FieldName = 'CUPOCLEVAR'
      FixedChar = True
      Size = 1
    end
    object sdsCupomDISPICOD: TIntegerField
      FieldName = 'DISPICOD'
    end
    object sdsCupomMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
    end
    object sdsCupomCUPOA30ECFMOD: TStringField
      FieldName = 'CUPOA30ECFMOD'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCUPOA30ECFSERIE: TStringField
      FieldName = 'CUPOA30ECFSERIE'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCUPON2VLRPIS: TFMTBCDField
      FieldName = 'CUPON2VLRPIS'
      Precision = 15
      Size = 2
    end
    object sdsCupomCUPON2VLRCOFINS: TFMTBCDField
      FieldName = 'CUPON2VLRCOFINS'
      Precision = 15
      Size = 2
    end
    object sdsCupomCLIENTEBAIRRO: TStringField
      FieldName = 'CLIENTEBAIRRO'
      FixedChar = True
      Size = 30
    end
    object sdsCupomCONTAICOD: TIntegerField
      FieldName = 'CONTAICOD'
    end
    object sdsCupomMESAICOD: TIntegerField
      FieldName = 'MESAICOD'
    end
    object sdsCupomCUPOCBUSCA: TStringField
      FieldName = 'CUPOCBUSCA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Size = 44
    end
    object sdsCupomPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object sdsCupomRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 15
    end
    object sdsCupomSTNFE: TStringField
      FieldName = 'STNFE'
      Size = 5
    end
    object sdsCupomSEQ_DIA: TIntegerField
      FieldName = 'SEQ_DIA'
    end
  end
  object dspCupom: TDataSetProvider
    DataSet = sdsCupom
    Left = 64
    Top = 152
  end
  object cdsCupom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupom'
    Left = 96
    Top = 152
    object cdsCupomCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object cdsCupomEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
    end
    object cdsCupomTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
    end
    object cdsCupomCUPOICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CUPOICOD'
      Required = True
    end
    object cdsCupomCUPODEMIS: TSQLTimeStampField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'CUPODEMIS'
    end
    object cdsCupomCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object cdsCupomPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object cdsCupomVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object cdsCupomCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
    end
    object cdsCupomCUPOCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object cdsCupomCUPON2TOTITENS: TFMTBCDField
      DisplayLabel = 'Total Itens'
      FieldName = 'CUPON2TOTITENS'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPON2DESC: TFMTBCDField
      FieldName = 'CUPON2DESC'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPON2ACRESC: TFMTBCDField
      FieldName = 'CUPON2ACRESC'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPON2TOTITENSRET: TFMTBCDField
      FieldName = 'CUPON2TOTITENSRET'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPOINRO: TIntegerField
      DisplayLabel = 'Nro Cupom'
      FieldName = 'CUPOINRO'
    end
    object cdsCupomCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object cdsCupomCUPON2CONVTAXA: TFMTBCDField
      FieldName = 'CUPON2CONVTAXA'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPOINROORDCOMPRA: TIntegerField
      FieldName = 'CUPOINROORDCOMPRA'
    end
    object cdsCupomCUPOA13IDTROCA: TStringField
      FieldName = 'CUPOA13IDTROCA'
      FixedChar = True
      Size = 13
    end
    object cdsCupomCUPON2VLRCOMISSAO: TFMTBCDField
      FieldName = 'CUPON2VLRCOMISSAO'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPOA20CODANT: TStringField
      FieldName = 'CUPOA20CODANT'
      FixedChar = True
    end
    object cdsCupomCUPODCANC: TSQLTimeStampField
      FieldName = 'CUPODCANC'
    end
    object cdsCupomCUPON2JUROATRAS: TFMTBCDField
      FieldName = 'CUPON2JUROATRAS'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPON2MULTAATRAS: TFMTBCDField
      FieldName = 'CUPON2MULTAATRAS'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPODPAGTOCONSIG: TSQLTimeStampField
      FieldName = 'CUPODPAGTOCONSIG'
    end
    object cdsCupomCUPON3BONUSTROCA: TFMTBCDField
      FieldName = 'CUPON3BONUSTROCA'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPODENTREGA: TSQLTimeStampField
      FieldName = 'CUPODENTREGA'
    end
    object cdsCupomTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
    end
    object cdsCupomUSUAICODCANC: TIntegerField
      FieldName = 'USUAICODCANC'
    end
    object cdsCupomPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCupomREGISTRO: TSQLTimeStampField
      FieldName = 'REGISTRO'
    end
    object cdsCupomCUPON3CREDTAXA: TFMTBCDField
      FieldName = 'CUPON3CREDTAXA'
      Precision = 15
      Size = 3
    end
    object cdsCupomCUPOCCONSIG: TStringField
      FieldName = 'CUPOCCONSIG'
      FixedChar = True
      Size = 1
    end
    object cdsCupomCUPOV254OBS: TStringField
      FieldName = 'CUPOV254OBS'
      Size = 254
    end
    object cdsCupomCUPOA30DATACARTAO: TStringField
      FieldName = 'CUPOA30DATACARTAO'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCUPOA30HORACARTAO: TStringField
      FieldName = 'CUPOA30HORACARTAO'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCUPOA30NSUPROVEDOR: TStringField
      FieldName = 'CUPOA30NSUPROVEDOR'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCUPOA30NSUINSTITUICAO: TStringField
      FieldName = 'CUPOA30NSUINSTITUICAO'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCUPON2DESCITENS: TFMTBCDField
      FieldName = 'CUPON2DESCITENS'
      Precision = 15
      Size = 3
    end
    object cdsCupomCATCA13ID: TStringField
      FieldName = 'CATCA13ID'
      FixedChar = True
      Size = 13
    end
    object cdsCupomAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object cdsCupomCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object cdsCupomCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object cdsCupomCUPODQUITACAO: TSQLTimeStampField
      FieldName = 'CUPODQUITACAO'
    end
    object cdsCupomCUPON2BASEICMS: TFMTBCDField
      FieldName = 'CUPON2BASEICMS'
      Precision = 15
      Size = 2
    end
    object cdsCupomCUPON2VLRICMS: TFMTBCDField
      FieldName = 'CUPON2VLRICMS'
      Precision = 15
      Size = 2
    end
    object cdsCupomOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object cdsCupomPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object cdsCupomPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object cdsCupomCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object cdsCupomCLIENTECNPJ: TStringField
      FieldName = 'CLIENTECNPJ'
      FixedChar = True
    end
    object cdsCupomCLIENTEENDE: TStringField
      FieldName = 'CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object cdsCupomCLIENTECIDA: TStringField
      FieldName = 'CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object cdsCupomUSUAICODVENDA: TIntegerField
      FieldName = 'USUAICODVENDA'
    end
    object cdsCupomCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
    end
    object cdsCupomCUPOA8PLACAVEIC: TStringField
      FieldName = 'CUPOA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object cdsCupomORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Size = 5
    end
    object cdsCupomTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Precision = 15
      Size = 2
    end
    object cdsCupomCUPOCLEVAR: TStringField
      FieldName = 'CUPOCLEVAR'
      FixedChar = True
      Size = 1
    end
    object cdsCupomDISPICOD: TIntegerField
      FieldName = 'DISPICOD'
    end
    object cdsCupomMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
    end
    object cdsCupomCUPOA30ECFMOD: TStringField
      FieldName = 'CUPOA30ECFMOD'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCUPOA30ECFSERIE: TStringField
      FieldName = 'CUPOA30ECFSERIE'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCUPON2VLRPIS: TFMTBCDField
      FieldName = 'CUPON2VLRPIS'
      Precision = 15
      Size = 2
    end
    object cdsCupomCUPON2VLRCOFINS: TFMTBCDField
      FieldName = 'CUPON2VLRCOFINS'
      Precision = 15
      Size = 2
    end
    object cdsCupomCLIENTEBAIRRO: TStringField
      FieldName = 'CLIENTEBAIRRO'
      FixedChar = True
      Size = 30
    end
    object cdsCupomCONTAICOD: TIntegerField
      FieldName = 'CONTAICOD'
    end
    object cdsCupomMESAICOD: TIntegerField
      FieldName = 'MESAICOD'
    end
    object cdsCupomCUPOCBUSCA: TStringField
      FieldName = 'CUPOCBUSCA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Size = 44
    end
    object cdsCupomPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object cdsCupomRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 15
    end
    object cdsCupomSTNFE: TStringField
      FieldName = 'STNFE'
      Size = 5
    end
    object cdsCupomSEQ_DIA: TIntegerField
      FieldName = 'SEQ_DIA'
    end
  end
  object dsCupom: TDataSource
    DataSet = cdsCupom
    Left = 128
    Top = 152
  end
  object SQLConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDCUPOM'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select *'
      'from CUPOMITEM'
      'where CUPOA13ID = :IDCUPOM ')
    SQLConnection = DMConection.scoDados
    Left = 272
    Top = 128
  end
  object sdsOperacaoEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'Select OPESICOD, OPESA60DESCR,OPESCENTRADASAIDA  from OperacaoEs' +
      'toque'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMConection.scoDados
    Left = 32
    Top = 200
    object sdsOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Required = True
    end
    object sdsOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object sdsOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
  end
  object dspOperacaoEstoque: TDataSetProvider
    DataSet = sdsOperacaoEstoque
    Left = 64
    Top = 200
  end
  object cdsOperacaoEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOperacaoEstoque'
    Left = 96
    Top = 200
    object cdsOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Required = True
    end
    object cdsOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object cdsOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
  end
  object dsOperacaoEstoque: TDataSource
    DataSet = cdsOperacaoEstoque
    Left = 128
    Top = 200
  end
end
