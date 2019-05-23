inherited FormTelaEnquadramentoClientes: TFormTelaEnquadramentoClientes
  Left = 436
  Top = 125
  Width = 775
  Height = 487
  Caption = 'Enquadramento dos Clientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 759
    Height = 449
    inherited PanelCentral: TPanel
      Top = 62
      Width = 755
      Height = 383
      inherited PanelBarra: TPanel
        Width = 0
        Height = 383
      end
      object GroupBox3: TGroupBox
        Left = 7
        Top = 88
        Width = 745
        Height = 280
        Caption = ' Observa'#231#245'es '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Memo: TMemo
          Left = 2
          Top = 15
          Width = 741
          Height = 263
          Align = alClient
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 0
        Width = 745
        Height = 81
        Caption = ' Gerar Contatos por inclus'#227'o no SPC '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label2: TLabel
          Left = 10
          Top = 23
          Width = 49
          Height = 13
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 9
          Top = 53
          Width = 64
          Height = 13
          Caption = 'Data Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDataFinal: TLabel
          Left = 191
          Top = 53
          Width = 56
          Height = 13
          Caption = 'Data Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDataProxContato: TLabel
          Left = 379
          Top = 53
          Width = 88
          Height = 13
          Caption = 'Data p/Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 394
          Top = 23
          Width = 72
          Height = 13
          Caption = 'Tipo Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboEmpresa: TRxDBLookupCombo
          Left = 76
          Top = 19
          Width = 263
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60RAZAOSOC'
          LookupSource = DSSQLEmpresa
          ParentFont = False
          TabOrder = 0
        end
        object DataInicial: TDateEdit
          Left = 76
          Top = 49
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object DataFinal: TDateEdit
          Left = 251
          Top = 48
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object DataProxContato: TDateEdit
          Left = 473
          Top = 48
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
        object ComboTipoContato: TRxDBLookupCombo
          Left = 473
          Top = 19
          Width = 263
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPCTICOD'
          LookupDisplay = 'TPCTA60DESCR'
          LookupSource = dsSQLTipoContato
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 755
      Height = 62
      inherited PanelCabecalho: TPanel
        Width = 755
        Height = 61
        inherited PanelNavigator: TPanel
          Top = 29
          Width = 755
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 755
            inherited BtnFecharTela: TSpeedButton
              Left = 675
            end
            object BtnOk: TSpeedButton
              Left = 18
              Top = 3
              Width = 113
              Height = 25
              Caption = '&Gerar Contatos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                DE040000424DDE0400000000000036040000280000000C0000000E0000000100
                080000000000A8000000130B0000130B0000000100000001000000000000A7C2
                B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
                88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000000111111111100
                11111111111111111111000B0011111111111111110009090011111111111111
                1100090F10001111111111110009090D0E0011111111110009090B000C060011
                11111100090800000A0200111111000909000011000206001111000708001111
                0003020011111100001111111100030600111111111111111100050200111111
                1111111111110003040011111111111111110001020011111111111111111100
                0011}
              ParentFont = False
              OnClick = BtnOkClick
            end
          end
        end
      end
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 466
    Top = 5
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  EMPRICOD,'
      '  EMPRA60RAZAOSOC'
      'FROM'
      '  EMPRESA'
      'ORDER BY'
      '  EMPRA60RAZAOSOC'
      '')
    Macros = <>
    Left = 438
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
  object dsSQLTipoContato: TDataSource
    DataSet = SQLTipoContato
    Left = 530
    Top = 5
  end
  object SQLTipoContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  TPCTICOD,'
      '  TPCTA60DESCR'
      'FROM'
      '  TIPOCONTATO'
      'ORDER BY'
      '  TPCTA60DESCR'
      '')
    Macros = <>
    Left = 502
    Top = 5
    object SQLTipoContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.TIPOCONTATO.TPCTICOD'
    end
    object SQLTipoContatoTPCTA60DESCR: TStringField
      FieldName = 'TPCTA60DESCR'
      Origin = 'DB.TIPOCONTATO.TPCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLContato: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Contato'
      'where CONTICOD is NULL')
    Macros = <>
    Left = 238
    Top = 5
    object SQLContatoEMPRICOD: TIntegerField
      Tag = 1
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTATO.EMPRICOD'
    end
    object SQLContatoCONTDCONTATO: TDateTimeField
      Tag = 1
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATO.CONTDCONTATO'
    end
    object SQLContatoCONTICOD: TIntegerField
      Tag = 1
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATO.CONTICOD'
    end
    object SQLContatoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CONTATO.VENDICOD'
    end
    object SQLContatoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTATO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContatoTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CONTATO.TPCLICOD'
    end
    object SQLContatoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
      Origin = 'DB.CONTATO.TPCTICOD'
    end
    object SQLContatoTPRTICOD: TIntegerField
      FieldName = 'TPRTICOD'
      Origin = 'DB.CONTATO.TPRTICOD'
    end
    object SQLContatoTPCTICODPROX: TIntegerField
      FieldName = 'TPCTICODPROX'
      Origin = 'DB.CONTATO.TPCTICODPROX'
    end
    object SQLContatoCONTDPROXCONT: TDateTimeField
      FieldName = 'CONTDPROXCONT'
      Origin = 'DB.CONTATO.CONTDPROXCONT'
    end
    object SQLContatoCONTDREAL: TDateTimeField
      FieldName = 'CONTDREAL'
      Origin = 'DB.CONTATO.CONTDREAL'
    end
    object SQLContatoCONTA255OBS: TStringField
      FieldName = 'CONTA255OBS'
      Origin = 'DB.CONTATO.CONTA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLContatoCONTA60CONTATO: TStringField
      FieldName = 'CONTA60CONTATO'
      Origin = 'DB.CONTATO.CONTA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLContatoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CONTATO.USUAICOD'
    end
    object SQLContatoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContatoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTATO.REGISTRO'
    end
  end
  object SQLSPC: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      ' *'
      'from'
      
        ' (CARTAAVISOSPC inner join CUPOM  on CARTAAVISOSPC.CUPOA13ID = C' +
        'UPOM.CUPOA13ID)'
      'where'
      ' (%MData) and  (%MEmpresa)')
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
      end>
    Left = 308
    Top = 5
    object SQLSPCCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CARTAAVISOSPC.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLSPCCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CARTAAVISOSPC.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLSPCCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CARTAAVISOSPC.CTRCINROPARC'
    end
    object SQLSPCCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CARTAAVISOSPC.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLSPCCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CARTAAVISOSPC.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLSPCAVSPA60NOMECLI: TStringField
      FieldName = 'AVSPA60NOMECLI'
      Origin = 'DB.CARTAAVISOSPC.AVSPA60NOMECLI'
      FixedChar = True
      Size = 60
    end
    object SQLSPCAVSPCENVIADO: TStringField
      FieldName = 'AVSPCENVIADO'
      Origin = 'DB.CARTAAVISOSPC.AVSPCENVIADO'
      FixedChar = True
      Size = 1
    end
    object SQLSPCAVSPDPROCESS: TDateTimeField
      FieldName = 'AVSPDPROCESS'
      Origin = 'DB.CARTAAVISOSPC.AVSPDPROCESS'
    end
    object SQLSPCAVSPDVENC: TDateTimeField
      FieldName = 'AVSPDVENC'
      Origin = 'DB.CARTAAVISOSPC.AVSPDVENC'
    end
    object SQLSPCAVSPIDIASATRASO: TIntegerField
      FieldName = 'AVSPIDIASATRASO'
      Origin = 'DB.CARTAAVISOSPC.AVSPIDIASATRASO'
    end
    object SQLSPCPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CARTAAVISOSPC.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSPCREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CARTAAVISOSPC.REGISTRO'
    end
  end
  object dsSQLContato: TDataSource
    DataSet = SQLContato
    Left = 266
    Top = 5
  end
end
