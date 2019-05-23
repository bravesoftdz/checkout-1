object FormTelaImportarPreVenda: TFormTelaImportarPreVenda
  Left = 135
  Top = 21
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 730
  ClientWidth = 1008
  Color = 16249066
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label22: TLabel
    Left = 14
    Top = 472
    Width = 174
    Height = 20
    Caption = 'Rela'#231#227'o de Produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object LBTipoTerm: TLabel
    Left = 833
    Top = 51
    Width = 34
    Height = 29
    Caption = '***'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 646
    Width = 165
    Height = 20
    Caption = 'Rela'#231#227'o de Motoboy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 528
    Top = 646
    Width = 83
    Height = 20
    Caption = 'Numerario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBGridLista: TDBGrid
    Left = 9
    Top = 69
    Width = 986
    Height = 397
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSMemPrevenda
    FixedColor = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGridListaCellClick
    OnColEnter = DBGridListaColEnter
    OnColExit = DBGridListaColExit
    OnDrawColumnCell = DBGridListaDrawColumnCell
    OnDblClick = DBGridListaDblClick
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'PDVDDHVENDA'
        Title.Caption = 'Data'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Sequencial'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClienteNome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 341
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MotoBoyNome'
        Title.Caption = 'Motoboy'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRVDN2TOTITENS'
        Title.Alignment = taRightJustify
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRVDCMARCADO'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 493
    Width = 985
    Height = 151
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSSQLPrevendaItem
    FixedColor = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGridListaCellClick
    OnColEnter = DBGridListaColEnter
    OnColExit = DBGridListaColExit
    OnDrawColumnCell = DBGridListaDrawColumnCell
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'PRODICOD'
        Title.Caption = 'C'#243'd'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PVITN3QTD'
        Title.Caption = 'Qtde'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescricaoRed'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PVITTOBS'
        Title.Alignment = taCenter
        Title.Caption = 'Complemento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 575
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PVITN3VLRUNIT'
        Title.Caption = 'Vlr.Unit'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end>
  end
  object ComboMotoBoy: TRxDBLookupCombo
    Left = 10
    Top = 666
    Width = 304
    Height = 30
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    LookupField = 'MTBYICOD'
    LookupDisplay = 'MTBYA30DESCR'
    LookupSource = dsSQLMotoboy
    ParentFont = False
    TabOrder = 2
  end
  object BtnTransfMotoboy: TConerBtn
    Left = 321
    Top = 663
    Width = 156
    Height = 36
    Cursor = crHandPoint
    Hint = 'Transfere uma Contas/Comandas'
    Caption = 'ESCOLHE MOTOBOY'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = False
    OnClick = BtnTransfMotoboyClick
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object BTQuitarTELE: TConerBtn
    Left = 832
    Top = 663
    Width = 155
    Height = 36
    Cursor = crHandPoint
    Hint = 'Transfere uma Contas/Comandas'
    Caption = 'QUITAR ATENDIMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    OnClick = BTQuitarTELEClick
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object ComboNumerario: TRxDBLookupCombo
    Left = 521
    Top = 666
    Width = 303
    Height = 30
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    LookupField = 'NUMEICOD'
    LookupDisplay = 'NUMEA30DESCR'
    LookupSource = dsSQLNumerario
    ParentFont = False
    TabOrder = 5
  end
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 1008
    Height = 66
    AnchorHint = False
    Align = alTop
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 50
      end>
    SimplePanel = False
    SizeGrip = False
    URLColor = clBlue
    Styler = AdvOfficeStatusBarOfficeStyler1
    Version = '1.3.0.2'
    object LblNomeSistema: TRxLabel
      Left = 8
      Top = 2
      Width = 326
      Height = 39
      Caption = 'Tele-Entregas  em Aberto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      ShadowColor = 15195349
      ShadowPos = spRightBottom
      Transparent = True
    end
    object ImgDesligar: TImage
      Left = 950
      Top = 10
      Width = 45
      Height = 45
      Hint = 'Sair Sistema'
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0A544A504547496D61676544060000FFD8FFE000104A46494600010101006000
        600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
        0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
        3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
        3232323232323232323232323232323232323232323232323232323232323232
        32323232323232323232323232FFC00011080036003303012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F6ED
        4B558B4E542FF33C99D8990338EA727A01DFEA2B317C4C4F5FB38CF4C6F23F3D
        BCFE55CBF8CB50922F1B0B4DC76FF67AC8A33D3F78C0FF004FC8566A5C8CF180
        7AF1594A6EF63BE96154A09B3BD1E23CFF00141FF8FF00FF0013520D7B23FD65
        B8FC1FFC2B8CD3644BBBE8212C4ABC8A8DB4FA9ADCF10D9DB696F6E6DD4A0937
        02A5C91C77E73CF34293B5C52A105250EE6C8D709FF96B6FF9354B06B219C097
        CB28CDB449193807B6E040239E33C8FA5718973C9524FBE6AB6B1A99B2D12FAE
        548DE90311FC87F3A3DA772D60F9AC9753D3B73F600D14D81F7DBC6CDF799413
        F9515B1E79E47F10E4F2FE22DB9CF074DC7FE44357FC1DA32EB37325C5C2EEB4
        B7FBCA47FAC6EA07E5C9FA8AC5F8AB2795E3BB56F5D3C0FF00C7DABB4F87D26E
        F03492DBF331794FBEEE71FD2B913FDE347B734E1828CE3BBD066AFAB585D789
        F4CB2B48D37DB5CAA348A31DF1B47B67F956878A3515D3350D2EE5E3F3150C99
        53E840CE3DFBD7915AEA32452C7708E448AC1D5BB86E0F3F8D5FD57C573DF324
        9A8DD0919170A8AA07E83BD43C42499D90CA26EA412DADF99EA7A85A5B788349
        1A85881E785DCA4705B1D50D78B78AB5B7D4627B1B463F675C991F18F308FE83
        F9D7A5FC2CD426D434FD48B214B75957603C9CEDF9B3FA579C6B36B1A6A1AA88
        C7C8279B6E3A601359D79DE31947A9B65B4551AF5684F5E5D8FA0ADF26D623FE
        C2FF002A296D7FE3D21FFAE6BFCA8AF496C7CAC9EACF0FF8CD298BC6166E3AFD
        9067DBE76A77C2CF19C5A4DE49A3EA522C56D74D98A56E8B27420FA03C56CFC5
        EF0E4F7F756BA8C4010B198CB13800839009F704FE22BCB3FB1755DDFF0020FB
        8E3B842C3F31C1AF36ACA50ABCC8FB0C0D2C3E2F00A94E563D53C61F0CB50B8B
        F96FF409D1A3998BBDAB3EC2A7A9DA7D0FA1E95CCE9BF0B7C4D777016E2D92CA
        3CFCD24B22B1C7A80A4E7F4A8744F1178DB418560B55BA7B7518586784B851E8
        33C81EC0D6CCBE3CF1D5CA6C16C20FF6A2B5E7FF001ECD44BD8C9F334CD692CC
        A843D9539C1AEEF73B8BBB9D33C01E165D3ACDC35D3A9D8A7EFBB9EAE4761FA7
        6AF2F742D69396C9628C49F53839FC293ECDAADDCED3DDC5732CCC72CF20249F
        C4D68DA69D717532D904227986C58B396C1E0923F8401CE4FA544E52AB256565
        D02961E183A5294E7CD296AD9EE16BFF001E90FF00D735FE5453A28F6428993F
        2A81457ACA5A1F10DAB8B3DB45731345346AF1B0C1561906B18F83B43C93F614
        19F4A28A1A4F708CE51D22C3FE10DD0FFE7CD7F3A43E0BD04F5B143F5E68A297
        247B15EDAA771BFF00084787FF00E81D17E55A1A7683A6E939FB0DA45093D4AA
        F5A28A39509D49CB76686D145145519D8FFFD9}
      ShowHint = True
      Transparent = True
      OnClick = ImgDesligarClick
    end
    object Label1: TLabel
      Left = 353
      Top = 48
      Width = 289
      Height = 13
      Caption = '[ENTER] Importar - [F5] Reimprimir - [F6] Desativar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EntradaDados: TEdit
      Left = 13
      Top = 40
      Width = 184
      Height = 24
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnKeyDown = EntradaDadosKeyDown
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE')
    Macros = <>
    Left = 7
    Top = 46
  end
  object DSMemPrevenda: TDataSource
    DataSet = TblMemPreVenda
    OnDataChange = DSMemPrevendaDataChange
    Left = 63
    Top = 2
  end
  object TblTicketPreVenda: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVenda.DB'
    Left = 35
    Top = 46
    object TblTicketPreVendaNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TblTicketPreVendaFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TblTicketPreVendaNumeroPreVenda: TStringField
      FieldName = 'NumeroPreVenda'
      Size = 13
    end
    object TblTicketPreVendaNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 60
    end
    object TblTicketPreVendaNomePlano: TStringField
      FieldName = 'NomePlano'
      Size = 60
    end
    object TblTicketPreVendaCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblTicketPreVendaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 60
    end
    object TblTicketPreVendaCodProd: TIntegerField
      FieldName = 'CodProd'
    end
    object TblTicketPreVendaDescriProd: TStringField
      FieldName = 'DescriProd'
      Size = 60
    end
    object TblTicketPreVendaMarcaProd: TStringField
      FieldName = 'MarcaProd'
    end
    object TblTicketPreVendaRefProd: TStringField
      FieldName = 'RefProd'
    end
    object TblTicketPreVendaQtdeProd: TFloatField
      FieldName = 'QtdeProd'
    end
    object TblTicketPreVendaPrecoProd: TFloatField
      FieldName = 'PrecoProd'
    end
    object TblTicketPreVendaTotalProd: TFloatField
      FieldName = 'TotalProd'
    end
    object TblTicketPreVendaTaxaCred: TFloatField
      FieldName = 'TaxaCred'
    end
    object TblTicketPreVendaAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblTicketPreVendaDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblTicketPreVendaIDCupom: TStringField
      FieldName = 'IDCupom'
      Size = 13
    end
  end
  object SQLReimpPreVenda: TRxQuery
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
      '  P.VENDICOD,'
      '  C.CLIEA60RAZAOSOC,'
      '  PL.PLRCA60DESCR,'
      '  V.VENDA60NOME,'
      '  T.TERMA60DESCR,'
      '  P.PRVDN2ACRESC,'
      '  P.PRVDN2DESC'
      'from'
      
        '  PREVENDA P, CLIENTE C, PLANORECEBIMENTO PL, VENDEDOR V, TERMIN' +
        'AL T'
      'where'
      '  P.CLIEA13ID = C.CLIEA13ID and'
      '  P.PLRCICOD = PL.PLRCICOD and'
      '  P.VENDICOD = V.VENDICOD and'
      '  P.TERMICOD = T.TERMICOD and'
      '  (%MFiltro)'
      'order by'
      '  C.CLIEA60RAZAOSOC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 129
    Top = 2
    object SQLReimpPreVendaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDA.TERMICOD'
    end
    object SQLReimpPreVendaPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDA.PRVDICOD'
    end
    object SQLReimpPreVendaCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.PREVENDA.CONVICOD'
    end
    object SQLReimpPreVendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLReimpPreVendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PREVENDA.PLRCICOD'
    end
    object SQLReimpPreVendaPRVDCMARCADO: TStringField
      FieldName = 'PRVDCMARCADO'
      Origin = 'DB.PREVENDA.PRVDCMARCADO'
      FixedChar = True
      Size = 1
    end
    object SQLReimpPreVendaPRVDN2TOTITENS: TFloatField
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENS'
    end
    object SQLReimpPreVendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDA.VENDICOD'
    end
    object SQLReimpPreVendaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLReimpPreVendaPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLReimpPreVendaVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLReimpPreVendaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLReimpPreVendaPRVDN2ACRESC: TFloatField
      FieldName = 'PRVDN2ACRESC'
      Origin = 'DB.PREVENDA.PRVDN2ACRESC'
    end
    object SQLReimpPreVendaPRVDN2DESC: TFloatField
      FieldName = 'PRVDN2DESC'
      Origin = 'DB.PREVENDA.PRVDN2DESC'
    end
  end
  object SQLPrevendaItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDAITEM'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 607
    Top = 6
    object SQLPrevendaItemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object SQLPrevendaItemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object SQLPrevendaItemPVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object SQLPrevendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object SQLPrevendaItemPVITN3QTD: TFloatField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
    end
    object SQLPrevendaItemPVITN3VLRUNIT: TFloatField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
      DisplayFormat = '##0.00'
    end
    object SQLPrevendaItemPVITN3VLRCUSTUNIT: TFloatField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
    end
    object SQLPrevendaItemPVITN2DESC: TFloatField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
    end
    object SQLPrevendaItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPrevendaItemPVITN3VLRUNITLUCR: TFloatField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
    end
    object SQLPrevendaItemPVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPrevendaItemPVITN2ICMSALIQ: TFloatField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
    end
    object SQLPrevendaItemPRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPrevendaItemPVITN3QTDTROCA: TFloatField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
    end
    object SQLPrevendaItemDescricaoRed: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoRed'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA30ADESCRREDUZ'
      KeyFields = 'PRODICOD'
      Size = 30
      Lookup = True
    end
    object SQLPrevendaItemPVITTOBS: TStringField
      FieldName = 'PVITTOBS'
      Origin = 'DB.PREVENDAITEM.PVITTOBS'
      Size = 60
    end
  end
  object DSSQLPrevendaItem: TDataSource
    DataSet = SQLPrevendaItem
    Left = 636
    Top = 6
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select PRODICOD, PRODA30ADESCRREDUZ From Produto')
    Macros = <>
    Left = 569
    Top = 6
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
  end
  object SQLPrevendaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDANUMERARIO'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 669
    Top = 6
    object SQLPrevendaNumerarioTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDANUMERARIO.TERMICOD'
    end
    object SQLPrevendaNumerarioPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDANUMERARIO.PRVDICOD'
    end
    object SQLPrevendaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PREVENDANUMERARIO.NUMEICOD'
    end
    object SQLPrevendaNumerarioPVNUN2VLR: TFloatField
      FieldName = 'PVNUN2VLR'
      Origin = 'DB.PREVENDANUMERARIO.PVNUN2VLR'
    end
    object SQLPrevendaNumerarioNumerarioDescri: TStringField
      FieldKind = fkLookup
      FieldName = 'NumerarioDescri'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
  end
  object DSSQLPrevendaNumerario: TDataSource
    DataSet = SQLPrevendaNumerario
    Left = 697
    Top = 6
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select NUMEICOD, NUMEA30DESCR, NUMEA5TIPO'
      'From NUMERARIO')
    Macros = <>
    Left = 539
    Top = 6
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
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
  end
  object SQLPrevendaContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDACONTASRECEBER'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 731
    Top = 6
    object SQLPrevendaContasReceberPVCRICOD: TIntegerField
      FieldName = 'PVCRICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRICOD'
    end
    object SQLPrevendaContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.TERMICOD'
    end
    object SQLPrevendaContasReceberPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.PRVDICOD'
    end
    object SQLPrevendaContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDACONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPrevendaContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PREVENDACONTASRECEBER.NUMEICOD'
    end
    object SQLPrevendaContasReceberPVCRN2VLR: TFloatField
      FieldName = 'PVCRN2VLR'
      Origin = 'DB.PREVENDACONTASRECEBER.PVCRN2VLR'
    end
    object SQLPrevendaContasReceberNumerarioDescri: TStringField
      FieldKind = fkLookup
      FieldName = 'NumerarioDescri'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
  end
  object dsSQLPrevendaContasReceber: TDataSource
    DataSet = SQLPrevendaContasReceber
    Left = 759
    Top = 6
  end
  object TblMemPreVenda: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TblMemPreVenda.DB'
    Left = 6
    Top = 2
    object TblMemPreVendaContador: TAutoIncField
      FieldName = 'Contador'
    end
    object TblMemPreVendaTERMICOD: TIntegerField
      DisplayLabel = 'Term.'
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDA.TERMICOD'
      DisplayFormat = '000'
    end
    object TblMemPreVendaPRVDICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDA.PRVDICOD'
      DisplayFormat = '000000'
    end
    object TblMemPreVendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PREVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblMemPreVendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PREVENDA.PLRCICOD'
    end
    object TblMemPreVendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDA.VENDICOD'
    end
    object TblMemPreVendaPlanoNome: TStringField
      DisplayLabel = 'Plano'
      FieldName = 'PlanoNome'
      Size = 60
    end
    object TblMemPreVendaPRVDN2TOTITENS: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'DB.PREVENDA.PRVDN2TOTITENS'
      DisplayFormat = '#,##0.00'
    end
    object TblMemPreVendaTELETAXA: TCurrencyField
      FieldName = 'TELETAXA'
    end
    object TblMemPreVendaTerminal: TStringField
      FieldName = 'Terminal'
      Size = 60
    end
    object TblMemPreVendaPRVDCMARCADO: TBooleanField
      DisplayLabel = 'Imp.'
      FieldName = 'PRVDCMARCADO'
    end
    object TblMemPreVendaClienteNome: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteNome'
      Size = 60
    end
    object TblMemPreVendaClienteFone: TStringField
      FieldName = 'ClienteFone'
    end
    object TblMemPreVendaClienteEnd: TStringField
      FieldName = 'ClienteEnd'
      Size = 60
    end
    object TblMemPreVendaClienteBairro: TStringField
      FieldName = 'ClienteBairro'
      Size = 30
    end
    object TblMemPreVendaClienteCidade: TStringField
      FieldName = 'ClienteCidade'
      Size = 60
    end
    object TblMemPreVendaClienteObs: TStringField
      FieldName = 'ClienteObs'
      Size = 200
    end
    object TblMemPreVendaClienteTipoCliente: TStringField
      FieldName = 'ClienteTipoCliente'
      Size = 30
    end
    object TblMemPreVendaValorDesconto: TCurrencyField
      FieldName = 'ValorDesconto'
    end
    object TblMemPreVendaClienteDocumento: TStringField
      DisplayWidth = 20
      FieldName = 'ClienteDocumento'
    end
    object TblMemPreVendaCLIETOBS: TStringField
      FieldName = 'CLIETOBS'
      Size = 200
    end
    object TblMemPreVendaPDVDDHVENDA: TStringField
      FieldName = 'PDVDDHVENDA'
    end
    object TblMemPreVendaVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object TblMemPreVendaCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
    end
    object TblMemPreVendaORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Size = 5
    end
    object TblMemPreVendaMesaICod: TIntegerField
      FieldName = 'MesaICod'
    end
    object TblMemPreVendaContaICod: TIntegerField
      FieldName = 'ContaICod'
    end
    object TblMemPreVendaMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
    end
    object TblMemPreVendaMotoBoyNome: TStringField
      FieldName = 'MotoBoyNome'
      Size = 30
    end
    object TblMemPreVendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblMemPreVendaSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
  end
  object SQLImportarPrevendaSel: TRxQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'select * from TblMemPreVenda'
      'where PRVDCMARCADO = True')
    Macros = <>
    Left = 95
    Top = 2
    object SQLImportarPrevendaSelContador: TIntegerField
      FieldName = 'Contador'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".Contador'
    end
    object SQLImportarPrevendaSelTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".TERMICOD'
    end
    object SQLImportarPrevendaSelPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".PRVDICOD'
    end
    object SQLImportarPrevendaSelCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".CLIEA13ID'
      Size = 13
    end
    object SQLImportarPrevendaSelClienteNome: TStringField
      FieldName = 'ClienteNome'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ClienteNome'
      Size = 60
    end
    object SQLImportarPrevendaSelPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".PLRCICOD'
    end
    object SQLImportarPrevendaSelPlanoNome: TStringField
      FieldName = 'PlanoNome'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".PlanoNome'
      Size = 60
    end
    object SQLImportarPrevendaSelPRVDN2TOTITENS: TFloatField
      FieldName = 'PRVDN2TOTITENS'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".PRVDN2TOTITENS'
    end
    object SQLImportarPrevendaSelVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".VENDICOD'
    end
    object SQLImportarPrevendaSelTerminal: TStringField
      FieldName = 'Terminal'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".Terminal'
      Size = 60
    end
    object SQLImportarPrevendaSelPRVDCMARCADO: TBooleanField
      FieldName = 'PRVDCMARCADO'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".PRVDCMARCADO'
    end
    object SQLImportarPrevendaSelClienteEnd: TStringField
      FieldName = 'ClienteEnd'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ClienteEnd'
      Size = 60
    end
    object SQLImportarPrevendaSelClienteCidade: TStringField
      FieldName = 'ClienteCidade'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ClienteCidade'
      Size = 60
    end
    object SQLImportarPrevendaSelClienteObs: TStringField
      FieldName = 'ClienteObs'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ClienteObs'
      Size = 200
    end
    object SQLImportarPrevendaSelValorDesconto: TCurrencyField
      FieldName = 'ValorDesconto'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ValorDesconto'
    end
    object SQLImportarPrevendaSelClienteDocumento: TStringField
      FieldName = 'ClienteDocumento'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ClienteDocumento'
    end
    object SQLImportarPrevendaSelCLIETOBS: TStringField
      FieldName = 'CLIETOBS'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".CLIETOBS'
      Size = 200
    end
    object SQLImportarPrevendaSelPDVDDHVENDA: TStringField
      FieldName = 'PDVDDHVENDA'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".PDVDDHVENDA'
    end
    object SQLImportarPrevendaSelVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object SQLImportarPrevendaSelCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
    end
    object SQLImportarPrevendaSelORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ORIGEMVENDA'
      Size = 5
    end
    object SQLImportarPrevendaSelMesaICod: TIntegerField
      FieldName = 'MesaICod'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".MesaICod'
    end
    object SQLImportarPrevendaSelContaICod: TIntegerField
      FieldName = 'ContaICod'
      Origin = 'UNITGESTAO_TEMP."TblMemPreVenda.DB".ContaICod'
    end
  end
  object dsSQLMotoboy: TDataSource
    AutoEdit = False
    DataSet = SQLMotoboy
    Left = 364
    Top = 666
  end
  object SQLMotoboy: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM'
      '  MOTOBOY'
      'ORDER BY'
      '  MTBYA30DESCR')
    Macros = <>
    Left = 335
    Top = 666
    object SQLMotoboyMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
      Origin = 'DB.MOTOBOY.MTBYICOD'
    end
    object SQLMotoboyMTBYA30DESCR: TStringField
      FieldName = 'MTBYA30DESCR'
      Origin = 'DB.MOTOBOY.MTBYA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLParcelasVistaVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASVISTAVENDATEMP'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 734
    Top = 629
    object SQLParcelasVistaVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASVISTAVENDATEMP.TERMICOD'
    end
    object SQLParcelasVistaVendaTempNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = 'DB.PARCELASVISTAVENDATEMP.NROITEM'
      DisplayFormat = '000'
    end
    object SQLParcelasVistaVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasVistaVendaTempVALORPARC: TFloatField
      FieldName = 'VALORPARC'
      Origin = 'DB.PARCELASVISTAVENDATEMP.VALORPARC'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasVistaVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASVISTAVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLParcelasVistaVendaTemp: TDataSource
    DataSet = SQLParcelasVistaVendaTemp
    Left = 762
    Top = 629
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 762
    Top = 657
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 734
    Top = 657
    object SQLParcelasPrazoVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TERMICOD'
    end
    object SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField
      FieldName = 'DATAVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.DATAVENCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NROPARCELA'
      DisplayFormat = '000'
    end
    object SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField
      FieldName = 'VALORVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.VALORVENCTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasPrazoVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
  end
  object dsSQLNumerario: TDataSource
    AutoEdit = False
    DataSet = SQLNum
    Left = 874
    Top = 669
  end
  object SQLNum: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select NUMEICOD, NUMEA30DESCR, NUMEA5TIPO'
      'From NUMERARIO')
    Macros = <>
    Left = 846
    Top = 668
    object SQLNumNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    BorderColor = 14986888
    PanelAppearanceLight.BorderColor = 14922381
    PanelAppearanceLight.BorderColorHot = clGray
    PanelAppearanceLight.BorderColorDown = 10240783
    PanelAppearanceLight.Color = 16440774
    PanelAppearanceLight.ColorTo = 14854530
    PanelAppearanceLight.ColorHot = 13958143
    PanelAppearanceLight.ColorHotTo = 6538487
    PanelAppearanceLight.ColorDown = 9232890
    PanelAppearanceLight.ColorDownTo = 1940207
    PanelAppearanceLight.ColorMirror = 14854530
    PanelAppearanceLight.ColorMirrorTo = 14854530
    PanelAppearanceLight.ColorMirrorHot = 6538487
    PanelAppearanceLight.ColorMirrorHotTo = 6538487
    PanelAppearanceLight.ColorMirrorDown = 1940207
    PanelAppearanceLight.ColorMirrorDownTo = 1940207
    PanelAppearanceLight.TextColor = clBlack
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = clGray
    PanelAppearanceDark.BorderColorDown = 10240783
    PanelAppearanceDark.Color = 14986888
    PanelAppearanceDark.ColorTo = 14986888
    PanelAppearanceDark.ColorHot = 13958143
    PanelAppearanceDark.ColorHotTo = 6538487
    PanelAppearanceDark.ColorDown = 9232890
    PanelAppearanceDark.ColorDownTo = 1940207
    PanelAppearanceDark.ColorMirror = 14986888
    PanelAppearanceDark.ColorMirrorTo = 14986888
    PanelAppearanceDark.ColorMirrorHot = 6538487
    PanelAppearanceDark.ColorMirrorHotTo = 6538487
    PanelAppearanceDark.ColorMirrorDown = 1940207
    PanelAppearanceDark.ColorMirrorDownTo = 1940207
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 799
    Top = 7
  end
  object SQLVendasCanceladas: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select '
      '   *   '
      'from VENDASCANCELADAS'
      'where '
      '  (%MTerminal) and'
      '  (%MData)'
      'order by '
      '  ID')
    Macros = <
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
    Left = 462
    Top = 7
    object SQLVendasCanceladasID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.VENDASCANCELADAS.ID'
      Visible = False
    end
    object SQLVendasCanceladasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.VENDASCANCELADAS.EMPRICOD'
    end
    object SQLVendasCanceladasTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.VENDASCANCELADAS.TERMICOD'
    end
    object SQLVendasCanceladasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.VENDASCANCELADAS.CUPOA13ID'
      Size = 13
    end
    object SQLVendasCanceladasPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.VENDASCANCELADAS.PRVDICOD'
    end
    object SQLVendasCanceladasMESAICOD: TIntegerField
      FieldName = 'MESAICOD'
      Origin = 'DB.VENDASCANCELADAS.MESAICOD'
    end
    object SQLVendasCanceladasCONTAICOD: TIntegerField
      FieldName = 'CONTAICOD'
      Origin = 'DB.VENDASCANCELADAS.CONTAICOD'
    end
    object SQLVendasCanceladasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.VENDASCANCELADAS.PRODICOD'
    end
    object SQLVendasCanceladasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDASCANCELADAS.REGISTRO'
    end
    object SQLVendasCanceladasCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'DB.VENDASCANCELADAS.CLIENTENOME'
      Size = 60
    end
    object SQLVendasCanceladasCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      Origin = 'DB.VENDASCANCELADAS.CLIENTEFONE'
      Size = 15
    end
    object SQLVendasCanceladasMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'DB.VENDASCANCELADAS.MOTIVO'
      Size = 60
    end
    object SQLVendasCanceladasUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.VENDASCANCELADAS.USUAICOD'
    end
    object SQLVendasCanceladasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDASCANCELADAS.VENDICOD'
    end
    object SQLVendasCanceladasPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'DB.VENDASCANCELADAS.PRODUTO'
      Size = 60
    end
    object SQLVendasCanceladasTOTALITEM: TFloatField
      FieldName = 'TOTALITEM'
      Origin = 'DB.VENDASCANCELADAS.TOTALITEM'
    end
  end
end
