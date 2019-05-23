inherited FormTelaHistoricoContato: TFormTelaHistoricoContato
  Left = 2
  Top = 6
  Width = 799
  Height = 580
  Caption = 'Hist'#243'rico de Contatos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 791
    Height = 553
    inherited PanelCabecalho: TPanel
      Width = 787
      inherited PanelTitulo2: TPanel
        Width = 787
        inherited PanelRegistroAtual: TPanel
          Left = 0
          Width = 787
        end
        inherited DBNavigatorTemplate: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelNavigator: TPanel
        Width = 787
        inherited Image1: TImage
          Width = 787
        end
        inherited BevelTop: TBevel
          Width = 787
        end
        inherited BevelTopTop: TBevel
          Width = 787
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 787
      Height = 482
      inherited PanelBarra: TPanel
        Top = 43
        Width = 0
        Height = 268
        inherited BevelEsq: TBevel
          Left = -2
          Height = 268
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 787
        Height = 43
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object Label2: TLabel
          Left = 5
          Top = 1
          Width = 58
          Height = 13
          Caption = 'ID. Cliente'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 124
          Top = 1
          Width = 71
          Height = 13
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 366
          Top = 1
          Width = 38
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 535
          Top = 1
          Width = 38
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 580
          Top = 1
          Width = 95
          Height = 13
          Caption = 'Contatos do Tipo'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 4
          Top = 16
          Width = 117
          Height = 21
          Color = 14737632
          DataField = 'CLIEA13ID'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 123
          Top = 16
          Width = 238
          Height = 21
          Color = 14737632
          DataField = 'CLIEA60RAZAOSOC'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 365
          Top = 16
          Width = 166
          Height = 21
          Color = 14737632
          DataField = 'CLIEA60CIDRES'
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 534
          Top = 16
          Width = 41
          Height = 21
          Color = 14737632
          DataField = 'CLIEA2UFRES'
          ReadOnly = True
          TabOrder = 3
        end
        object ComboTipo: TRxDBLookupCombo
          Left = 579
          Top = 16
          Width = 203
          Height = 21
          DropDownCount = 8
          LookupField = 'TPCTICOD'
          LookupDisplay = 'TPCTA60DESCR'
          LookupSource = DSTipoContato
          TabOrder = 4
          OnChange = ComboTipoChange
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 43
        Width = 787
        Height = 268
        Align = alClient
        BorderStyle = bsNone
        DataSource = DSContato
        FixedColor = 16767449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CONTDREAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoContatoLookUp'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA255OBS'
            Width = 289
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VendedorLookUp'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA60CONTATO'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UsuarioLookUp'
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 311
        Width = 787
        Height = 171
        Align = alBottom
        BorderStyle = bsNone
        DataSource = DSSQLContatoDetalhe
        FixedColor = 16767449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CNTDA254DETALHE'
            Visible = True
          end>
      end
    end
  end
  object SQLContato: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Contato '
      'Where'
      '   CLIEA13ID=:CLIEA13ID AND'
      '   NOT CONTDREAL IS NULL and '
      '   %MTipo   '
      'order by CONTDREAL Desc')
    Macros = <
      item
        DataType = ftString
        Name = 'MTipo'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 160
    Top = 5
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLContatoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTATO.EMPRICOD'
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
      DisplayLabel = 'Data'
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
    object SQLContatoCONTA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTA60CONTATO'
      Origin = 'DB.CONTATO.CONTA60CONTATO'
      FixedChar = True
      Size = 60
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
    object SQLContatoVendedorLookUp: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VendedorLookUp'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Size = 60
      Lookup = True
    end
    object SQLContatoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.CONTATO.USUAICOD'
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
    Left = 354
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
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From VENDEDOR order by VENDA60NOME')
    Macros = <>
    Left = 274
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
  object SQLContatoDetalhe: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    DataSource = DSContato
    SQL.Strings = (
      'Select * From CONTATODETALHE '
      'Where'
      'EMPRICOD=:EMPRICOD AND'
      'CONTDCONTATO=:CONTDCONTATO AND'
      'CONTICOD=:CONTICOD'
      'order by CNTDICOD')
    Macros = <>
    Left = 234
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'CONTDCONTATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONTICOD'
        ParamType = ptUnknown
      end>
    object SQLContatoDetalheEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTATODETALHE.EMPRICOD'
    end
    object SQLContatoDetalheCONTDCONTATO: TDateTimeField
      FieldName = 'CONTDCONTATO'
      Origin = 'DB.CONTATODETALHE.CONTDCONTATO'
    end
    object SQLContatoDetalheCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
      Origin = 'DB.CONTATODETALHE.CONTICOD'
    end
    object SQLContatoDetalheCNTDICOD: TIntegerField
      FieldName = 'CNTDICOD'
      Origin = 'DB.CONTATODETALHE.CNTDICOD'
    end
    object SQLContatoDetalheCNTDA254DETALHE: TStringField
      DisplayLabel = 'Detalhamento'
      FieldName = 'CNTDA254DETALHE'
      Origin = 'DB.CONTATODETALHE.CNTDA254DETALHE'
      FixedChar = True
      Size = 254
    end
    object SQLContatoDetalhePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTATODETALHE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContatoDetalheREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTATODETALHE.REGISTRO'
    end
  end
  object DSSQLContatoDetalhe: TDataSource
    DataSet = SQLContatoDetalhe
    Left = 234
    Top = 72
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From USUARIO order by USUAA60LOGIN')
    Macros = <>
    Left = 309
    Top = 5
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
  object DSTipoContato: TDataSource
    DataSet = SQLTipoContato
    Left = 349
    Top = 40
  end
end
