inherited FormTelaEnquadramentoClientes: TFormTelaEnquadramentoClientes
  Left = 22
  Top = 34
  Caption = 'Enquadramento dos Clientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 0
      end
      object GroupBox1: TGroupBox
        Left = 7
        Top = 83
        Width = 745
        Height = 58
        Caption = ' Enquadramento por Inatividade '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label9: TLabel
          Left = 11
          Top = 27
          Width = 547
          Height = 13
          Caption = 
            'Enquadrar como                                                  ' +
            '                                  os Clientes que n'#227'o compram de' +
            'sde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 662
          Top = 19
          Width = 75
          Height = 25
          Caption = '&Executar'
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
          OnClick = SpeedButton1Click
        end
        object ComboTipoInatividade: TRxDBLookupCombo
          Left = 111
          Top = 20
          Width = 235
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSSQLTipoCliente
          ParentFont = False
          TabOrder = 0
        end
        object DataInicialInatividade: TDateEdit
          Left = 565
          Top = 20
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 0
        Width = 745
        Height = 81
        Caption = ' Enquadramento por Atividade '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 4
          Top = 26
          Width = 638
          Height = 13
          Caption = 
            'Enquadrar como                                                  ' +
            '                                  os Clientes que compraram entr' +
            'e                                 e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 4
          Top = 56
          Width = 311
          Height = 13
          Caption = 
            'e que gastaram em compras entre                                 ' +
            ' e  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnOk: TSpeedButton
          Left = 662
          Top = 46
          Width = 75
          Height = 25
          Caption = '&Executar'
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
        object ComboTipoAtividade: TRxDBLookupCombo
          Left = 104
          Top = 19
          Width = 235
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSSQLTipoCliente
          ParentFont = False
          TabOrder = 0
        end
        object DataInicialAtividade: TDateEdit
          Left = 541
          Top = 19
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object DataFinalAtividade: TDateEdit
          Left = 648
          Top = 18
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object EditValor1: TCurrencyEdit
          Left = 206
          Top = 49
          Width = 89
          Height = 21
          AutoSize = False
          TabOrder = 3
        end
        object EditValor2: TCurrencyEdit
          Left = 316
          Top = 49
          Width = 89
          Height = 21
          AutoSize = False
          TabOrder = 4
        end
        object CheckValor: TCheckBox
          Left = 416
          Top = 52
          Width = 153
          Height = 17
          Caption = 'Desconsiderar Valores'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = CheckValorClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 7
        Top = 147
        Width = 745
        Height = 221
        Caption = ' Observa'#231#245'es '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Memo: TMemo
          Left = 2
          Top = 15
          Width = 741
          Height = 204
          Align = alClient
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  object SQLTipoCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TIPOCLIENTE'
      'order by TPCLA30DESCR')
    Macros = <>
    Left = 386
    Top = 7
    object SQLTipoClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.TIPOCLIENTE.TPCLICOD'
    end
    object SQLTipoClienteTPCLA30DESCR: TStringField
      FieldName = 'TPCLA30DESCR'
      Origin = 'DB.TIPOCLIENTE.TPCLA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLTipoCliente: TDataSource
    DataSet = SQLTipoCliente
    Left = 416
    Top = 7
  end
  object SQLAtividade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Update CLIENTE set TPCLICOD=:TPCLICOD'
      'Where '
      '('
      
        'CLIEA13ID in (Select CUPOM.CLIEA13ID from CUPOM Where %MCupomDat' +
        'a group by CLIEA13ID)'
      'or'
      
        'CLIEA13ID in (Select NOTAFISCAL.CLIEA13ID from NOTAFISCAL Where ' +
        '%MNFData group by CLIEA13ID)'
      ')')
    Macros = <
      item
        DataType = ftString
        Name = 'MCupomData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNFData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 264
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPCLICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLAtividadeValor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Update CLIENTE set TPCLICOD=:TPCLICOD'
      'Where '
      '('
      
        'CLIEA13ID in (Select CUPOM.CLIEA13ID from CUPOM Where %MCupomDat' +
        'a group by CLIEA13ID)'
      'or'
      
        'CLIEA13ID in (Select NOTAFISCAL.CLIEA13ID from NOTAFISCAL Where ' +
        '%MNFData group by CLIEA13ID)'
      ')'
      'and'
      '('
      '('
      
        '((Select SUM(C.CUPON2TOTITENS+C.CUPON2ACRESC) from CUPOM C Where' +
        ' %MCupomData1)>=:ValorInicial)'
      'and'
      
        '((Select SUM(C.CUPON2TOTITENS+C.CUPON2ACRESC) from CUPOM C Where' +
        ' %MCupomData2)<=:ValorFinal)'
      ')'
      'or'
      '('
      
        '((Select SUM(N.NOFIN2VLRNOTA) from NOTAFISCAL N Where %MNFData1)' +
        '>=:ValorInicial)'
      'and'
      
        '((Select SUM(N.NOFIN2VLRNOTA) from NOTAFISCAL N Where %MNFData2)' +
        '<=:ValorFinal)'
      ')'
      ')'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MCupomData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNFData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCupomData1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCupomData2'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNFData1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNFData2'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 304
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPCLICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ValorInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ValorFinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ValorInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ValorFinal'
        ParamType = ptUnknown
      end>
  end
  object SQLInatividade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Update CLIENTE set TPCLICOD=:TPCLICOD'
      'Where '
      '('
      
        'Not CLIEA13ID in (Select CUPOM.CLIEA13ID from CUPOM Where %MCupo' +
        'mData group by CLIEA13ID)'
      'and'
      
        'Not CLIEA13ID in (Select NOTAFISCAL.CLIEA13ID from NOTAFISCAL Wh' +
        'ere %MNFData group by CLIEA13ID)'
      ')')
    Macros = <
      item
        DataType = ftString
        Name = 'MCupomData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNFData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 216
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPCLICOD'
        ParamType = ptUnknown
      end>
  end
end
