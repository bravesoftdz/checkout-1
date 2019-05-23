inherited FormRelatorioKMDia: TFormRelatorioKMDia
  Caption = 'Listagem de Kilometros Rodados por Funcion'#225'rios'
  ClientWidth = 790
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 790
  end
  inherited ScrollBox: TScrollBox
    Width = 790
    inherited Image1: TImage
      Width = 786
    end
    inherited LblTituloTela: TPanel
      Width = 786
    end
    inherited PanelCentro: TPanel
      Height = 293
      inherited BtnVisualizar: TSpeedButton
        Top = 251
      end
      object Label5: TLabel [1]
        Left = 53
        Top = 207
        Width = 65
        Height = 13
        Caption = 'Funcionario'
        FocusControl = ComboFunc
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited GroupBox1: TGroupBox
        inherited Label3: TLabel
          Left = 44
        end
        inherited Label4: TLabel
          Left = 181
        end
        inherited De: TDateEdit
          Left = 66
          Width = 98
        end
        inherited Ate: TDateEdit
          Left = 215
          Width = 98
        end
      end
      object ComboFunc: TRxDBLookupCombo
        Left = 51
        Top = 222
        Width = 364
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Todas'
        EmptyValue = 'Todas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'FUNCA13ID'
        LookupDisplay = 'FUNCA60NOME'
        LookupSource = DSSQLFunc
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'KMDia.db'
    object TblTemporariaEmpresaCodigo: TIntegerField
      FieldName = 'EmpresaCodigo'
    end
    object TblTemporariaEmpresaRazao: TStringField
      FieldName = 'EmpresaRazao'
      Size = 60
    end
    object TblTemporariaFuncionarioNome: TStringField
      FieldName = 'FuncionarioNome'
      Size = 60
    end
    object TblTemporariaFuncionarioCargo: TStringField
      FieldName = 'FuncionarioCargo'
      Size = 15
    end
    object TblTemporariaData: TDateField
      FieldName = 'Data'
    end
    object TblTemporariaKMInicial: TStringField
      FieldName = 'KMInicial'
      Size = 15
    end
    object TblTemporariaKMFinal: TStringField
      FieldName = 'KMFinal'
      Size = 15
    end
  end
  object SQLKMDIA: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from KMDia'
      'Where '
      '(%MData) and '
      '(%MEmpresa) and'
      '(%MFunc)')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFunc'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 453
    Top = 5
    object SQLKMDIAKMDIA13ID: TStringField
      FieldName = 'KMDIA13ID'
      Origin = 'DB.KMDIA.KMDIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLKMDIAEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.KMDIA.EMPRICOD'
    end
    object SQLKMDIAKMDIICOD: TIntegerField
      FieldName = 'KMDIICOD'
      Origin = 'DB.KMDIA.KMDIICOD'
    end
    object SQLKMDIAKMDIDDATA: TDateTimeField
      FieldName = 'KMDIDDATA'
      Origin = 'DB.KMDIA.KMDIDDATA'
    end
    object SQLKMDIAKMDICSTATUS: TStringField
      FieldName = 'KMDICSTATUS'
      Origin = 'DB.KMDIA.KMDICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLKMDIAKMDIIINICIAL: TIntegerField
      FieldName = 'KMDIIINICIAL'
      Origin = 'DB.KMDIA.KMDIIINICIAL'
    end
    object SQLKMDIAKMDIIFINAL: TIntegerField
      FieldName = 'KMDIIFINAL'
      Origin = 'DB.KMDIA.KMDIIFINAL'
    end
    object SQLKMDIAREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.KMDIA.REGISTRO'
    end
    object SQLKMDIAPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.KMDIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLKMDIAFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.KMDIA.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLKMDIAFuncionarioNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FuncionarioNome'
      LookupDataSet = SQLFunc
      LookupKeyFields = 'FUNCA13ID'
      LookupResultField = 'FUNCA60NOME'
      KeyFields = 'FUNCA13ID'
      Size = 60
      Lookup = True
    end
    object SQLKMDIAFuncionarioCargo: TStringField
      FieldKind = fkLookup
      FieldName = 'FuncionarioCargo'
      LookupDataSet = SQLFunc
      LookupKeyFields = 'FUNCA13ID'
      LookupResultField = 'FUNCA15CARGOFUNCAO'
      KeyFields = 'FUNCA13ID'
      Size = 15
      Lookup = True
    end
  end
  object SQLFunc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Funcionario'
      'Order by FUNCA60NOME')
    Macros = <>
    Left = 496
    Top = 5
    object SQLFuncFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.FUNCIONARIO.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFuncEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.FUNCIONARIO.EMPRICOD'
    end
    object SQLFuncTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.FUNCIONARIO.TERMICOD'
    end
    object SQLFuncFUNCICOD: TIntegerField
      FieldName = 'FUNCICOD'
      Origin = 'DB.FUNCIONARIO.FUNCICOD'
    end
    object SQLFuncFUNCA60NOME: TStringField
      FieldName = 'FUNCA60NOME'
      Origin = 'DB.FUNCIONARIO.FUNCA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCCAUTONOMO: TStringField
      FieldName = 'FUNCCAUTONOMO'
      Origin = 'DB.FUNCIONARIO.FUNCCAUTONOMO'
      FixedChar = True
      Size = 1
    end
    object SQLFuncPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FUNCIONARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLFuncREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FUNCIONARIO.REGISTRO'
    end
    object SQLFuncFUNCA11CPF: TStringField
      FieldName = 'FUNCA11CPF'
      Origin = 'DB.FUNCIONARIO.FUNCA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLFuncFUNCA14CNPJ: TStringField
      FieldName = 'FUNCA14CNPJ'
      Origin = 'DB.FUNCIONARIO.FUNCA14CNPJ'
      FixedChar = True
      Size = 14
    end
    object SQLFuncFUNCA15INSS: TStringField
      FieldName = 'FUNCA15INSS'
      Origin = 'DB.FUNCIONARIO.FUNCA15INSS'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA60ENDRES: TStringField
      FieldName = 'FUNCA60ENDRES'
      Origin = 'DB.FUNCIONARIO.FUNCA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCN2PERCCOMISSAO: TBCDField
      FieldName = 'FUNCN2PERCCOMISSAO'
      Origin = 'DB.FUNCIONARIO.FUNCN2PERCCOMISSAO'
      Precision = 15
      Size = 3
    end
    object SQLFuncVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.FUNCIONARIO.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFuncBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.FUNCIONARIO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLFuncFUNC5AGENCIA: TStringField
      FieldName = 'FUNC5AGENCIA'
      Origin = 'DB.FUNCIONARIO.FUNC5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLFuncFUNCA10CELULAR: TStringField
      FieldName = 'FUNCA10CELULAR'
      Origin = 'DB.FUNCIONARIO.FUNCA10CELULAR'
      FixedChar = True
      Size = 10
    end
    object SQLFuncFUNCA10CONTA: TStringField
      FieldName = 'FUNCA10CONTA'
      Origin = 'DB.FUNCIONARIO.FUNCA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLFuncFUNCA10FONE1: TStringField
      FieldName = 'FUNCA10FONE1'
      Origin = 'DB.FUNCIONARIO.FUNCA10FONE1'
      FixedChar = True
      Size = 10
    end
    object SQLFuncFUNCA10FONE2: TStringField
      FieldName = 'FUNCA10FONE2'
      Origin = 'DB.FUNCIONARIO.FUNCA10FONE2'
      FixedChar = True
      Size = 10
    end
    object SQLFuncFUNCA15CARGOFUNCAO: TStringField
      FieldName = 'FUNCA15CARGOFUNCAO'
      Origin = 'DB.FUNCIONARIO.FUNCA15CARGOFUNCAO'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA15CERTRESERVISTA: TStringField
      FieldName = 'FUNCA15CERTRESERVISTA'
      Origin = 'DB.FUNCIONARIO.FUNCA15CERTRESERVISTA'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA15CNH: TStringField
      FieldName = 'FUNCA15CNH'
      Origin = 'DB.FUNCIONARIO.FUNCA15CNH'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA15DEPARTAMENTO: TStringField
      FieldName = 'FUNCA15DEPARTAMENTO'
      Origin = 'DB.FUNCIONARIO.FUNCA15DEPARTAMENTO'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA15INSCEST: TStringField
      FieldName = 'FUNCA15INSCEST'
      Origin = 'DB.FUNCIONARIO.FUNCA15INSCEST'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA15INSMUN: TStringField
      FieldName = 'FUNCA15INSMUN'
      Origin = 'DB.FUNCIONARIO.FUNCA15INSMUN'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA15ORGEMISSOR: TStringField
      FieldName = 'FUNCA15ORGEMISSOR'
      Origin = 'DB.FUNCIONARIO.FUNCA15ORGEMISSOR'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA15SETOR: TStringField
      FieldName = 'FUNCA15SETOR'
      Origin = 'DB.FUNCIONARIO.FUNCA15SETOR'
      FixedChar = True
      Size = 15
    end
    object SQLFuncFUNCA2UF: TStringField
      FieldName = 'FUNCA2UF'
      Origin = 'DB.FUNCIONARIO.FUNCA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLFuncFUNCA30BAIRRO: TStringField
      FieldName = 'FUNCA30BAIRRO'
      Origin = 'DB.FUNCIONARIO.FUNCA30BAIRRO'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30EMAIL: TStringField
      FieldName = 'FUNCA30EMAIL'
      Origin = 'DB.FUNCIONARIO.FUNCA30EMAIL'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30HORARIOTRABALHO: TStringField
      FieldName = 'FUNCA30HORARIOTRABALHO'
      Origin = 'DB.FUNCIONARIO.FUNCA30HORARIOTRABALHO'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30NACIONALIDADE: TStringField
      FieldName = 'FUNCA30NACIONALIDADE'
      Origin = 'DB.FUNCIONARIO.FUNCA30NACIONALIDADE'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30NATURALIDADE: TStringField
      FieldName = 'FUNCA30NATURALIDADE'
      Origin = 'DB.FUNCIONARIO.FUNCA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30RECADO: TStringField
      FieldName = 'FUNCA30RECADO'
      Origin = 'DB.FUNCIONARIO.FUNCA30RECADO'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30RG: TStringField
      FieldName = 'FUNCA30RG'
      Origin = 'DB.FUNCIONARIO.FUNCA30RG'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30SISTEMATIC: TStringField
      FieldName = 'FUNCA30SISTEMATIC'
      Origin = 'DB.FUNCIONARIO.FUNCA30SISTEMATIC'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30TITELEITOR: TStringField
      FieldName = 'FUNCA30TITELEITOR'
      Origin = 'DB.FUNCIONARIO.FUNCA30TITELEITOR'
      FixedChar = True
      Size = 30
    end
    object SQLFuncFUNCA30URL: TStringField
      FieldName = 'FUNCA30URL'
      Origin = 'DB.FUNCIONARIO.FUNCA30URL'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCA60CIDADE: TStringField
      FieldName = 'FUNCA60CIDADE'
      Origin = 'DB.FUNCIONARIO.FUNCA60CIDADE'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCA60DEPARTFILIAL: TStringField
      FieldName = 'FUNCA60DEPARTFILIAL'
      Origin = 'DB.FUNCIONARIO.FUNCA60DEPARTFILIAL'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCA60ENDFUNC: TStringField
      FieldName = 'FUNCA60ENDFUNC'
      Origin = 'DB.FUNCIONARIO.FUNCA60ENDFUNC'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCA60NOMEFANT: TStringField
      FieldName = 'FUNCA60NOMEFANT'
      Origin = 'DB.FUNCIONARIO.FUNCA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCA60TITULAR: TStringField
      FieldName = 'FUNCA60TITULAR'
      Origin = 'DB.FUNCIONARIO.FUNCA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLFuncFUNCA8CEP: TStringField
      FieldName = 'FUNCA8CEP'
      Origin = 'DB.FUNCIONARIO.FUNCA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLFuncFUNCCTIPO: TStringField
      FieldName = 'FUNCCTIPO'
      Origin = 'DB.FUNCIONARIO.FUNCCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLFuncFUNCCTIPOREMUN: TStringField
      FieldName = 'FUNCCTIPOREMUN'
      Origin = 'DB.FUNCIONARIO.FUNCCTIPOREMUN'
      FixedChar = True
      Size = 1
    end
    object SQLFuncFUNCDABERTCONTA: TDateTimeField
      FieldName = 'FUNCDABERTCONTA'
      Origin = 'DB.FUNCIONARIO.FUNCDABERTCONTA'
    end
    object SQLFuncFUNCDADMISSAO: TDateTimeField
      FieldName = 'FUNCDADMISSAO'
      Origin = 'DB.FUNCIONARIO.FUNCDADMISSAO'
    end
    object SQLFuncFUNCDALTCONTRAT: TDateTimeField
      FieldName = 'FUNCDALTCONTRAT'
      Origin = 'DB.FUNCIONARIO.FUNCDALTCONTRAT'
    end
    object SQLFuncFUNCDCONSTITICAO: TDateTimeField
      FieldName = 'FUNCDCONSTITICAO'
      Origin = 'DB.FUNCIONARIO.FUNCDCONSTITICAO'
    end
    object SQLFuncFUNCDDEMISSAO: TDateTimeField
      FieldName = 'FUNCDDEMISSAO'
      Origin = 'DB.FUNCIONARIO.FUNCDDEMISSAO'
    end
    object SQLFuncFUNCN2PERCENCARGOS: TBCDField
      FieldName = 'FUNCN2PERCENCARGOS'
      Origin = 'DB.FUNCIONARIO.FUNCN2PERCENCARGOS'
      Precision = 15
      Size = 2
    end
    object SQLFuncFUNCN3VLRREMUN: TBCDField
      FieldName = 'FUNCN3VLRREMUN'
      Origin = 'DB.FUNCIONARIO.FUNCN3VLRREMUN'
      Precision = 15
      Size = 3
    end
    object SQLFuncFUNCNVLRRANCHO: TBCDField
      FieldName = 'FUNCNVLRRANCHO'
      Origin = 'DB.FUNCIONARIO.FUNCNVLRRANCHO'
      Precision = 15
      Size = 3
    end
    object SQLFuncFUNCNVLRVR: TBCDField
      FieldName = 'FUNCNVLRVR'
      Origin = 'DB.FUNCIONARIO.FUNCNVLRVR'
      Precision = 15
      Size = 3
    end
    object SQLFuncFUNCNVLRVT: TBCDField
      FieldName = 'FUNCNVLRVT'
      Origin = 'DB.FUNCIONARIO.FUNCNVLRVT'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLFunc: TDataSource
    DataSet = SQLFunc
    Left = 524
    Top = 5
  end
  object Pipe: TppBDEPipeline
    DataSource = DSSQSLKMDIA
    UserName = 'Pipe'
    Left = 592
    Top = 5
    object PipeppField1: TppField
      FieldAlias = 'KMDIA13ID'
      FieldName = 'KMDIA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeppField2: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeppField3: TppField
      FieldAlias = 'KMDIICOD'
      FieldName = 'KMDIICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeppField4: TppField
      FieldAlias = 'KMDIDDATA'
      FieldName = 'KMDIDDATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeppField5: TppField
      FieldAlias = 'KMDICSTATUS'
      FieldName = 'KMDICSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeppField6: TppField
      FieldAlias = 'KMDIIINICIAL'
      FieldName = 'KMDIIINICIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeppField7: TppField
      FieldAlias = 'KMDIIFINAL'
      FieldName = 'KMDIIFINAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeppField8: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeppField9: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeppField10: TppField
      FieldAlias = 'FUNCA13ID'
      FieldName = 'FUNCA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeppField11: TppField
      FieldAlias = 'FuncionarioNome'
      FieldName = 'FuncionarioNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeppField12: TppField
      FieldAlias = 'FuncionarioCargo'
      FieldName = 'FuncionarioCargo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object DSSQSLKMDIA: TDataSource
    DataSet = SQLKMDIA
    Left = 425
    Top = 5
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = Pipe
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
    Left = 621
    Top = 5
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Listagem de Kilometragem Di'#225'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7451
        mmLeft = 7938
        mmTop = 6879
        mmWidth = 87122
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 33867
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'KM Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 43127
        mmTop = 33867
        mmWidth = 16468
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'KM Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 87048
        mmTop = 33867
        mmWidth = 14732
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Funcionario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 20373
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'FuncionarioNome'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3969
        mmLeft = 32279
        mmTop = 20373
        mmWidth = 85196
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Fun'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 7938
        mmTop = 24871
        mmWidth = 12531
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FuncionarioCargo'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3969
        mmLeft = 32279
        mmTop = 24871
        mmWidth = 85196
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'KMDIDDATA'
        DataPipeline = Pipe
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4022
        mmLeft = 7673
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'KMDIIINICIAL'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3969
        mmLeft = 43127
        mmTop = 265
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'KMDIIFINAL'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3969
        mmLeft = 87048
        mmTop = 794
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FuncionarioNome'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 20638
        mmWidth = 85196
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 17463
        mmTop = 20108
        mmWidth = 84931
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = '- Eu'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 7938
        mmTop = 3704
        mmWidth = 6435
        BandType = 7
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'FuncionarioNome'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4022
        mmLeft = 16669
        mmTop = 3704
        mmWidth = 85196
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = ', confirmo como verdadeiras as kilometragens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 104775
        mmTop = 3704
        mmWidth = 72136
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'realizadas nas datas acima descriminadas.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 10054
        mmTop = 8202
        mmWidth = 67225
        BandType = 7
      end
    end
  end
end
