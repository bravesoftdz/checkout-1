object FormPrincipalRelatorios: TFormPrincipalRelatorios
  Left = 452
  Top = 116
  Width = 552
  Height = 436
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object BtnVisualizar: TSpeedButton
    Left = 199
    Top = 217
    Width = 155
    Height = 25
    Cursor = crHandPoint
    Hint = 'Visualizar Relat'#243'rio'
    Caption = '&Resumo de Caixa'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      0800000000004002000000000000000000000001000000010000000000000606
      060026262600272727002D2D2D002E2E2E002F2F2F0031313100333333003434
      340035353500363636003737370038383800393939003A3A3A003B3B3B003C3C
      3C003E3E3E003F3F3F003F3F4000404040004141410042424200434444004545
      4500464646004747470048484800494949004A4A4A004B4B4B004D4D4D004E4E
      4E004F4F4F004C4F5000505050005454540055555500585858005B5B5B005C5E
      5F005E5E5E006060600061616100636363006062640060636400646464006666
      660067676700696969006E6E6E006F6F6F007070700071717100727272007B7B
      7B007B7D7D007F7F7F0081838400868686008D8D8D0090929200959595009999
      9900989A9A009E9E9E009EA2A500A0A0A000A1A1A100A2A2A200A3A3A300A5A5
      A500A6A6A600A7A7A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
      AD00AFAFAF00B1B1B100B2B2B200B3B3B300B0B3B500B2B3B500B4B4B400B6B6
      B600B7B7B700BBBBBB00BBBCBC00BEBEBE00C3C3C300C3C5C500C6C6C600C7C9
      CB00C6CBCD00C9C9C900CBCBCB00CECECE00D2D2D200D5D5D500DBDBDB00D9DC
      DD00D8DDDE00D9DEDF00DCE0E200DDE1E300DEE2E300DFE3E400E0E0E000E1E1
      E100E2E2E200E0E4E500E1E5E600E2E6E700E5E5E500E3E7E800E5E8E900E6E9
      EA00E7E9EA00E8E8E800E9E9E900E8EAEB00EAEAEA00EBEBEB00E9EBEC00EAEC
      ED00EBEDEE00EDEDED00ECEEEF00EEEEEE00EFEFEF00EDEFF000EEF0F100EFF1
      F100F0F0F000F0F2F200F1F3F300F2F2F200F3F3F300F2F4F400F3F4F500F4F4
      F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00FFFF
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
      0000000000000000000000000000000000000000000000000000999999999999
      9999999999999999999999999999999999999999999999999999999999999999
      9999999999999999999999999999999999999999999999999999999999999999
      9999999999999999999999999900000000009999999999999999999999999999
      99990000001C36380F1200999999999999999999999999000000162826303735
      15070C000099999999999999990000202426221A19212C390E10040A09009999
      999999990028281F1A1E2B3D4745433B0C0F11080E1100009999999900311B2D
      48514F4D4B49403908020F11130F0A00999999990033465A58544E4745416670
      5E17060A1215100099999999005553524D4C4D6676868A7B8D681B0E110D1600
      9999999900504E4C5B718E838D867F7E7B7C6716030B0F0099999999003E5A7F
      9894918D8A85833F2E232F18321D050099999999990000647C837C725729293C
      566A62142A3400009999999999999900006559423A8079756F6C6B5C00009999
      99999999999999999900014A8B87817A77736D69279999999999999999999999
      99999904928C88827D78746E6100999999999999999999999999990060938F89
      848079756F440099999999999999999999999999009796908B885F1A00000099
      9999999999999999999999999900956325000099999999999999999999999999
      9999999999990000999999999999999999999999999999999999999999999999
      9999999999999999999999999999999999999999999999999999999999999999
      9999999999999999999999999999999999999999999999999999}
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 3
    OnClick = BtnVisualizarClick
  end
  object GroupBox1: TGroupBox
    Left = 89
    Top = 52
    Width = 346
    Height = 41
    Caption = 'Per'#237'o&do '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 18
      Width = 15
      Height = 13
      Caption = '&De'
      FocusControl = De
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 182
      Top = 18
      Width = 19
      Height = 13
      Caption = 'a&t'#233
      FocusControl = Ate
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object De: TDateEdit
      Left = 27
      Top = 14
      Width = 87
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 0
    end
    object Ate: TDateEdit
      Left = 204
      Top = 14
      Width = 87
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 2
    end
    object HoraInicial: TEdit
      Left = 117
      Top = 14
      Width = 47
      Height = 21
      TabOrder = 1
    end
    object HoraFinal: TEdit
      Left = 294
      Top = 14
      Width = 47
      Height = 21
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 89
    Top = 97
    Width = 346
    Height = 40
    Caption = ' Terminal '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object ComboTerminal: TRxDBLookupCombo
      Left = 8
      Top = 14
      Width = 331
      Height = 21
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'TERMICOD'
      LookupDisplay = 'TERMA60DESCR'
      LookupSource = DSSQLTerminal
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 88
    Top = 138
    Width = 346
    Height = 40
    Caption = ' Consolidar com o terminal '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object ComboTerminal2: TRxDBLookupCombo
      Left = 8
      Top = 14
      Width = 331
      Height = 21
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'TERMICOD'
      LookupDisplay = 'TERMA60DESCR'
      LookupSource = DSSQLTerminal
      ParentFont = False
      TabOrder = 0
    end
  end
  object ckBobina: TCheckBox
    Left = 88
    Top = 221
    Width = 103
    Height = 17
    Caption = 'Layout Bobina'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 536
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
    object LblNomeSistema: TRxLabel
      Left = 0
      Top = 0
      Width = 224
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Resumo de Caixa'
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
      Left = 473
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
      OnClick = ImgDesligarClick
    end
  end
  object Memo: TMemo
    Left = 5
    Top = 371
    Width = 504
    Height = 15
    Lines.Strings = (
      'T'
      'E'
      'X'
      'T'
      'O '
      'L'
      'I'
      'V'
      'R'
      'E'
      'A'
      't'
      #233' '
      '6'
      '0'
      '0 '
      'c'
      'a'
      'r'
      'a'
      'c'
      't'
      'e'
      'r'
      'e'
      's'
      #193
      #201
      #218
      #205
      #211
      #218
      #225
      #233
      #237
      #243
      #250
      #199
      #231
      #195
      #213
      #227
      #245
      ''
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      'd'
      'u'
      'p'
      'l'
      'a'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'I'
      'P'
      'O'
      'S '
      'D'
      'E '
      'F'
      'O'
      'N'
      'T'
      'E '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'F'
      'N'
      '>'
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O'
      '<'
      '/'
      'f'
      'n'
      '>'
      '<'
      'f'
      'p'
      '>'
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O'
      '<'
      '/'
      'f'
      'p'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'A'
      'G'
      'S '
      'D'
      'E '
      'F'
      'O'
      'R'
      'M'
      'A'
      'T'
      'A'
      #199
      #195
      'O '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'e'
      '>'
      'E'
      'X'
      'P'
      'A'
      'N'
      'D'
      'I'
      'D'
      'O'
      '<'
      '/'
      'e'
      '>'
      '<'
      'N'
      '>'
      'N'
      'e'
      'g'
      'r'
      'i'
      't'
      'o'
      '<'
      '/'
      'n'
      '>'
      '<'
      'S'
      '>'
      'S'
      'u'
      'b'
      'l'
      'i'
      'n'
      'h'
      'a'
      'd'
      'o'
      '<'
      '/'
      's'
      '>'
      '<'
      'C'
      '>'
      'C'
      'O'
      'N'
      'D'
      'E'
      'N'
      'S'
      'A'
      'D'
      'O'
      '<'
      '/'
      'C'
      '>'
      '<'
      'i'
      '>'
      'I'
      'T'
      'A'
      'L'
      'I'
      'C'
      'O'
      '<'
      '/'
      'I'
      '>'
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      's'
      'i'
      'm'
      'p'
      'l'
      'e'
      's'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'A'
      'G'
      'S '
      'D'
      'E '
      'C'
      #211
      'D'
      'I'
      'G'
      'O '
      'D'
      'E '
      'B'
      'A'
      'R'
      'R'
      'A'
      'S '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'e'
      'a'
      'n'
      '8'
      '>'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '<'
      '/'
      'e'
      'a'
      'n'
      '8'
      '>'
      '<'
      'e'
      'a'
      'n'
      '1'
      '3'
      '>'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '0'
      '1'
      '2'
      '<'
      '/'
      'e'
      'a'
      'n'
      '1'
      '3'
      '>'
      '<'
      'c'
      'o'
      'd'
      'e'
      '3'
      '9'
      '>'
      'A'
      'B'
      'C'
      'D'
      'E'
      '1'
      '2'
      '3'
      '4'
      '5'
      '<'
      '/'
      'c'
      'o'
      'd'
      'e'
      '3'
      '9'
      '>'
      '<'
      'c'
      'o'
      'd'
      'a'
      'b'
      'a'
      'r'
      '>'
      '$'
      '1'
      '2'
      '3'
      '4'
      '5'
      '<'
      '/'
      'c'
      'o'
      'd'
      'a'
      'b'
      'a'
      'r'
      '>'
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      's'
      'i'
      'm'
      'p'
      'l'
      'e'
      's'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'A'
      'G'
      'S '
      'D'
      'E '
      'F'
      'O'
      'R'
      'M'
      'A'
      'T'
      'A'
      #199
      #195
      'O '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'a'
      'e'
      '>'
      'A'
      'l'
      'i'
      'n'
      'h'
      'a'
      'd'
      'o '
      'e'
      's'
      'q'
      'u'
      'e'
      'r'
      'd'
      'a'
      '<'
      '/'
      'A'
      'e'
      '>'
      '<'
      'c'
      'e'
      '>'
      'N'
      'O '
      'C'
      'E'
      'N'
      'T'
      'R'
      'O'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'A'
      'D'
      '>'
      'A '
      'D'
      'i'
      'r'
      'e'
      'i'
      'r'
      'a'
      '<'
      '/'
      'a'
      'd'
      '>'
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      's'
      'i'
      'm'
      'p'
      'l'
      'e'
      's'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'E'
      'S'
      'T'
      'E '
      'D'
      'E '
      'T'
      'A'
      'G'
      'S '
      'I'
      'N'
      'V'
      #193
      'L'
      'I'
      'D'
      'A'
      'S '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'c'
      'e'
      '> '
      '<'
      '>'
      't'
      'a'
      'g'
      's '
      'i'
      'n'
      'v'
      #225
      'l'
      'i'
      'd'
      'a'
      's '
      'n'
      'o '
      't'
      'e'
      'x'
      't'
      'o'
      '"'
      '>'
      '"'
      '>'
      '>'
      '<'
      '<'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'A'
      'D'
      '>'
      '<'
      'd'
      'a'
      '>'
      '<'
      'e'
      'c'
      '>'
      '<'
      '/'
      '<'
      '/'
      'A '
      'D'
      'i'
      'r'
      'e'
      'i'
      'r'
      'a'
      '<'
      '/'
      'a'
      'd'
      '>'
      ''
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      'd'
      'u'
      'p'
      'l'
      'a'
      '>')
    ScrollBars = ssVertical
    TabOrder = 5
    Visible = False
  end
  object ckItensVendidos: TCheckBox
    Left = 88
    Top = 235
    Width = 84
    Height = 17
    Caption = 'Imp. Itens'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object GroupBox5: TGroupBox
    Left = 88
    Top = 177
    Width = 346
    Height = 40
    Caption = 'Operadores'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object ComboOperador: TRxDBLookupCombo
      Left = 8
      Top = 14
      Width = 331
      Height = 21
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'USUAICOD'
      LookupDisplay = 'USUAA60LOGIN'
      LookupSource = DSSQLOperador
      ParentFont = False
      TabOrder = 0
    end
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 37
    Top = 255
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'Where'
      '(%MFiltro)'
      'order by TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 9
    Top = 255
  end
  object DSTblTemporaria: TDataSource
    DataSet = TblTemporaria
    Left = 126
    Top = 255
  end
  object TblTemporaria: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    Left = 98
    Top = 255
  end
  object BatchMove: TBatchMove
    Mode = batCopy
    Left = 70
    Top = 255
  end
  object DSSQLTotalOperacao: TDataSource
    DataSet = SQLTotalOperacao
    Left = 243
    Top = 256
  end
  object SQLTotalOperacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.OPCXICOD,'
      '  OPERACAOCAIXA.OPCXA60DESCR,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED) as CREDITOS,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRDEB) as DEBITOS,'
      
        '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED - MOVIMENTOCAIXA.MVCXN2VLRDEB' +
        ') as Saldo'
      'from'
      '  MOVIMENTOCAIXA, OPERACAOCAIXA'
      'where'
      '  MOVIMENTOCAIXA.OPCXICOD = OPERACAOCAIXA.OPCXICOD and'
      '  (%MData)'
      '  and'
      '  (%MTerminal)'
      '  and'
      '  (%MOperador)'
      ''
      'group by'
      '  MOVIMENTOCAIXA.OPCXICOD, OPERACAOCAIXA.OPCXA60DESCR'
      'order by'
      '  OPERACAOCAIXA.OPCXA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
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
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 215
    Top = 256
    object SQLTotalOperacaoOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.MOVIMENTOCAIXA.OPCXICOD'
    end
    object SQLTotalOperacaoOPCXA60DESCR: TStringField
      DisplayLabel = 'OPERA'#199#195'O'
      FieldName = 'OPCXA60DESCR'
      Origin = 'DB.OPERACAOCAIXA.OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTotalOperacaoCREDITOS: TFloatField
      FieldName = 'CREDITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRCRED'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotalOperacaoDEBITOS: TFloatField
      FieldName = 'DEBITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRDEB'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotalOperacaoSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.00'
    end
  end
  object DSSQLTotaNumrario: TDataSource
    DataSet = SQLTotaNumerario
    Left = 187
    Top = 256
  end
  object SQLTotaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.NUMEICOD,'
      '  NUMERARIO.NUMEA30DESCR,'
      '  NUMERARIO.NUMEA5TIPO,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED) as VlrCredito,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRDEB)  as VlrDebito,'
      
        '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED - MOVIMENTOCAIXA.MVCXN2VLRDEB' +
        ') as Saldo'
      'from'
      '  MOVIMENTOCAIXA, NUMERARIO'
      'where'
      '  MOVIMENTOCAIXA.NUMEICOD = NUMERARIO.NUMEICOD and'
      '  (%MData)  and'
      '  (%MTerminal) and'
      '  (%MOperador)'
      'group by'
      
        '  MOVIMENTOCAIXA.NUMEICOD, NUMERARIO.NUMEA30DESCR, NUMERARIO.NUM' +
        'EA5TIPO')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
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
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 159
    Top = 256
    object SQLTotaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLTotaNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTotaNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
    object SQLTotaNumerarioVLRCREDITO: TFloatField
      FieldName = 'VLRCREDITO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotaNumerarioVLRDEBITO: TFloatField
      FieldName = 'VLRDEBITO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotaNumerarioSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.00'
    end
  end
  object PipeOperacao: TppBDEPipeline
    DataSource = DSSQLTotalOperacao
    UserName = 'PipeOperacao'
    Left = 371
    Top = 257
    object PipeOperacaoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'OPCXICOD'
      FieldName = 'OPCXICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object PipeOperacaoppField2: TppField
      FieldAlias = 'OPCXA60DESCR'
      FieldName = 'OPCXA60DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object PipeOperacaoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDITOS'
      FieldName = 'CREDITOS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object PipeOperacaoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBITOS'
      FieldName = 'DEBITOS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PipeOperacaoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object PipeNumerario: TppBDEPipeline
    DataSource = DSSQLTotaNumrario
    UserName = 'PipeNumerario'
    Left = 399
    Top = 257
    object PipeNumerarioppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMEICOD'
      FieldName = 'NUMEICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object PipeNumerarioppField2: TppField
      FieldAlias = 'NUMEA30DESCR'
      FieldName = 'NUMEA30DESCR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object PipeNumerarioppField3: TppField
      FieldAlias = 'NUMEA5TIPO'
      FieldName = 'NUMEA5TIPO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 2
    end
    object PipeNumerarioppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLRCREDITO'
      FieldName = 'VLRCREDITO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PipeNumerarioppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLRDEBITO'
      FieldName = 'VLRDEBITO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object PipeNumerarioppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
  end
  object dsMotoboy: TDataSource
    DataSet = sqlMotoboy
    Left = 61
    Top = 363
  end
  object sqlMotoboy: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MOTOBOY')
    Macros = <>
    Left = 33
    Top = 363
    object sqlMotoboyMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
      Origin = 'DB.MOTOBOY.MTBYICOD'
    end
    object sqlMotoboyMTBYA30DESCR: TStringField
      FieldName = 'MTBYA30DESCR'
      Origin = 'DB.MOTOBOY.MTBYA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CUPOM'
      'where '
      ' (%ORIGEMVENDA) and'
      ' (%MMotoboy) and '
      ' (%MTerminal) and'
      '  (%MData)')
    Macros = <
      item
        DataType = ftString
        Name = 'ORIGEMVENDA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMotoboy'
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
    Left = 137
    Top = 361
    object SQLVendasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOM.EMPRICOD'
    end
    object SQLVendasTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
    end
    object SQLVendasCUPOICOD: TIntegerField
      FieldName = 'CUPOICOD'
      Origin = 'DB.CUPOM.CUPOICOD'
    end
    object SQLVendasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLVendasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
    end
    object SQLVendasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object SQLVendasCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DB.CUPOM.CONVICOD'
    end
    object SQLVendasCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLVendasCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
    object SQLVendasCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
    end
    object SQLVendasCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
    end
    object SQLVendasCUPON2TOTITENSRET: TFloatField
      FieldName = 'CUPON2TOTITENSRET'
      Origin = 'DB.CUPOM.CUPON2TOTITENSRET'
    end
    object SQLVendasCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
    end
    object SQLVendasCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLVendasORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Origin = 'DB.CUPOM.ORIGEMVENDA'
      Size = 5
    end
    object SQLVendasMTBYICOD: TIntegerField
      FieldName = 'MTBYICOD'
      Origin = 'DB.CUPOM.MTBYICOD'
    end
    object SQLVendasCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'DB.CUPOM.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLVendasCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      Origin = 'DB.CUPOM.CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object SQLVendasCUPON3CREDTAXA: TFloatField
      FieldName = 'CUPON3CREDTAXA'
      Origin = 'DB.CUPOM.CUPON3CREDTAXA'
    end
  end
  object dsVendas: TDataSource
    DataSet = SQLVendas
    Left = 167
    Top = 361
  end
  object ReportTele: TppReport
    AutoStop = False
    DataPipeline = PipeVendas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 177
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportTelePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 263
    Top = 360
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeVendas'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 9450671
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        UserName = 'ppLabel16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vendas Tele por Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 1330063
        mmLeft = 0
        mmTop = 70115
        mmWidth = 17011155
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'ppLabel17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pe'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 1820072
        mmWidth = 3472134
        BandType = 0
      end
      object LbPeriodoTele: TppLabel
        UserName = 'LbPeriodoTele'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPeriodoTele'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 951973
        mmLeft = 0
        mmTop = 1890187
        mmWidth = 5398834
        BandType = 0
      end
      object LbTerminalTele: TppLabel
        UserName = 'LbTerminalTele'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbTerminalTele'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 951973
        mmLeft = 0
        mmTop = 3010171
        mmWidth = 5678763
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'ppLabel20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Terminal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 3010171
        mmWidth = 4550313
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'ppLabel21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 4200269
        mmWidth = 4200269
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'ppSystemVariable3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 1008065
        mmLeft = 0
        mmTop = 4200269
        mmWidth = 7941220
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'ppLabel18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 6160306
        mmWidth = 3248296
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'ppLabel19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Motoboy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 6160306
        mmWidth = 4043371
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'ppLabel22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 7630599
        mmWidth = 5600447
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'ppLabel23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Tele'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 7630599
        mmWidth = 4690278
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 2730241
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'ppDBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipeVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeVendas'
        mmHeight = 910168
        mmLeft = 0
        mmTop = 70115
        mmWidth = 10780734
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'ppDBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipeVendas
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeVendas'
        mmHeight = 907258
        mmLeft = 0
        mmTop = 1050133
        mmWidth = 4130154
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'ppDBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipeVendas
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeVendas'
        mmHeight = 907258
        mmLeft = 0
        mmTop = 1050133
        mmWidth = 4830243
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'ppDBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipeVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeVendas'
        mmHeight = 910168
        mmLeft = 0
        mmTop = 1050133
        mmWidth = 4900358
        BandType = 4
      end
      object lbMotoboy: TppLabel
        UserName = 'lbMotoboy'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lbMotoboy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 907258
        mmLeft = 0
        mmTop = 70115
        mmWidth = 3404930
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1260213
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'ppSystemVariable4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 1260213
        mmLeft = 0
        mmTop = 0
        mmWidth = 16240951
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 3500180
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'ppDBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipeVendas
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeVendas'
        mmHeight = 907258
        mmLeft = 0
        mmTop = 490009
        mmWidth = 4970208
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'ppLabel24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Totais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 1119983
        mmLeft = 0
        mmTop = 279930
        mmWidth = 3220250
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'ppLine6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 279930
        mmLeft = 0
        mmTop = 139965
        mmWidth = 11340858
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'ppDBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipeVendas
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeVendas'
        mmHeight = 907258
        mmLeft = 0
        mmTop = 490009
        mmWidth = 5670297
        BandType = 7
      end
    end
  end
  object PipeVendas: TppBDEPipeline
    DataSource = dsVendas
    UserName = 'PipeVendas'
    Left = 232
    Top = 360
    object PipeVendasppField1: TppField
      FieldAlias = 'CUPOA13ID'
      FieldName = 'CUPOA13ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object PipeVendasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object PipeVendasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'TERMICOD'
      FieldName = 'TERMICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object PipeVendasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUPOICOD'
      FieldName = 'CUPOICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object PipeVendasppField5: TppField
      FieldAlias = 'CUPODEMIS'
      FieldName = 'CUPODEMIS'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object PipeVendasppField6: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 5
    end
    object PipeVendasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object PipeVendasppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object PipeVendasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONVICOD'
      FieldName = 'CONVICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object PipeVendasppField10: TppField
      FieldAlias = 'CUPOCSTATUS'
      FieldName = 'CUPOCSTATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object PipeVendasppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUPON2TOTITENS'
      FieldName = 'CUPON2TOTITENS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object PipeVendasppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUPON2DESC'
      FieldName = 'CUPON2DESC'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object PipeVendasppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUPON2ACRESC'
      FieldName = 'CUPON2ACRESC'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object PipeVendasppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUPON2TOTITENSRET'
      FieldName = 'CUPON2TOTITENSRET'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object PipeVendasppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUPOINRO'
      FieldName = 'CUPOINRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object PipeVendasppField16: TppField
      FieldAlias = 'CUPOCTIPOPADRAO'
      FieldName = 'CUPOCTIPOPADRAO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 15
    end
    object PipeVendasppField17: TppField
      FieldAlias = 'ORIGEMVENDA'
      FieldName = 'ORIGEMVENDA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 16
    end
    object PipeVendasppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTBYICOD'
      FieldName = 'MTBYICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object PipeVendasppField19: TppField
      FieldAlias = 'CLIENTENOME'
      FieldName = 'CLIENTENOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object PipeVendasppField20: TppField
      FieldAlias = 'CLIENTEFONE'
      FieldName = 'CLIENTEFONE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 19
    end
    object PipeVendasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUPON3CREDTAXA'
      FieldName = 'CUPON3CREDTAXA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'HoraInicial.Text'
      'HoraFinal.Text'
      'ckBobina.Checked'
      'ckItensVendidos.Checked')
    StoredValues = <>
    Left = 10
    Top = 69
  end
  object rdp: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Vanderlei Matte'
    RegistroUsuario.SerieProduto = 'SINGLE-1206/01012'
    RegistroUsuario.AutorizacaoKey = 'WUKQ-4652-CKDL-2083-NXEO'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Grafico
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 40
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 24
    Top = 128
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
    Left = 400
    Top = 13
  end
  object SQLVendasPorVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '   VENDICOD,'
      '   SUM(CUPON2TOTITENS) as TotalVendedor   '
      'from CUPOM'
      'where '
      '  (%MTerminal) and'
      '  (%MData)'
      'group by '
      '  VENDICOD')
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
    Left = 385
    Top = 361
    object SQLVendasPorVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object SQLVendasPorVendedorTOTALVENDEDOR: TFloatField
      FieldName = 'TOTALVENDEDOR'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
  end
  object dsSQLItensVendidos: TDataSource
    DataSet = SQLItensVendidos
    Left = 300
    Top = 256
  end
  object SQLItensVendidos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOMITEM.PRODICOD,'
      '  CUPOMITEM.CPITN3VLRUNIT,'
      '  sum(CUPOMITEM.CPITN3QTD-CUPOMITEM.CPITN3QTDTROCA) as QTDE,'
      
        '  sum((CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD) - CUPOMITE' +
        'M.CPITN2DESC) as VLRTOTALITEM'
      'from'
      
        '  CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.CUP' +
        'OA13ID'
      'where'
      ' CUPOM.CUPOCSTATUS <> '#39'C'#39' and'
      '  (%MData)     and'
      '  (%MEmpresa)  and'
      '  (%MTerminal) and'
      '  (%MOperador)'
      'group by'
      '  CUPOMITEM.PRODICOD,'
      '  CUPOMITEM.CPITN3VLRUNIT'
      '')
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
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 272
    Top = 256
    object SQLItensVendidosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLItensVendidosCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
    end
    object SQLItensVendidosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object SQLItensVendidosVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
  end
  object SQLVendasCanceladas: TRxQuery
    DatabaseName = 'DB'
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
    Left = 430
    Top = 361
    object SQLVendasCanceladasID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.VENDASCANCELADAS.ID'
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
  object SQLOperador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO'
      'order by USUAA60LOGIN')
    Macros = <>
    Left = 9
    Top = 287
  end
  object DSSQLOperador: TDataSource
    DataSet = SQLOperador
    Left = 37
    Top = 287
  end
  object ReportTotais: TppReport
    AutoStop = False
    DataPipeline = PipeOperacao
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
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportTotaisPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 343
    Top = 256
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeOperacao'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Resumo de Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 5080
        mmLeft = 0
        mmTop = 265
        mmWidth = 71702
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pe'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6879
        mmWidth = 13123
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Terminal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 11377
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 15875
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Por Opera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4318
        mmLeft = 0
        mmTop = 21431
        mmWidth = 71173
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 21167
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 21167
        mmWidth = 11906
        BandType = 0
      end
      object LbPeriodo: TppLabel
        UserName = 'LbPeriodo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPeriodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 15081
        mmTop = 7144
        mmWidth = 15875
        BandType = 0
      end
      object LbTerminal: TppLabel
        UserName = 'LbTerminal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbTerminal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 18256
        mmTop = 11377
        mmWidth = 13885
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 15875
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 172509
        mmTop = 21167
        mmWidth = 9790
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OPCXA60DESCR'
        DataPipeline = PipeOperacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 4318
        mmLeft = 0
        mmTop = 0
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CREDITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 4233
        mmLeft = 73290
        mmTop = 529
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEBITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 4233
        mmLeft = 117475
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SALDO'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 4233
        mmLeft = 159279
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 72231
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipeNumerario'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8202
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeNumerario
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
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeNumerario'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLabel6: TppLabel
              UserName = 'Label6'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Por Numer'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4318
              mmLeft = 0
              mmTop = 0
              mmWidth = 69321
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 80698
              mmTop = 0
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'D'#233'bito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 125942
              mmTop = 529
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 171186
              mmTop = 529
              mmWidth = 9790
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NUMEA30DESCR'
              DataPipeline = PipeNumerario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 4233
              mmLeft = 529
              mmTop = 265
              mmWidth = 68527
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VLRCREDITO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 4233
              mmLeft = 71173
              mmTop = 0
              mmWidth = 21696
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VLRDEBITO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 4233
              mmLeft = 116417
              mmTop = 529
              mmWidth = 21431
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SALDO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 4233
              mmLeft = 160338
              mmTop = 1323
              mmWidth = 20638
              BandType = 4
            end
          end
          object SumarioNumerarios: TppSummaryBand
            BeforePrint = SumarioNumerariosBeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 98954
            mmPrintPosition = 0
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SALDO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 4233
              mmLeft = 158221
              mmTop = 1323
              mmWidth = 23019
              BandType = 7
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Resumo Gerencial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 4498
              mmTop = 10583
              mmWidth = 31485
              BandType = 7
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendas Balc'#227'o =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4498
              mmTop = 27517
              mmWidth = 30956
              BandType = 7
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendas Tele =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4498
              mmTop = 38629
              mmWidth = 30956
              BandType = 7
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Servi'#231'os Balc'#227'o =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4233
              mmTop = 46038
              mmWidth = 31221
              BandType = 7
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Servi'#231'os Tele =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4233
              mmTop = 57150
              mmWidth = 31221
              BandType = 7
            end
            object lbTotalVendaBalcao: TppLabel
              UserName = 'lbTotalVendaBalcao'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 27517
              mmWidth = 7832
              BandType = 7
            end
            object lbTotalServicosBalcao: TppLabel
              UserName = 'lbTotalVendaBalcao1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 46038
              mmWidth = 7938
              BandType = 7
            end
            object lbTotalVendaTele: TppLabel
              UserName = 'lbTotalVendaBalcao2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 38629
              mmWidth = 7832
              BandType = 7
            end
            object lbTotalServicosTele: TppLabel
              UserName = 'lbTotalServicosTele'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 57150
              mmWidth = 7938
              BandType = 7
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Geral de Vendas =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 4498
              mmTop = 68527
              mmWidth = 35190
              BandType = 7
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Geral de Servi'#231'os =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 4498
              mmTop = 74348
              mmWidth = 36777
              BandType = 7
            end
            object lbTotalVendas: TppLabel
              UserName = 'lbTotalVendas'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58738
              mmTop = 68527
              mmWidth = 7832
              BandType = 7
            end
            object lbTotalServicos: TppLabel
              UserName = 'lbTotalServicosTele1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58738
              mmTop = 74348
              mmWidth = 7832
              BandType = 7
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendas Mesas =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4498
              mmTop = 33073
              mmWidth = 30956
              BandType = 7
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Servi'#231'os Mesas =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4233
              mmTop = 51594
              mmWidth = 31221
              BandType = 7
            end
            object lbTotalVendaMesas: TppLabel
              UserName = 'lbTotalVendaBalcao3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 33073
              mmWidth = 7832
              BandType = 7
            end
            object lbTotalServicosMesas: TppLabel
              UserName = 'lbTotalServicosMesas'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 51594
              mmWidth = 7938
              BandType = 7
            end
            object ppLabel10: TppLabel
              UserName = 'Label301'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendas Dinheiro =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4498
              mmTop = 15610
              mmWidth = 32544
              BandType = 7
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendas Cart'#245'es  =>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4233
              mmTop = 20108
              mmWidth = 32544
              BandType = 7
            end
            object lbTotalDin: TppLabel
              UserName = 'lbTotalDin'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 15610
              mmWidth = 7832
              BandType = 7
            end
            object lbTotalCrt: TppLabel
              UserName = 'lbTotalCrt'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 58473
              mmTop = 20108
              mmWidth = 7832
              BandType = 7
            end
            object ppSubReport2: TppSubReport
              UserName = 'SubReport2'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'PipeItensVendidos'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 93927
              mmWidth = 197300
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport2: TppChildReport
                AutoStop = False
                DataPipeline = PipeItensVendidos
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
                Version = '10.06'
                mmColumnWidth = 0
                DataPipelineName = 'PipeItensVendidos'
                object TituloProdutosVendidos: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 4233
                  mmPrintPosition = 0
                  object ppLabel43: TppLabel
                    UserName = 'Label1'
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Produtos Vendidos'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    Transparent = True
                    mmHeight = 4318
                    mmLeft = 0
                    mmTop = 0
                    mmWidth = 110861
                    BandType = 1
                  end
                  object ppLabel11: TppLabel
                    UserName = 'Label302'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Vlr.U.Venda'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 129382
                    mmTop = 0
                    mmWidth = 20743
                    BandType = 1
                  end
                  object ppLabel42: TppLabel
                    UserName = 'Label2'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Quantidade'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 150548
                    mmTop = 0
                    mmWidth = 20405
                    BandType = 1
                  end
                  object ppLabel41: TppLabel
                    UserName = 'Label3'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Vlr.Total Item'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 171450
                    mmTop = 0
                    mmWidth = 24553
                    BandType = 1
                  end
                end
                object DetalheProdutosVendidos: TppDetailBand
                  BeforePrint = DetalheProdutosVendidosBeforePrint
                  mmBottomOffset = 0
                  mmHeight = 265
                  mmPrintPosition = 0
                  object ppDBText27: TppDBText
                    UserName = 'DBText10'
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTDE'
                    DataPipeline = PipeItensVendidos
                    DisplayFormat = '#0.000'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'PipeItensVendidos'
                    mmHeight = 0
                    mmLeft = 161132
                    mmTop = 0
                    mmWidth = 7154
                    BandType = 4
                  end
                  object ppDBText28: TppDBText
                    UserName = 'DBText101'
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'VLRTOTALITEM'
                    DataPipeline = PipeItensVendidos
                    DisplayFormat = '#0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'PipeItensVendidos'
                    mmHeight = 0
                    mmLeft = 175155
                    mmTop = 0
                    mmWidth = 19770
                    BandType = 4
                  end
                end
                object ppSummaryBand4: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 529
                  mmPrintPosition = 0
                  object ppLine1: TppLine
                    UserName = 'Line1'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Pen.Style = psDot
                    Weight = 0.750000000000000000
                    mmHeight = 529
                    mmLeft = 529
                    mmTop = 0
                    mmWidth = 197115
                    BandType = 7
                  end
                end
                object ppGroup1: TppGroup
                  BreakName = 'PRODICOD'
                  DataPipeline = PipeItensVendidos
                  KeepTogether = True
                  OutlineSettings.CreateNode = True
                  UserName = 'Group1'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'PipeItensVendidos'
                  object ppGroupHeaderBand1: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 794
                    mmPrintPosition = 0
                  end
                  object TotalProdutosVendidos: TppGroupFooterBand
                    mmBottomOffset = 0
                    mmHeight = 3704
                    mmPrintPosition = 0
                    object ppDBText26: TppDBText
                      UserName = 'DBText9'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'PRODICOD'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '#####00000'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3440
                      mmLeft = 529
                      mmTop = 264
                      mmWidth = 17198
                      BandType = 5
                      GroupNo = 0
                    end
                    object Produto: TppLabel
                      UserName = 'Produto'
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Produto'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 19050
                      mmTop = 264
                      mmWidth = 92604
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBText20: TppDBText
                      UserName = 'DBText102'
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'CPITN3VLRUNIT'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '#0.000'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3440
                      mmLeft = 130704
                      mmTop = 264
                      mmWidth = 19579
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBCalc5: TppDBCalc
                      UserName = 'DBCalc4'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'QTDE'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '##0.000'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      ResetGroup = ppGroup1
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3440
                      mmLeft = 151871
                      mmTop = 264
                      mmWidth = 16669
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBCalc6: TppDBCalc
                      UserName = 'DBCalc2'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'VLRTOTALITEM'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '##0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      ResetGroup = ppGroup1
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3429
                      mmLeft = 173832
                      mmTop = 265
                      mmWidth = 21167
                      BandType = 5
                      GroupNo = 0
                    end
                  end
                end
              end
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 93398
              mmWidth = 197115
              BandType = 7
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 7144
              mmWidth = 193411
              BandType = 7
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Totais:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 1058
              mmWidth = 69321
              BandType = 7
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object TotalCredito: TppDBCalc
        UserName = 'TotalCredito'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CREDITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 4233
        mmLeft = 73025
        mmTop = 529
        mmWidth = 20638
        BandType = 7
      end
      object TotalDebito: TppDBCalc
        UserName = 'TotalDebito'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEBITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 265
        mmWidth = 24342
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 7144
        mmWidth = 193675
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SALDO'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 4233
        mmLeft = 160073
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Totais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1058
        mmWidth = 71173
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PipeItensVendidos: TppBDEPipeline
    DataSource = dsSQLItensVendidos
    UserName = 'PipeItensVendidos'
    Left = 428
    Top = 259
    object PipeItensVendidosppField1: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeItensVendidosppField2: TppField
      FieldAlias = 'CPITN3VLRUNIT'
      FieldName = 'CPITN3VLRUNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeItensVendidosppField3: TppField
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeItensVendidosppField4: TppField
      FieldAlias = 'VLRTOTALITEM'
      FieldName = 'VLRTOTALITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
end
