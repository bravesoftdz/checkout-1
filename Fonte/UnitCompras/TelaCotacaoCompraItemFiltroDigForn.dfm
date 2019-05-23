inherited FormTelaCotacaoCompraItemFiltroDigForn: TFormTelaCotacaoCompraItemFiltroDigForn
  Left = 62
  Top = 82
  Caption = 'Digita'#231#227'o de Pre'#231'os pelos Fornecedores'
  ClientHeight = 581
  ClientWidth = 795
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Top = 57
    Width = 795
    Height = 524
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 795
      Height = 64
      Align = alTop
      Caption = 
        '      Como usar esta tela:'#13#10'      1'#186' Passo => Informe o Forneced' +
        'or, para que o sistema saiba quem est'#225' digitando.'#13#10'      2'#186' Pass' +
        'o => Coloque o seu pre'#231'o de venda, respeitando a Capacidade de E' +
        'mbalagem.'#13#10'      3'#186' Passo => Clique no bot'#227'o Gravar, para que o ' +
        'sistema Grave a sua Cota'#231#227'o!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 112
      Width = 795
      Height = 329
      Align = alTop
      Caption = ' Produtos com Necessidade de Compra '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 791
        Height = 312
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSTblTemporaria
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnEnter = DBGrid1Enter
        OnExit = DBGrid1Exit
        Columns = <
          item
            Color = 16249066
            Expanded = False
            FieldName = 'PRODICOD'
            ReadOnly = True
            Width = 42
            Visible = True
          end
          item
            Color = 16249066
            Expanded = False
            FieldName = 'PRODA60DESCR'
            ReadOnly = True
            Width = 393
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA60REFER'
            Width = 82
            Visible = True
          end
          item
            Color = 16249066
            Expanded = False
            FieldName = 'QTDEMBAL'
            ReadOnly = True
            Width = 61
            Visible = True
          end
          item
            Color = 16249066
            Expanded = False
            FieldName = 'QTDECOMPRADO'
            ReadOnly = True
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODN3VLRCOMPRA'
            Width = 95
            Visible = True
          end>
      end
    end
    object GroupFiltro: TGroupBox
      Left = 0
      Top = 64
      Width = 795
      Height = 48
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label7: TLabel
        Left = 14
        Top = 10
        Width = 155
        Height = 13
        Caption = 'Raz'#227'o Social do Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboFornecedor: TRxDBLookupCombo
        Left = 10
        Top = 23
        Width = 695
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DisplayEmpty = 'Informe o Fornecedor pela Raz'#227'o Social...'
        FieldsDelimiter = ';'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'FORNICOD'
        LookupDisplay = 'FORNICOD;FORNA60RAZAOSOC'
        LookupDisplayIndex = 1
        LookupSource = DSSQLFornecedor
        ParentFont = False
        TabOrder = 0
        OnKeyDown = ComboFornecedorKeyDown
      end
    end
    object BTGravar: TBitBtn
      Left = 193
      Top = 446
      Width = 283
      Height = 51
      Caption = 'Gravar'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
      OnClick = BTGravarClick
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
        0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004A422100A59C
        5A005A523100DEE7DE00949484000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000635A3100A59C5A00A59C
        5A00DEDED600EFEFEF00B5B5A500DEDED6008C8C7B002129210000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDB58C00A59C5A005A52
        3100EFF7EF0029291800ADA56B00DEDEDE00E7E7E700B5B5B5005A5A42000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000008C845A00B5AD7300A59C5A00C6C6
        BD00F7F7F700524A3100DEDED600E7E7E700DEE7DE00DEDEDE008C8C7B00A59C
        5A00292918000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000BDB58C00A59C5A00A59C5A005A52
        3100CECECE00EFF7EF00EFF7EF00E7EFE700E7E7E700B5B5A5004A422100A59C
        5A00424221002921100000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000006B634200B5AD7300EFEFE700EFEFE700A59C
        5A00A59C5A0042422100ADADA500EFEFEF00E7E7E70042424200A59C5A005A52
        3100A59C5A003939290000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000C6C69C00EFEFE700F7F7F700848C9400F7F7
        EF00EFEFE700A59C5A00A59C5A004242210039392900635A3100A59C5A005A52
        3100A59C5A0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000006B634200B5AD7300EFF7EF00F7F7F700848C94000000
        000000000000F7F7EF00EFEFE700A59C5A00A59C5A005A5231005A523100A59C
        5A003939290000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000C6C6A500EFEFE700F7F7F700848C9400F7F7F7006BB5
        C600185A73000000000000000000DEE7DE00EFEFE700A59C5A00A59C5A00A59C
        5A0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00000000007B7B6300BDB58C00EFF7EF00F7F7F700848C9400F7F7F700F7F7
        F7000000000063BDD600427B8C0000000000F7F7F700EFEFE700A59C5A003939
        290000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000BDB58C00CECEAD00E7DED600F7F7F700F7F7F700848C9400F7F7
        F700F7F7F7000000000063BDD600427B8C0000000000EFEFE700A59C5A000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000000000B5AD7300CECEAD00DED6C600F7F7F700F7F7
        F700F7F7F700F7F7F7000000000063BDD600427B8C0000000000292918000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000000000000DED6C600C6C6A500DED6
        C600F7F7F700F7F7F700F7F7F7000000000063BDD600427B8C0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000DED6
        C600C6C6A500DED6C600F7F7F700EFF7EF000000000063BDD600427B8C000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000DED6C600C6C6A500EFEFE700A59C5A000000000063BDD600427B
        8C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000000000A59C5A0039392900000000000000000063BD
        D600427B8C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
        000063BDD600427B8C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000000000063BDD60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 795
    Height = 57
    inherited PanelCabecalho: TPanel
      Width = 795
      Height = 57
      inherited LabelTitulo: TLabel
        Left = 6
        Top = 1
      end
      inherited PanelNavigator: TPanel
        Top = 25
        Width = 795
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 795
          inherited BtnFecharTela: TSpeedButton
            Left = 717
          end
        end
      end
    end
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select FORNICOD, FORNA60RAZAOSOC from Fornecedor'
      'Order by FORNA60RAZAOSOC')
    Macros = <>
    Left = 425
    Top = 5
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 397
    Top = 5
  end
  object DSTblTemporaria: TDataSource
    DataSet = TblTemporaria
    Left = 342
    Top = 5
  end
  object TblTemporaria: TTable
    AutoCalcFields = False
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CotacaoCompraItemDigForn.DB'
    Left = 314
    Top = 5
    object TblTemporariaPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaPRODN3VLRCOMPRA: TBCDField
      DisplayLabel = 'Vlr.Compra'
      FieldName = 'PRODN3VLRCOMPRA'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object TblTemporariaQTDEMBAL: TIntegerField
      DisplayLabel = 'Cap.Embal'
      FieldName = 'QTDEMBAL'
    end
    object TblTemporariaQTDECOMPRADO: TBCDField
      DisplayLabel = 'Qtde.Pedido'
      FieldName = 'QTDECOMPRADO'
      Size = 3
    end
    object TblTemporariaFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object TblTemporariaPRODA60REFER: TStringField
      DisplayLabel = 'Ref.Fabrica'
      FieldName = 'PRODA60REFER'
      Size = 60
    end
  end
end
