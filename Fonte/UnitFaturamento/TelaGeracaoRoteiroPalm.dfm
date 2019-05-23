inherited FormTelaGeracaoRoteiro: TFormTelaGeracaoRoteiro
  Left = 51
  Top = 30
  Width = 683
  Height = 527
  Caption = 'Gera'#231#227'o de Roteiros para Palm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 667
    Height = 489
    inherited PanelCentral: TPanel
      Width = 663
      Height = 405
      inherited PanelBarra: TPanel
        Top = 237
        Width = 1
        Height = 150
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 663
        Height = 237
        Align = alTop
        Color = 16249066
        TabOrder = 1
        object Label1: TLabel
          Left = 10
          Top = 2
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
        object Label6: TLabel
          Left = 10
          Top = 80
          Width = 54
          Height = 13
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 42
          Width = 27
          Height = 13
          Caption = 'Rota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 11
          Top = 193
          Width = 115
          Height = 13
          Caption = 'Nro Semana (0 a 99)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 134
          Top = 193
          Width = 121
          Height = 13
          Caption = 'Dia da Semana(1 a 7)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 10
          Top = 176
          Width = 206
          Height = 13
          Caption = 'Gerar conforme informa'#231#245'es abaixo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 264
          Top = 194
          Width = 28
          Height = 13
          Caption = 'Palm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboEmpresa: TRxDBLookupCombo
          Left = 7
          Top = 16
          Width = 441
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todas'
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60RAZAOSOC'
          LookupSource = DSSQLEmpresa
          TabOrder = 0
        end
        object ComboVendedor: TRxDBLookupCombo
          Left = 7
          Top = 94
          Width = 440
          Height = 22
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todos'
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLVendedor
          TabOrder = 2
        end
        object RadioOrdem: TRadioGroup
          Left = 7
          Top = 121
          Width = 442
          Height = 39
          Caption = ' Ordenar por '
          Columns = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Rota + Seq.Di'#225'ria'
            'Vendedor'
            'ID Cliente')
          ParentFont = False
          TabOrder = 3
        end
        object ComboRota: TRxDBLookupCombo
          Left = 7
          Top = 56
          Width = 441
          Height = 22
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todas'
          LookupField = 'ROTAICOD'
          LookupDisplay = 'ROTAICOD;ROTAA60NOME'
          LookupSource = DSSQLRota
          TabOrder = 1
        end
        object EditNroSemana: TEdit
          Left = 8
          Top = 207
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object EditDiaSemana: TEdit
          Left = 131
          Top = 207
          Width = 128
          Height = 21
          TabOrder = 5
        end
        object ComboPalm: TRxDBLookupCombo
          Left = 261
          Top = 207
          Width = 188
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Selecione um Palm'
          LookupField = 'PALMICOD'
          LookupDisplay = 'PALMA60DESCR'
          LookupSource = DSSQLPalm
          TabOrder = 6
        end
      end
      object DBGridLista: TDBGrid
        Left = 1
        Top = 237
        Width = 662
        Height = 150
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSTblCliente
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PALMICOD'
            Title.Caption = 'Palm'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ROTAICOD'
            Title.Caption = 'Rota'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDICOD'
            Title.Caption = 'Vend'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ROTEINROSEMANA'
            Title.Caption = 'Semana'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ROTEINRODIASEMANA'
            Title.Caption = 'Dia'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA13ID'
            Title.Caption = 'ID Cliente'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ROTEISEQDIARIA'
            Title.Caption = 'Seq.Di'#225'ria'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Caption = 'Cliente'
            Width = 313
            Visible = True
          end>
      end
      object Progress: TProgressBar
        Left = 0
        Top = 387
        Width = 663
        Height = 18
        Align = alBottom
        TabOrder = 3
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 663
      inherited PanelCabecalho: TPanel
        Width = 663
        inherited PanelNavigator: TPanel
          Width = 663
          object BtnSelecionarDoc: TSpeedButton [0]
            Tag = 3
            Left = 2
            Top = 3
            Width = 160
            Height = 25
            Cursor = crHandPoint
            Hint = 'Fechar Tela'
            Caption = '&Selecionar Roteiro'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              96040000424D9604000000000000360000002800000012000000140000000100
              18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
              B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
              0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
              A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
              00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
              9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
              E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
              B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
              0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
              86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
              B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
              000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
              9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
              E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
              B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
              9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
              A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
              869000000084A8B469869000000084A8B4698690000000698690546B73000000
              000000000000000000000000000000000000000099B7C069869000000084A8B4
              546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
              E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
              000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
              E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
              86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
              0000000000000000000000000000000000000000AAC3CA698690000000000000
              0000000000000000000000000000000000000000000000000000000000E0E4E0
              E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
              E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
              E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentFont = False
            Spacing = 10
            OnClick = BtnSelecionarDocClick
          end
          object BtnGeraNotas: TSpeedButton [1]
            Tag = 3
            Left = 165
            Top = 3
            Width = 160
            Height = 25
            Cursor = crHandPoint
            Hint = 'Gerar Notas'
            Caption = '&Gerar'
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
            ParentShowHint = False
            ShowHint = True
            Spacing = 10
            OnClick = BtnGeraNotasClick
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 663
          end
        end
      end
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select EMPRICOD, EMPRA60RAZAOSOC, EMPRA2UF from EMPRESA')
    Macros = <>
    Left = 348
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
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 376
    Top = 8
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select VENDICOD, VENDA60NOME from VENDEDOR')
    Macros = <>
    Left = 516
    Top = 8
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
    DataSet = SQLVendedor
    Left = 544
    Top = 8
  end
  object SQLRota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ROTA')
    Macros = <>
    Left = 460
    Top = 8
    object SQLRotaROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.ROTA.ROTAICOD'
    end
    object SQLRotaROTAA60NOME: TStringField
      FieldName = 'ROTAA60NOME'
      Origin = 'DB.ROTA.ROTAA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLRota: TDataSource
    DataSet = SQLRota
    Left = 488
    Top = 8
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Cliente'
      'Where'
      '(%MEmpresa) and'
      '(%MRota) and'
      '(%MVendedor)'
      'Order by %MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MRota'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 216
    Top = 8
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA5FISJURID: TStringField
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object SQLClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECSEXO: TStringField
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA60PROFISSAO: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60URL: TStringField
      FieldName = 'CLIEA60URL'
      Origin = 'DB.CLIENTE.CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEN2RENDA: TBCDField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEN2LIMITECRED: TBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object SQLClienteCLIECESTADOCIVIL: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      Origin = 'DB.CLIENTE.CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA60CONJUGE: TStringField
      FieldName = 'CLIEA60CONJUGE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONJUGEMAE: TStringField
      FieldName = 'CLIEA60CONJUGEMAE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEN2CONJUGERENDA: TBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEDNASCCONJUGE: TDateTimeField
      FieldName = 'CLIEDNASCCONJUGE'
      Origin = 'DB.CLIENTE.CLIEDNASCCONJUGE'
    end
    object SQLClienteCLIEA60CONJUGEEMPR: TStringField
      FieldName = 'CLIEA60CONJUGEEMPR'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15CONJFONEMPR: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      Origin = 'DB.CLIENTE.CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA60EMPRESA: TStringField
      FieldName = 'CLIEA60EMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDEMPRESA: TStringField
      FieldName = 'CLIEA60ENDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIEMPRESA: TStringField
      FieldName = 'CLIEA60BAIEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDEMPRESA: TStringField
      FieldName = 'CLIEA60CIDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFEMPRESA: TStringField
      FieldName = 'CLIEA2UFEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPEMPRESA: TStringField
      FieldName = 'CLIEA8CEPEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA8CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEDAMISEMPRESA: TDateTimeField
      FieldName = 'CLIEDAMISEMPRESA'
      Origin = 'DB.CLIENTE.CLIEDAMISEMPRESA'
    end
    object SQLClienteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLClienteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDABERTCONTA: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
    end
    object SQLClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLClientePROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.CLIENTE.PROFICOD'
    end
    object SQLClienteVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CLIENTE.VENDICOD'
    end
    object SQLClienteCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object SQLClienteCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object SQLClienteCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object SQLClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object SQLClienteCLIECRECAVISATRASO: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      Origin = 'DB.CLIENTE.CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA30NATURALIDADE: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      Origin = 'DB.CLIENTE.CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECRECEBECARTAO: TStringField
      FieldName = 'CLIECRECEBECARTAO'
      Origin = 'DB.CLIENTE.CLIECRECEBECARTAO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEDENVCARTIMP: TDateTimeField
      FieldName = 'CLIEDENVCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDENVCARTIMP'
    end
    object SQLClienteCLIEDRETCARTIMP: TDateTimeField
      FieldName = 'CLIEDRETCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDRETCARTIMP'
    end
    object SQLClienteCLIEDENVCARTCLI: TDateTimeField
      FieldName = 'CLIEDENVCARTCLI'
      Origin = 'DB.CLIENTE.CLIEDENVCARTCLI'
    end
    object SQLClienteCLIEA10CODCONV: TStringField
      FieldName = 'CLIEA10CODCONV'
      Origin = 'DB.CLIENTE.CLIEA10CODCONV'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA10CODANT: TStringField
      FieldName = 'CLIEA10CODANT'
      Origin = 'DB.CLIENTE.CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA20NROCARTCRED: TStringField
      FieldName = 'CLIEA20NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA20NROCARTCRED'
      FixedChar = True
    end
    object SQLClientePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLClienteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTE.REGISTRO'
    end
    object SQLClienteCLIEA35NROCARTCRED: TStringField
      FieldName = 'CLIEA35NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA35NROCARTCRED'
      FixedChar = True
      Size = 35
    end
    object SQLClienteCLIEA60EMAILCONJUG: TStringField
      FieldName = 'CLIEA60EMAILCONJUG'
      Origin = 'DB.CLIENTE.CLIEA60EMAILCONJUG'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDCASAMENTO: TDateTimeField
      FieldName = 'CLIEDCASAMENTO'
      Origin = 'DB.CLIENTE.CLIEDCASAMENTO'
    end
    object SQLClienteTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CLIENTE.TPRCICOD'
    end
    object SQLClienteCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      Origin = 'DB.CLIENTE.CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      Origin = 'DB.CLIENTE.CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      Origin = 'DB.CLIENTE.CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      Origin = 'DB.CLIENTE.CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      Origin = 'DB.CLIENTE.CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object SQLClientePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CLIENTE.PLRCICOD'
    end
    object SQLClienteCLIEA30TEMPOMORADIA: TStringField
      FieldName = 'CLIEA30TEMPOMORADIA'
      Origin = 'DB.CLIENTE.CLIEA30TEMPOMORADIA'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECCASAPROPRIA: TStringField
      FieldName = 'CLIECCASAPROPRIA'
      Origin = 'DB.CLIENTE.CLIECCASAPROPRIA'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA30LOCALIMOV1: TStringField
      FieldName = 'CLIEA30LOCALIMOV1'
      Origin = 'DB.CLIENTE.CLIEA30LOCALIMOV1'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30LOCALIMOV2: TStringField
      FieldName = 'CLIEA30LOCALIMOV2'
      Origin = 'DB.CLIENTE.CLIEA30LOCALIMOV2'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30MODVEICULO: TStringField
      FieldName = 'CLIEA30MODVEICULO'
      Origin = 'DB.CLIENTE.CLIEA30MODVEICULO'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30TIPOIMOV1: TStringField
      FieldName = 'CLIEA30TIPOIMOV1'
      Origin = 'DB.CLIENTE.CLIEA30TIPOIMOV1'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA30TIPOIMOV2: TStringField
      FieldName = 'CLIEA30TIPOIMOV2'
      Origin = 'DB.CLIENTE.CLIEA30TIPOIMOV2'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIEA4ANOVEICULO: TStringField
      FieldName = 'CLIEA4ANOVEICULO'
      Origin = 'DB.CLIENTE.CLIEA4ANOVEICULO'
      FixedChar = True
      Size = 4
    end
    object SQLClienteCLIEA60IMOB: TStringField
      FieldName = 'CLIEA60IMOB'
      Origin = 'DB.CLIENTE.CLIEA60IMOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA8PLACAVEICULO: TStringField
      FieldName = 'CLIEA8PLACAVEICULO'
      Origin = 'DB.CLIENTE.CLIEA8PLACAVEICULO'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIECSTATUSIMOV1: TStringField
      FieldName = 'CLIECSTATUSIMOV1'
      Origin = 'DB.CLIENTE.CLIECSTATUSIMOV1'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIECSTATUSIMOV2: TStringField
      FieldName = 'CLIECSTATUSIMOV2'
      Origin = 'DB.CLIENTE.CLIECSTATUSIMOV2'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField
      FieldName = 'CLIEIDIAVCTOCARTAO'
      Origin = 'DB.CLIENTE.CLIEIDIAVCTOCARTAO'
    end
    object SQLClienteCLIEN2VLRALUGUEL: TBCDField
      FieldName = 'CLIEN2VLRALUGUEL'
      Origin = 'DB.CLIENTE.CLIEN2VLRALUGUEL'
      Precision = 15
      Size = 2
    end
    object SQLClienteROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.CLIENTE.ROTAICOD'
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 244
    Top = 8
  end
  object DSTblCliente: TDataSource
    DataSet = TblCliente
    Left = 148
    Top = 8
  end
  object TblCliente: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'ClienteRota.DB'
    Left = 176
    Top = 8
    object TblClientePALMICOD: TIntegerField
      FieldName = 'PALMICOD'
    end
    object TblClienteROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
    end
    object TblClienteVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblClienteROTEINROSEMANA: TIntegerField
      FieldName = 'ROTEINROSEMANA'
    end
    object TblClienteROTEINRODIASEMANA: TIntegerField
      FieldName = 'ROTEINRODIASEMANA'
    end
    object TblClienteROTEISEQDIARIA: TIntegerField
      FieldName = 'ROTEISEQDIARIA'
    end
    object TblClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 60
    end
  end
  object SQLRoteiro: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Roteiro')
    Macros = <>
    Left = 64
    Top = 8
    object SQLRoteiroROTEICOD: TIntegerField
      FieldName = 'ROTEICOD'
      Origin = 'DB.ROTEIRO.ROTEICOD'
    end
    object SQLRoteiroPALMICOD: TIntegerField
      FieldName = 'PALMICOD'
      Origin = 'DB.ROTEIRO.PALMICOD'
    end
    object SQLRoteiroROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.ROTEIRO.ROTAICOD'
    end
    object SQLRoteiroVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.ROTEIRO.VENDICOD'
    end
    object SQLRoteiroCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.ROTEIRO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRoteiroROTEINROSEMANA: TIntegerField
      FieldName = 'ROTEINROSEMANA'
      Origin = 'DB.ROTEIRO.ROTEINROSEMANA'
    end
    object SQLRoteiroROTEINRODIASEMANA: TIntegerField
      FieldName = 'ROTEINRODIASEMANA'
      Origin = 'DB.ROTEIRO.ROTEINRODIASEMANA'
    end
    object SQLRoteiroROTEISEQDIARIA: TIntegerField
      FieldName = 'ROTEISEQDIARIA'
      Origin = 'DB.ROTEIRO.ROTEISEQDIARIA'
    end
    object SQLRoteiroREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.ROTEIRO.REGISTRO'
    end
    object SQLRoteiroPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.ROTEIRO.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPalm: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PALM')
    Macros = <>
    Left = 404
    Top = 8
    object SQLPalmPALMICOD: TIntegerField
      FieldName = 'PALMICOD'
      Origin = 'DB.PALM.PALMICOD'
    end
    object SQLPalmPALMA60DESCR: TStringField
      FieldName = 'PALMA60DESCR'
      Origin = 'DB.PALM.PALMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPalm: TDataSource
    DataSet = SQLPalm
    Left = 432
    Top = 8
  end
end
