object FormTelaConsultaRapidaCliente: TFormTelaConsultaRapidaCliente
  Left = 466
  Top = 200
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 466
  ClientWidth = 692
  Color = 16249066
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object VALOR: TEdit
    Left = 9
    Top = 52
    Width = 672
    Height = 35
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = VALORKeyDown
  end
  object DBGridLista: TDBGrid
    Left = 9
    Top = 92
    Width = 671
    Height = 363
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSTemplate
    FixedColor = 14731440
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIEA13ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'ID Cliente'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA60RAZAOSOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Nome'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 498
        Visible = True
      end>
  end
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 692
    Height = 49
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
    object RxLabel2: TRxLabel
      Left = 0
      Top = 0
      Width = 692
      Height = 49
      Align = alClient
      Alignment = taCenter
      Caption = 'Consulta de Clientes Cadastrados'
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
      Left = 8
      Top = 3
      Width = 44
      Height = 43
      Hint = 'Fechar Tela'
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
    end
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLCliente
    Left = 121
    Top = 250
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 93
    Top = 250
    object SQLClienteCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'digo'
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
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      EditMask = '#########-##;0;_'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLCliente1Aviso: TStringField
      DisplayLabel = '1'#186' Aviso'
      FieldKind = fkCalculated
      FieldName = '1Aviso'
      Size = 15
      Calculated = True
    end
    object SQLCliente2Aviso: TStringField
      DisplayLabel = '2'#186' Aviso'
      FieldKind = fkCalculated
      FieldName = '2Aviso'
      Calculated = True
    end
    object SQLClienteSPCAviso: TStringField
      DisplayLabel = 'SPC'
      FieldKind = fkCalculated
      FieldName = 'SPCAviso'
      Calculated = True
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
    Left = 552
    Top = 21
  end
end
