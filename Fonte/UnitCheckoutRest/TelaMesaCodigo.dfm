object FormTelaMesaCodigo: TFormTelaMesaCodigo
  Left = 608
  Top = 144
  Width = 533
  Height = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 517
    Height = 313
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 1
    object AdvOfficeStatusBar2: TAdvOfficeStatusBar
      Left = 0
      Top = 0
      Width = 517
      Height = 57
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
      object BtnTransfConta: TSpeedButton
        Tag = 2
        Left = 812
        Top = 3
        Width = 188
        Height = 41
        Cursor = crHandPoint
        Caption = '   CTRL+A Transf Mesa'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
          180000000000C80A0000130B0000130B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000000000CFF8FFCFF8FFCFF8FFCFF8FF
          CFF8FFCFF8FF90F8FF90F8FF90F8FF90F8FF90F8FF90F8FF60F8FF60F8FF60F8
          FF60F8FF60F8FF60F8FF60F8FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000CFF8FFCFF8FFCFF8FFCFF8FF000080000080000080CFF8FFCF
          F8FFCF0000CF0000CF0000CF0000CF0000CF0000CF0000CF0000900000900000
          90000060F8FF60F8FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          CFF8FFCFF8FF000080000080000080000080000080000080CFF8FFCFF8FFCF00
          00CF0000CF0000CF0000CF0000CF0000CF000090000090000090000060F8FF60
          F8FF000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000CFF8FFCFF8FF00
          0080000080000080000080000080000080000090CFF8FFCFF8FFCF0000CF0000
          CF0000CF0000CF0000CF000090000090000090000060F8FF60F8FF000000FFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFF000000CFF8FFCFF8FF0000800000800000
          80000080000080000080000080000090CFF8FFCFF8FFCF0000CF0000CF0000CF
          0000CF000090000090000090000090F8FF90F8FF000000FFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFF000000CFF8FFCFF8FF000080000080000080000080000080
          000080000090000090000090CFF8FFCFF8FFCF0000CF0000CF0000CF00009000
          0090000090000090000090000090F8FF60F8FF000000FFFFFFFFFFFF0000FFFF
          FFFFFFFF000000CFF8FF00008000008000008000008000008000008000008000
          0090CFF8FFCFF8FFCFF8FFCFF8FFCF0000CF0000CF0000900000900000900000
          90000090000090000090000090F8FF60F8FF000000FFFFFF0000FFFFFF000000
          CFF8FFCFF8FF000080000080000080000080000080000090CFF8FFCFF8FFCFF8
          FFCFF8FFCFF8FFCFF8FFCF0000CF000090000090000090000090000090000090
          000090000090000090000090F8FF000000FFFFFF0000FFFFFF000000CFF8FF00
          0080000080000080000080000080000080CFF8FFCFF8FFCFF8FFCFF8FFCFF8FF
          CFF8FFCFF8FF900000900000900000900000CFF8FF9000009000009000009000
          0090000090000090F8FF000000FFFFFF0000FFFFFF000000CFF8FF0000800000
          80000080000080000090CFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCF
          F8FF900000900000900000CFF8FFCFF8FFCFF8FF900000900000900000900000
          90000090F8FF000000FFFFFF0000000000CFF8FFCFF8FF000080000080000080
          000080000090CFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF9000
          00900000CFF8FFCFF8FFCFF8FFCFF8FF90000090000090000090000090000090
          F8FF90F8FF0000000000000000CFF8FF000080000090000080000090000090CF
          F8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF900000CFF8FF
          CFF8FFCFF8FFCFF8FFCFF8FFCFF8FF90000090000070000070000070000090F8
          FF0000000000000000CFF8FF000090000080000090000090000090CFF8FFCFF8
          FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCF
          F8FFCFF8FFCFF8FFCFF8FF90000070000070000070000070000090F8FF000000
          0000000000CFF8FF0000800000900000900000A0000090CFF8FFCFF8FFCFF8FF
          CFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8
          FFCFF8FFCFF8FF70000070000070000070000070000090F8FF00000000000000
          00CFF8FF0000900000900000A00000900000A0CFF8FFCFF8FFCFF8FFCFF8FFCF
          F8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF
          CFF8FF70000070000070000070000070000090F8FF000000000000000090F8FF
          0000900000A00000900000A00000A0CFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8
          FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF70
          000070000070000070000060000090F8FF000000000000000090F8FF0000A000
          00900000A00000A00000B0CFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF0000B0
          CFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF7000006000
          00700000600000600000CFF8FF000000000000000090F8FF0000900000A00000
          A00000B00000B00000B0CFF8FFCFF8FFCFF8FFCFF8FF0000B00000CFCFF8FFCF
          F8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF700000600000700000600000
          600000600000CFF8FF000000000000000090F8FF90F8FF0000A00000B00000A0
          0000B00000B00000B0CFF8FFCFF8FF0000B00000CF0000CFCFF8FFCFF8FFCFF8
          FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF600000700000600000600000500000CF
          F8FFCFF8FF0000000000FFFFFF00000090F8FF0000B00000A00000B00000B000
          00B00000B00000CF0000CF0000CF0000CF0000CFCFF8FFCFF8FFCFF8FFCFF8FF
          CFF8FFCFF8FFCFF8FF600000700000600000600000500000500000CFF8FF0000
          00FFFFFF0000FFFFFF00000090F8FF90F8FF0000B00000B00000B00000B00000
          CF0000CF0000CF0000CF0000DF0000DFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FFCF
          F8FF600000700000600000600000500000500000500000CFF8FF000000FFFFFF
          0000FFFFFFFFFFFF00000090F8FF0000B00000B00000B00000CF0000CF0000CF
          0000CF0000DF0000DF0000DFCFF8FFCFF8FFCFF8FFCFF8FF7000006000007000
          00600000600000500000500000500000CFF8FFCFF8FF000000FFFFFF0000FFFF
          FFFFFFFF00000090F8FF90F8FF0000B00000CF0000CF0000CF0000CF0000DF00
          00DF0000DF0000DFCFF8FFCFF8FF700000700000600000700000600000600000
          500000500000500000CFF8FFCFF8FF000000FFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF00000090F8FF90F8FF0000CF0000CF0000CF0000DF0000DF0000DF0000
          DF0000FFCFF8FFCFF8FF70000060000070000060000060000050000050000050
          0000500000CFF8FF000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF00000090
          F8FF90F8FF0000B00000CF0000CF0000DF0000DF0000DF0000DF0000FF0000FF
          CFF8FFCFF8FF600000700000600000600000500000500000500000CFF8FFCFF8
          FFCFF8FF000000FFFFFFFFFFFFFFFFFF0000FFFFFF00000060F8FF90F8FF0000
          B00000CF0000CF0000DF0000DF0000DF0000DF0000FF0000FF0000FFCFF8FFCF
          F8FF700000600000600000500000500000500000CFF8FFCFF8FF000000000000
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF00000060F8FF0000B00000CF0000CF
          0000DF0000DF0000DF0000DF0000FF0000DF0000FF0000FFCFF8FFCFF8FF6000
          00600000500000CFF8FFCFF8FFCFF8FFCFF8FF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFF00000060F8FF60F8FF60F8FF90F8FF90F8FF90
          F8FF90F8FF90F8FF90F8FF90F8FF90F8FFCFF8FFCFF8FFCFF8FFCFF8FFCFF8FF
          CFF8FFCFF8FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFF0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        Margin = 0
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 1
      end
      object ImgDesligar: TImage
        Left = 463
        Top = 6
        Width = 45
        Height = 45
        Hint = 'Voltar a Tela Principal'
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
      object lbTitulo: TRxLabel
        Left = 23
        Top = 12
        Width = 266
        Height = 29
        Caption = 'Informe a Mesa e Comanda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        ShadowColor = 15195349
        ShadowPos = spRightBottom
        Transparent = True
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 57
      Width = 517
      Height = 256
      Align = alClient
      Color = 14731440
      TabOrder = 1
      object Bt7: TSpeedButton
        Left = 243
        Top = 18
        Width = 49
        Height = 46
        Caption = '7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt7Click
      end
      object Bt8: TSpeedButton
        Left = 298
        Top = 18
        Width = 49
        Height = 46
        Caption = '8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt8Click
      end
      object Bt9: TSpeedButton
        Left = 353
        Top = 18
        Width = 49
        Height = 46
        Caption = '9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt9Click
      end
      object BtReturn: TSpeedButton
        Left = 408
        Top = 98
        Width = 78
        Height = 116
        Caption = 'Enter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = BtReturnClick
      end
      object BtBackSpace: TSpeedButton
        Left = 353
        Top = 168
        Width = 49
        Height = 46
        Caption = 'Bac'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = BtBackSpaceClick
      end
      object BtVirgula: TSpeedButton
        Left = 299
        Top = 168
        Width = 49
        Height = 46
        Caption = ','
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = BtVirgulaClick
      end
      object Bt0: TSpeedButton
        Left = 243
        Top = 168
        Width = 49
        Height = 46
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt0Click
      end
      object Bt1: TSpeedButton
        Left = 243
        Top = 118
        Width = 49
        Height = 46
        Caption = '1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt1Click
      end
      object Bt2: TSpeedButton
        Left = 299
        Top = 118
        Width = 49
        Height = 46
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt2Click
      end
      object Bt3: TSpeedButton
        Left = 353
        Top = 118
        Width = 49
        Height = 46
        Caption = '3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt3Click
      end
      object Bt6: TSpeedButton
        Left = 353
        Top = 68
        Width = 49
        Height = 46
        Caption = '6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt6Click
      end
      object Bt5: TSpeedButton
        Left = 298
        Top = 68
        Width = 49
        Height = 46
        Caption = '5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt5Click
      end
      object Bt4: TSpeedButton
        Left = 243
        Top = 68
        Width = 49
        Height = 46
        Caption = '4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = Bt4Click
      end
      object RxLabel2: TRxLabel
        Left = 1
        Top = 232
        Width = 515
        Height = 23
        Align = alBottom
        Alignment = taCenter
        Caption = '[Enter] Confirmar                    [ESC] Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ShadowColor = clBlack
      end
      object RxLabel1: TRxLabel
        Left = 22
        Top = 34
        Width = 54
        Height = 29
        Caption = 'Mesa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        ShadowColor = 15195349
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel3: TRxLabel
        Left = 15
        Top = 102
        Width = 95
        Height = 29
        Caption = 'Comanda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        ShadowColor = 15195349
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel4: TRxLabel
        Left = 16
        Top = 164
        Width = 64
        Height = 29
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        ShadowColor = 15195349
        ShadowPos = spRightBottom
        Transparent = True
      end
      object EditCodMesa: TCurrencyEdit
        Left = 120
        Top = 29
        Width = 87
        Height = 41
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ZeroEmpty = False
        OnKeyDown = EditCodMesaKeyDown
      end
      object EditCodComanda: TCurrencyEdit
        Left = 120
        Top = 95
        Width = 87
        Height = 41
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ZeroEmpty = False
        OnKeyDown = EditCodComandaKeyDown
      end
      object EditSenha: TEdit
        Left = 120
        Top = 158
        Width = 87
        Height = 45
        CharCase = ecUpperCase
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 2
        OnKeyDown = EditSenhaKeyDown
      end
      object EditVendedorCodigo: TEdit
        Left = 10
        Top = 198
        Width = 27
        Height = 29
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Color = clBlack
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
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
    Left = 329
    Top = 5
  end
end
