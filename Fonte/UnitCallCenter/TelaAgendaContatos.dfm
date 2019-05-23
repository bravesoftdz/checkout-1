inherited FormTelaAgendaContatos: TFormTelaAgendaContatos
  Left = 91
  Top = 70
  Width = 785
  Height = 568
  Caption = 'Agenda de Contatos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 777
    Height = 541
    inherited PanelCabecalho: TPanel
      Width = 773
      inherited PanelTitulo2: TPanel
        Width = 773
        inherited PanelRegistroAtual: TPanel
          Left = 474
        end
        inherited DBNavigatorTemplate: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelNavigator: TPanel
        Width = 773
        inherited Image1: TImage
          Width = 773
        end
        inherited BevelTop: TBevel
          Width = 773
        end
        inherited BevelTopTop: TBevel
          Width = 773
        end
        object BtnSelecionarDoc: TSpeedButton
          Tag = 3
          Left = 2
          Top = 3
          Width = 147
          Height = 25
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = '&Selecionar Contatos'
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
        object LabelReg: TLabel
          Left = 165
          Top = 10
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 773
      Height = 470
      inherited PanelBarra: TPanel
        Top = 89
        Width = 0
        Height = 381
        inherited BevelEsq: TBevel
          Left = -2
          Height = 381
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 89
        Width = 773
        Height = 381
        Align = alClient
        BorderStyle = bsNone
        DataSource = DSContato
        FixedColor = 16767449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect]
        ParentColor = True
        ParentFont = False
        PopupMenu = PopupMenuContato
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'UsuarioLookUp'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTDCONTATO'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoContatoLookUp'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Width = 167
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE1'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60CIDRES'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA2UFRES'
            Width = 19
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA255OBS'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA13ID'
            Width = 91
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 773
        Height = 89
        Align = alTop
        ParentColor = True
        TabOrder = 2
        object Label5: TLabel
          Left = 5
          Top = 4
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
        object Label6: TLabel
          Left = 210
          Top = 4
          Width = 83
          Height = 13
          Caption = 'Tipo de Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 393
          Top = 4
          Width = 89
          Height = 13
          Caption = 'Tipo de Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 636
          Top = 27
          Width = 19
          Height = 13
          Caption = 'at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 44
          Width = 140
          Height = 13
          Caption = 'Procura por Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 497
          Top = 44
          Width = 14
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 530
          Top = 4
          Width = 57
          Height = 13
          Caption = 'Data Base'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboVendedor: TRxDBLookupCombo
          Left = 4
          Top = 20
          Width = 201
          Height = 21
          DropDownCount = 8
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSVendedor
          TabOrder = 0
        end
        object ComboTipoCliente: TRxDBLookupCombo
          Left = 210
          Top = 20
          Width = 180
          Height = 21
          DropDownCount = 8
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSTipoCliente
          TabOrder = 1
        end
        object ComboTipoContato: TRxDBLookupCombo
          Left = 392
          Top = 20
          Width = 132
          Height = 21
          DropDownCount = 8
          LookupField = 'TPCTICOD'
          LookupDisplay = 'TPCTA60DESCR'
          LookupSource = DSTipoContato
          TabOrder = 2
        end
        object De: TDateEdit
          Left = 529
          Top = 20
          Width = 103
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 3
        end
        object EditCliente: TEdit
          Left = 4
          Top = 60
          Width = 487
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          OnKeyDown = EditClienteKeyDown
        end
        object EditUFCLiente: TEdit
          Left = 493
          Top = 60
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          OnKeyDown = EditClienteKeyDown
        end
        object Ate: TDateEdit
          Left = 660
          Top = 20
          Width = 103
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 4
        end
        object GroupOrdem: TRadioGroup
          Left = 528
          Top = 42
          Width = 234
          Height = 40
          Caption = ' Ordem da Data no Resultado '
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Crescente'
            'Decrescente')
          ParentFont = False
          TabOrder = 7
        end
      end
    end
  end
  object SQLContato: TRxQuery
    AfterOpen = SQLContatoAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CONTATO.*, '
      '           CLIENTE.CLIEA60RAZAOSOC,'
      '           CLIENTE.CLIEA60NOMEFANT,'
      '           CLIENTE.CLIEA60CIDRES,'
      '           CLIENTE.CLIEA2UFRES,'
      '           CLIENTE.CLIEA15FONE1'
      'From'
      
        '  Contato inner join cliente on CONTATO.CLIEA13ID=CLIENTE.CLIEA1' +
        '3ID'
      'Where'
      '  (%MCliente) and'
      '  (%MUFCliente) and'
      '  (%MVendedor) and'
      '  (%MTipoCliente) and'
      '  (%MTipoContato) and'
      '  (%MEmpresaContato) and'
      '  (%MCodigoContato) and'
      '  (%MDataContato) and'
      '  (CONTATO.CONTDREAL IS NULL) and'
      '  (%MData)'
      'order by CLIENTE.CLIEA60RAZAOSOC,CONTATO.CONTDCONTATO %MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUFCliente'
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
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoContato'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaContato'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCodigoContato'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataContato'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 159
    Top = 5
    object SQLContatoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContatoCONTDCONTATO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATO.CONTDCONTATO'
    end
    object SQLContatoCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATO.CONTICOD'
    end
    object SQLContatoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CONTATO.VENDICOD'
    end
    object SQLContatoCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
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
      DisplayLabel = 'Obs'
      FieldName = 'CONTA255OBS'
      Origin = 'DB.CONTATO.CONTA255OBS'
      FixedChar = True
      Size = 255
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
    object SQLContatoTipoContatoLookUp: TStringField
      DisplayLabel = 'Tipo Contato'
      FieldKind = fkLookup
      FieldName = 'TipoContatoLookUp'
      LookupDataSet = SQLTipoContato
      LookupKeyFields = 'TPCTICOD'
      LookupResultField = 'TPCTA60DESCR'
      KeyFields = 'TPCTICOD'
      Size = 60
      Lookup = True
    end
    object SQLContatoCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLIEA60RAZAOSOC'
      Size = 60
    end
    object SQLContatoCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Size = 60
    end
    object SQLContatoCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContatoCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLContatoCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContatoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CONTATO.USUAICOD'
    end
    object SQLContatoCONTA60CONTATO: TStringField
      FieldName = 'CONTA60CONTATO'
      Origin = 'DB.CONTATO.CONTA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLContatoUsuarioLookUp: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkLookup
      FieldName = 'UsuarioLookUp'
      LookupDataSet = SQLUsuario
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60LOGIN'
      KeyFields = 'USUAICOD'
      Size = 60
      Lookup = True
    end
  end
  object DSContato: TDataSource
    DataSet = SQLContato
    Left = 187
    Top = 5
  end
  object SQLTipoContato: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoContato order by TPCTA60DESCR ')
    Macros = <>
    Left = 234
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
  object PopupMenuContato: TPopupMenu
    OnPopup = PopupMenuContatoPopup
    Left = 160
    Top = 184
    object ObservaoProvisria1: TMenuItem
      Caption = 'Observa'#231#227'o Provis'#243'ria'
      OnClick = ObservaoProvisria1Click
    end
    object InformarRetorno1: TMenuItem
      Caption = 'Informar Retorno'
      OnClick = InformarRetorno1Click
    end
    object VerificarHistrico1: TMenuItem
      Caption = 'Verificar Hist'#243'rico'
      OnClick = VerificarHistrico1Click
    end
    object VisualizaroCliente1: TMenuItem
      Caption = 'Visualizar o Cliente'
      OnClick = VisualizaroCliente1Click
    end
    object VisualizarContatos1: TMenuItem
      Caption = 'Visualizar Contatos'
      OnClick = VisualizarContatos1Click
    end
    object VisualizarReferncias1: TMenuItem
      Caption = 'Visualizar Refer'#234'ncias'
      OnClick = VisualizarReferncias1Click
    end
    object ExcluirContato1: TMenuItem
      Caption = '&Excluir Contato'
      OnClick = ExcluirContato1Click
    end
    object ransferirContato1: TMenuItem
      Caption = '&Transferir Contato (Dias)'
      OnClick = ransferirContato1Click
    end
    object ransferirContatoDataEspecfica1: TMenuItem
      Caption = 'Transferir Contato (Data Espec'#237'fica)'
      OnClick = ransferirContatoDataEspecfica1Click
    end
  end
  object DSTipoContato: TDataSource
    DataSet = SQLTipoContato
    Left = 267
    Top = 5
  end
  object SQLTipoCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoCliente order by TPCLA30DESCR ')
    Macros = <>
    Left = 314
    Top = 5
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
  object DSTipoCliente: TDataSource
    DataSet = SQLTipoCliente
    Left = 347
    Top = 5
  end
  object SQLVendedor: TRxQuery
    BeforeOpen = SQLVendedorBeforeOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select VENDEDOR.* From '
      'UsuarioVendedor '
      
        'inner join VENDEDOR ON UsuarioVendedor.VENDICOD=VENDEDOR.VENDICO' +
        'D and (%MUsuario)'
      'order by VENDEDOR.VENDA60NOME')
    Macros = <
      item
        DataType = ftString
        Name = 'MUsuario'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 402
    Top = 5
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
  object DSVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 435
    Top = 5
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  USUARIO')
    Macros = <>
    Left = 401
    Top = 53
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
  end
  object SQLExcluiDetalhes: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      '%MClausula From %MTabela Where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MClausula'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTabela'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 482
    Top = 8
  end
  object SQLExcluirContato: TRxQuery
    BeforeDelete = SQLExcluirContatoBeforeDelete
    DatabaseName = 'DB'
    DataSource = DSContato
    RequestLive = True
    SQL.Strings = (
      'Select *'
      'From'
      '  Contato'
      'Where'
      '  EMPRICOD=:EMPRICOD and'
      '  CONTDCONTATO=:CONTDCONTATO and'
      '  CONTICOD=:CONTICOD')
    Macros = <>
    Left = 159
    Top = 41
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTDCONTATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLTransferirContato: TRxQuery
    BeforeDelete = SQLExcluirContatoBeforeDelete
    DatabaseName = 'DB'
    DataSource = DSContato
    RequestLive = True
    SQL.Strings = (
      'Select *'
      'From'
      '  Contato'
      'Where'
      '  EMPRICOD=:EMPRICOD and'
      '  CONTDCONTATO=:CONTDCONTATO and'
      '  CONTICOD=:CONTICOD')
    Macros = <>
    Left = 159
    Top = 74
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTDCONTATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTICOD'
        ParamType = ptUnknown
      end>
    object SQLTransferirContatoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLTransferirContatoCONTDCONTATO: TDateTimeField
      FieldName = 'CONTDCONTATO'
    end
    object SQLTransferirContatoCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATO.CONTICOD'
    end
  end
  object SQLProximoCodigo: TRxQuery
    BeforeDelete = SQLExcluirContatoBeforeDelete
    DatabaseName = 'DB'
    DataSource = DSSQLTransferirContato
    SQL.Strings = (
      'Select MAX(CONTICOD) as PROXIMO'
      'From'
      '  Contato'
      'Where'
      '  EMPRICOD=:EMPRICOD and'
      '  CONTDCONTATO=:CONTDCONTATO')
    Macros = <>
    Left = 159
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTDCONTATO'
        ParamType = ptUnknown
      end>
  end
  object DSSQLTransferirContato: TDataSource
    DataSet = SQLTransferirContato
    Left = 190
    Top = 75
  end
end
