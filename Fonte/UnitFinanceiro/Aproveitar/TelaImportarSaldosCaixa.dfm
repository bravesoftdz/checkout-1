inherited FormTelaImportarSaldosCaixa: TFormTelaImportarSaldosCaixa
  Left = 229
  Top = 127
  Caption = 'Importar Saldos de Caixa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited PanelNavigator: TPanel
        object BtnBaixarDoc: TSpeedButton
          Tag = 3
          Left = 4
          Top = 3
          Width = 76
          Height = 25
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = '&Importar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            92050000424D860900000000000036080000280000000C0000000E0000000100
            1000030000005001000000000000000000000001000000000000007C0000E003
            00001F00000000000000A7C2B300588C7000719D85004D7B620086AB9700436C
            56009EBDA2007497780084AC88004A765E006685690055886D00518268005080
            660056896D003E634F00FFFFFF00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F00000C320000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B042
            B0420000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B0420A3687250000FF7F
            FF7FFF7FFF7FFF7FFF7F0000B042B0420932E9310000FF7FFF7FFF7FFF7FFF7F
            0000B042B0420C3200000A36A7290000FF7FFF7FFF7FFF7F0000B0424E3A0000
            0000C82D2A360000FF7FFF7FFF7F0000B042B04200000000FF7F00002A36A729
            0000FF7FFF7F0000F34E4E3A0000FF7FFF7F00006D422A360000FF7FFF7FFF7F
            00000000FF7FFF7FFF7FFF7F00006D42A7290000FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7F0000B04A2A360000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
            6D42E92D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000014572A360000FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7F}
          ParentFont = False
          Spacing = 10
          OnClick = BtnBaixarDocClick
        end
      end
    end
    inherited PanelCentral: TPanel
      object Label1: TLabel [0]
        Left = 8
        Top = 6
        Width = 100
        Height = 13
        Caption = 'Data Fechamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 8
        Top = 81
        Width = 50
        Height = 13
        Caption = 'Terminal'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 8
        Top = 44
        Width = 93
        Height = 13
        Caption = 'Empresa Origem'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Width = 0
        TabOrder = 3
      end
      object DtaFechto: TDateEdit
        Left = 8
        Top = 20
        Width = 100
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 0
      end
      object ComboEmpresa: TRxDBLookupCombo
        Left = 8
        Top = 59
        Width = 449
        Height = 21
        DropDownCount = 8
        LookupField = 'EMPRICOD'
        LookupDisplay = 'EMPRA60RAZAOSOC'
        LookupSource = DSSQLEmpresa
        TabOrder = 1
      end
      object ComboTerminal: TRxDBLookupCombo
        Left = 8
        Top = 96
        Width = 449
        Height = 21
        DropDownCount = 8
        LookupField = 'TERMICOD'
        LookupDisplay = 'TERMA60DESCR'
        LookupSource = DSSQLTerminal
        TabOrder = 2
      end
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'order by EMPRA60RAZAOSOC')
    Macros = <>
    Left = 232
    Top = 5
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
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 260
    Top = 5
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLEmpresa
    SQL.Strings = (
      'select * from TERMINAL'
      'where EMPRICOD =:EMPRICOD'
      'order by TERMA60DESCR')
    Macros = <>
    Left = 288
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRICOD'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 316
    Top = 5
  end
  object SQLFechamentoCaixa: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from '
      '  FECHAMENTOCAIXA'
      'where '
      '  (%MEmpresa) and '
      '  (%MTerminal) and '
      '  (%MData) and'
      '  FECXCIMPTESOURARIA <> '#39'S'#39' ')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 192
    Top = 5
    object SQLFechamentoCaixaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.FECHAMENTOCAIXA.EMPRICOD'
    end
    object SQLFechamentoCaixaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.FECHAMENTOCAIXA.TERMICOD'
    end
    object SQLFechamentoCaixaFECXDLANC: TDateTimeField
      FieldName = 'FECXDLANC'
      Origin = 'DB.FECHAMENTOCAIXA.FECXDLANC'
    end
    object SQLFechamentoCaixaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.FECHAMENTOCAIXA.NUMEICOD'
    end
    object SQLFechamentoCaixaFECXN2VALOR: TBCDField
      FieldName = 'FECXN2VALOR'
      Origin = 'DB.FECHAMENTOCAIXA.FECXN2VALOR'
      Precision = 15
      Size = 3
    end
    object SQLFechamentoCaixaFECXCIMPTESOURARIA: TStringField
      FieldName = 'FECXCIMPTESOURARIA'
      Origin = 'DB.FECHAMENTOCAIXA.FECXCIMPTESOURARIA'
      FixedChar = True
      Size = 1
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
  object SQLTesouraria: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from TESOURARIA')
    Macros = <>
    Left = 352
    Top = 5
    object SQLTesourariaTESOA13ID: TStringField
      FieldName = 'TESOA13ID'
      Origin = 'DB.TESOURARIA.TESOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTesourariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TESOURARIA.EMPRICOD'
    end
    object SQLTesourariaTESOICOD: TIntegerField
      FieldName = 'TESOICOD'
      Origin = 'DB.TESOURARIA.TESOICOD'
    end
    object SQLTesourariaTESODLANC: TDateTimeField
      FieldName = 'TESODLANC'
      Origin = 'DB.TESOURARIA.TESODLANC'
    end
    object SQLTesourariaTESOCDEBCRED: TStringField
      FieldName = 'TESOCDEBCRED'
      Origin = 'DB.TESOURARIA.TESOCDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLTesourariaTESON2VLRDEB: TBCDField
      FieldName = 'TESON2VLRDEB'
      Origin = 'DB.TESOURARIA.TESON2VLRDEB'
      Precision = 15
      Size = 3
    end
    object SQLTesourariaTESON2VLRCRED: TBCDField
      FieldName = 'TESON2VLRCRED'
      Origin = 'DB.TESOURARIA.TESON2VLRCRED'
      Precision = 15
      Size = 3
    end
    object SQLTesourariaTESOA254HIST: TStringField
      FieldName = 'TESOA254HIST'
      Origin = 'DB.TESOURARIA.TESOA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLTesourariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.TESOURARIA.NUMEICOD'
    end
    object SQLTesourariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TESOURARIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTesourariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TESOURARIA.REGISTRO'
    end
  end
end
