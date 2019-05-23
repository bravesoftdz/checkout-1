object FormTelaRecebimentoCrediario: TFormTelaRecebimentoCrediario
  Left = 325
  Top = 53
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = ' '
  ClientHeight = 583
  ClientWidth = 785
  Color = 5278518
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 785
    Height = 33
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Recebimento de Credi'#225'rio'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblInstrucoes: TRxLabel
    Left = 242
    Top = 456
    Width = 534
    Height = 34
    AutoSize = False
    Caption = 'LblInstrucoes'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
    WordWrap = True
  end
  object RxLabel1: TRxLabel
    Left = 0
    Top = 33
    Width = 785
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = 'Parcela(s) '#224' receber'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblTROCO: TLabel
    Left = 680
    Top = 496
    Width = 87
    Height = 33
    Alignment = taRightJustify
    Caption = 'TROCO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel7: TPanel
    Left = 5
    Top = 61
    Width = 771
    Height = 392
    BevelOuter = bvNone
    BorderWidth = 3
    Color = 5278518
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 368
      Width = 135
      Height = 23
      Caption = 'TOTAL '#192' PAGAR'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object LblNUMERARIO: TLabel
      Left = 331
      Top = 367
      Width = 106
      Height = 23
      Caption = 'NUMERARIO'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 296
      Top = 367
      Width = 26
      Height = 23
      Caption = 'em'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 4
      Width = 765
      Height = 363
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 46
        Align = alTop
        BevelOuter = bvNone
        Color = clGreen
        TabOrder = 0
        object Label2: TLabel
          Left = 4
          Top = 1
          Width = 31
          Height = 21
          Caption = 'Pos.'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 44
          Top = 1
          Width = 99
          Height = 21
          Caption = 'Nome Cliente'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 372
          Top = 1
          Width = 128
          Height = 21
          Caption = 'Documento-Parc.'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 531
          Top = 1
          Width = 79
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dt.Vencto.'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 624
          Top = 1
          Width = 89
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vl.Vencto.'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 164
          Top = 24
          Width = 79
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vl.Juros'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 723
          Top = 1
          Width = 41
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Atr.'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 264
          Top = 24
          Width = 79
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vl.Multa'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 365
          Top = 24
          Width = 79
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vl.Desc.'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 674
          Top = 23
          Width = 90
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vl. '#224' Pagar'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 557
          Top = 23
          Width = 82
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vl.Abatido'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 461
          Top = 23
          Width = 79
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tx.Cobr.'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 2
          Top = 23
          Width = 91
          Height = 21
          Caption = 'Tipo Parcela'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
      object DBCtrlGridParcelas: TDBCtrlGrid
        Left = 0
        Top = 46
        Width = 784
        Height = 317
        Align = alLeft
        Color = clWhite
        DataSource = DSSQLParcelasReceberTemp
        PanelBorder = gbNone
        PanelHeight = 52
        PanelWidth = 767
        ParentColor = False
        TabOrder = 1
        TabStop = False
        RowCount = 6
        object DBText1: TDBText
          Left = 4
          Top = 1
          Width = 30
          Height = 21
          DataField = 'IPOSICAO'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 44
          Top = 1
          Width = 320
          Height = 21
          DataField = 'NOMECLIENTE'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 372
          Top = 1
          Width = 121
          Height = 21
          DataField = 'A13CUPOID'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 491
          Top = 1
          Width = 28
          Height = 21
          DataField = 'INROPARC'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 531
          Top = 1
          Width = 90
          Height = 21
          DataField = 'DVENC'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 723
          Top = 1
          Width = 41
          Height = 21
          Alignment = taRightJustify
          DataField = 'INRODIASATRAS'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 624
          Top = 1
          Width = 89
          Height = 21
          Alignment = taRightJustify
          DataField = 'N2VLRVENC'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 164
          Top = 24
          Width = 79
          Height = 21
          Alignment = taRightJustify
          DataField = 'N2VLRJURO'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 264
          Top = 24
          Width = 79
          Height = 21
          Alignment = taRightJustify
          DataField = 'N2VLRMULTA'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 365
          Top = 24
          Width = 79
          Height = 21
          Alignment = taRightJustify
          DataField = 'N2VLRDESC'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 674
          Top = 24
          Width = 90
          Height = 21
          Alignment = taRightJustify
          DataField = 'N2VLRPAGAR'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 461
          Top = 24
          Width = 79
          Height = 21
          Alignment = taRightJustify
          DataField = 'N2VLRTXCOBR'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 557
          Top = 24
          Width = 83
          Height = 21
          Alignment = taRightJustify
          DataField = 'N2VLRAMORT'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 4
          Top = 24
          Width = 168
          Height = 21
          Color = clWhite
          DataField = 'TipoDocCalc'
          DataSource = DSSQLParcelasReceberTemp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
      object ListBoxAvisos: TTextListBox
        Left = 48
        Top = 103
        Width = 675
        Height = 244
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 19
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnKeyDown = ListBoxAvisosKeyDown
      end
    end
    object TotalPagar: TCurrencyEdit
      Left = 153
      Top = 367
      Width = 128
      Height = 23
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object EntradaDados: TEdit
    Left = 5
    Top = 456
    Width = 232
    Height = 35
    CharCase = ecUpperCase
    Color = 16380658
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnKeyDown = EntradaDadosKeyDown
    OnKeyPress = EntradaDadosKeyPress
  end
  object BtnF3: TConerBtn
    Left = 93
    Top = 500
    Width = 100
    Height = 48
    Cursor = crHandPoint
    Caption = 'F3 Receber'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnClick = BtnF3Click
    Glyph.Data = {
      360F0000424D360F0000000000003600000028000000200000001E0000000100
      200000000000000F000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E93D4FF0E93D493139DE8D40E93D49D0E93
      D4D4FFFFFF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0E93D4FF112360D40F57A323FFFFFFA315397FFF1539
      7F7FFFFFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF1B6DB8FF15397FB80E89BC3915397FBC15397F391539
      7F7F15397F391B6DB87FFFFFFF6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0F57A3FF112360A31B6DB82318BDE8B818BDE8BD18BDE8E8139DE8BD0E93
      D4E81B6DB8930F57A3B80B0012570E89BC12FFFFFF89FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF139DE8FF0F57
      A3E822D9F45722D9F4F40F57A3D90E93D4A318BDE89315397FE80D18343922D9
      F4340F57A3D90E89BCA30F57A3890F57A3A311236057FFFFFF60FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F57A3FF34FC
      FCA30E93D4FC15397FD40E93D439139DE8D418BDE89DFFFFFFE8112360FF22D9
      F4600E89BCD90F57A3BC0E89BC570F57A3BC15397F570E89BC7FFFFFFF89FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D1834FF22D9F4181539
      7FF41B6DB839FFFFFFB8139DE8FF139DE8E818BDE89DFFFFFFE8112360FF22D9
      F4600E93D4D91B6DB8D418BDE86D0E89BCE81B6DB8890B0012B8FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F364AFF0F36
      4A4AFFFFFF36FFFFFFFFFFFFFFFF0E93D4FF18BDE893FFFFFFE8112360FF34FC
      FC60FFFFFFFC15397FFF22D9F4390E93D4F41B6DB8930D1834B8FFFFFF18FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E93D4FF18BDE893FFFFFFE80D1834FF34FC
      FC3415397FFC0E89BC7F18BDE8890E89BCE81B6DB8890B0012B8FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1B6DB8FF18BDE86DFFFFFFE80B0012FF34FC
      FC1222D9F4FC22D9F4F418BDE8D9559CB5E815397F9C0F57A37FFFFFFF57FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF559CB5FF559CB5B50D18349C559CB53434FCFC9C86FDFCFC86FDFCFD34FC
      FCFC34FCFCFC22D9F4FC0F57A3D90B0012A31B6DB800FFFFFFB8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF559CB5FF0D5B599C1539
      7F5915397F391B6DB87FB0C3E86D86FDFCE886FDFCFD112360FC1123602386FD
      FC60112360FD0F57A3600F57A357FFFFFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF168899FF4E5198999582C5519582
      C5C59582C5828DA7DBC515397FA767BEE87F67BEE8BE4E5198E80B001251C9FB
      FB120D1834FBFFFFFF34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF168899FF4E5198889582C5989582C5829582
      C5C58DA7DB820D1834DB0D183418C9FBFB348DA7DBFB6ABEBDDB0B0012BEC9FB
      FB120D1834FBFFFFFF340E93D4FF0E89BCD4FFFFFF89FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0D1834FF9582C5189582C5C59582C5829582
      C5C5636AAC82636AACAC636AAC6AC9FBFBAC8DA7DBFB559CB5DB0B00129CC9FB
      FB12112360FB0E93D4600F57A3930D1834A30F364A18139DE84AFFFFFF9DFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF112360FF8DA7DB608DA7DBA7559CB5DB8DA7DB9CB0C3
      E8DB0B0012C36ABEBD124E5198BEC9FBFB98559CB5FB559CB5B50B00129CB0C3
      E8124E5198C30F57A39815397F574E51987F4E5198510B00129811236000FFFF
      FF60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF15397FFFFFFFFF7FFFFFFFFF8DA7DBFFFFFFFFA7B0C3
      E8FF0D1834C36ABEBD3415397FBEFFFFFF7F559CB5FF559CB5B50B00129C8DA7
      DB12636AACA70D1834AC112360184E5198604E5198514E5198980B001251FFFF
      FF12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4E5198FF86FDFC9886FDFCFD86FDFCFC34FCFCFD86FD
      FCFC0D1834FD6ABEBD340F364ABE67BEE84A1B6DB8BE559CB5B80B00129C8DA7
      DB12559CB5A70B0012B515397F004E51987F4E5198514E5198980B001251FFFF
      FF12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4E5198FF86FDFC9886FDFCFD86FDFCFC34FCFCFD34FC
      FCFC0F57A3FC237373A30D18347367BEE8341B6DB8BE6ABEBDB80B0012BE8DA7
      DB1222D9F4A70B0012F4559CB5001B6DB8B5636AAC6D0F57A3AC0D183457FFFF
      FF34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF636AACFF86FDFCACC9FBFBFDC9FBFBFB34FCFCFB34FC
      FCFC34FCFCFC0B0012FC0B00120022D9F4121B6DB8D94E5198B80B00125122D9
      F41234FCFCD922D9F4FC559CB5D91B6DB8B51B6DB86D0D1834B80F364A18FFFF
      FF4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB0C3E8FF9582C5E8C9FBFB82C9FBFBFB86FDFCFB34FC
      FCFC34FCFCFC34FCFCFC112360FC34FCFC601B6DB8FC0B0012B80B00120022D9
      F41234FCFCD918BDE8FC0E89BCBD1B6DB8BC15397F6D0B00127FFFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8DA7DBFFB0C3E8A7C9FBFBE8C9FBFBFB86FD
      FCFB34FCFCFD34FCFCFC34FCFCFC34FCFCFC34FCFCFC22D9F4FC34FCFCD934FC
      FCFC22D9F4FC0E93D4F40E89BC9315397FBC0B0012390E93D412FFFFFF93FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C3E8FFB0C3E8E8C9FBFBC3C9FB
      FBFBC9FBFBFB86FDFCFB34FCFCFD34FCFCFC34FCFCFC34FCFCFC34FCFCFC22D9
      F4FC139DE8D91B6DB8E80B00126D0D183412139DE818FFFFFFE8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF559CB5FF8DA7DB9C8DA7
      DBDBB0C3E8A7C9FBFBE886FDFCFB86FDFCFC34FCFCFD34FCFCFC1B6DB8FC22D9
      F4B818BDE8D915397FE815397F39FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB0C3E8FF8DA7DBE89582C5A786FDFCC5636AACFD15397FAC1123603922D9
      F46018BDE8D90F57A3E81B6DB857FFFFFFB8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9582C5FF86FDFCC5559CB5FDFFFFFFB5237373FF18BD
      E87318BDE8BD0E93D4E80F57A393FFFFFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9582C5FF86FDFCC58DA7DBFD139DE8DB2373739D18BD
      E87322D9F4BD0E93D4F415397F93FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9582C5FF86FDFCC567BEE8FD139DE8E82373739D1B6D
      B873139DE86D1B6DB8E81123606DFFFFFF60FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF636AACFF636AACAC4E51986A0E93D49867BEE8931539
      7FE8112360390D1834600D183418FFFFFF34FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object BtnF1: TConerBtn
    Left = 3
    Top = 500
    Width = 90
    Height = 48
    Cursor = crHandPoint
    Caption = 'F1 Ajuda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = False
    OnClick = BtnF1Click
    Glyph.Data = {
      B60B0000424DB60B00000000000036000000280000001E000000200000000100
      180000000000800B0000130B0000130B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF0000000000000000500000700000B00000B00000B0
      000000000000FFFFFF0000000000004000004000004000005000005000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF0000000000000000500000700000800000800000B00000B00000A000008000
      0070000000400000400000500000500000700000700000700000500000400000
      000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000000000000050
      0000700000800000800000A00000A00000B00000B00000800000700000704000
      0050000050000070000070000070000070000070000070000070000070000000
      0000000000FFFFFF0000FFFFFF00000000000000005000007000008000008000
      00A00000A00000A00000A00000B00000A0000080000070400000500000700000
      70000070000070000070000070000070000070000070000070000070000000C8
      FF00000000000000000000500000500000700000800000800000A00000A00000
      A00000A00000A00000B000008000007000007040000070000070000070000070
      000070000090000090000090000090000090000070000070000000C8FF000000
      00000000000000500000700000800000800000A00000A00000A00000A00000A0
      0000A00000B00000800000704000005000007000007000007000009000009000
      0090000090000090000090000090000090000070000070000000000000000000
      000000500000700000800000A00000A00000A00000A00000A00000A00000A000
      00B0000080000070400000700000700000700000900000900000900000900000
      9000009000009000009000009000009000007000000000000000000000000070
      0000700000800000A00000A00000A00000A00000A00000A00000A00000B00000
      A0000070400000700000700000700000900000900000900000CF0000CF0000CF
      0000CF0000900000900000900000700000000000000000000000007000008000
      00A00000A00000800000A00000A00000A00000A00000A00000DF0000A0000080
      500000700000700000900000900000900000CF0000CF0000CF0000CF0000CF00
      00CF000090000090000090000000000000000000000000700000800000A00000
      A00000700000800000A00000A00000A00000A00000FF0000B00000A050000070
      0000700000900000900000CF0000CF0000CF0000CF0000CF0000CF0000CF0000
      CF000090000090000000000000000000000000700000800000A0000080000070
      0000700000A00000A00000A00000A00000FF0000DF0000B00000805000007000
      00900000900000CF0000CF0000CF0000CF0000CF0000CF0000CF0000CF000090
      000000C8FF00000000000000000000700000800000A000008000007000007000
      00800000A00000A00000A00000FF0000DF0000DF0000A0500000700000700000
      900000900000CF0000CF0000CF0000CF0000FF0000FF0000CF0000CF000000C8
      FF00000000000000000000700000800000A00000700000700000700000700000
      800000A00000A00000FF0000DF0000DF0000DF0000DF50000070000090000090
      0000CF0000CF0000CF0000FF0000FF0000CF0000CF00000090FF00C8FF000000
      00000000000000700000800000800000700000700000700000700000700000FF
      0000FF0000FF2F30FF2F30FF0000FF0000DF0000DF5000007000009000009000
      00CF0000CF0000CF0000CF0000CF00000090FF00C8FF00C8FF00000000000000
      000000700000800000700000700000700000700000800000800000800000B000
      00DF0000DF0000FF2F30FF2F30FF0000DF0000DF0000DF500000700000900000
      9000009000000060FF0060FF0090FF0090FF00C8FF0000000000000000000080
      0000A00000700000700000800000800000802F002F6000606000600000800000
      B00000DF0000FF0000FF2F30FF2F30FF0000FF0000DF0000DF0000FF0060FF00
      60FF0060FF0090FF0090FF00C8FF00C8FF00000000000000000000800000B000
      00800000800000802F002F2F002F600060900090900090CF00CFFF30CF0000A0
      0000FF0000FF0000FF0000FF2F30FF2F30FF0000FF0000FF0030FF0060FF0060
      FF0060FF0090FF0090FF00C8FF00000000000000000000800000DF0000B00000
      802F002F600060600060900090900090900090FF30CFFF30CFFF60CF0000FF00
      00FF0000FF0000FF0000FF0000FF2F30FF2F30FF0060FF0060FF0060FF0090FF
      0090FF00C8FF00C8FF0000000000FFFFFF0000000000000000DF0000DF2F002F
      600060600060900090900090900090FF30CFFF30CFFF60CF0000FF0000FF0000
      FF0000FF2F30FF2F30FF0000FF0030FF0030FF0060FF0060FF0060FF0090FF00
      90FF00C8FF0000000000FFFFFFFFFFFFFFFFFF0000000000000000FF2F002F60
      0060900090900090900090FF30CFFF60CF0000FF0000FF0000FF2F30FF2F30FF
      0000000000FF0000FF0030FF0060FF0060FF0060FF0090FF0090FF00C8FF00C8
      FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002F002F6000606000
      60900090900090FF30CFFF60CF2F30FF2F30FF2F30FF00000000000000000000
      00FF0000FF0030FF0030FF0060FF0060FF0060FF0090FF0090FF00C8FF000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002F002F600060600060900090
      CF00CFFF30CFFF60CF000000000000000000FFFFFFFFFFFF0000000000FF0030
      FF0030FF0060FF0060FF0060FF0090FF0090FF00C8FF00C8FF0000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002F002F600060900090CF00CFFF
      30CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0030FF0030FF
      0030FF0060FF0060FF0060FF0090FF0090FF00C8FF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000002F002F600060900090FF30CFFF60CF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0030FF0060FF0060FF00
      60FF0060FF0090FF0090FF00C8FF00C8FF0000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000002F002F600060900090FF30CFFF60CF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0060FF00F8FF00F8FF00F8FF00F8
      FF00F8FF00F8FF00C8FF00C8FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000600060900090FF30CF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000000060FF00F8FF00F8FF00F8FF00F8FF00F8FF00F8FF
      00F8FF00F8FF00C8FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000600060900090FF60CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00000000C8FF00F8FF00F8FF00F8FF00F8FF00F8FF00F8FF00
      C8FF000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000600060900090FF60CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF000000FFFF
      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF30CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF30CF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object SQLParcelasReceberTemp: TRxQuery
    BeforeDelete = SQLParcelasReceberTempBeforeDelete
    OnCalcFields = SQLParcelasReceberTempCalcFields
    OnNewRecord = SQLParcelasReceberTempNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASRECEBERTEMP')
    UpdateObject = UpdateSQLParcelasReceberTemp
    Macros = <>
    Left = 8
    Top = 7
    object SQLParcelasReceberTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASRECEBERTEMP.TERMICOD'
    end
    object SQLParcelasReceberTempA13CUPOID: TStringField
      FieldName = 'A13CUPOID'
      Size = 13
    end
    object SQLParcelasReceberTempA13NRODOC: TStringField
      FieldName = 'A13NRODOC'
      Origin = 'DB.PARCELASRECEBERTEMP.A13NRODOC'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasReceberTempIPOSICAO: TIntegerField
      DisplayLabel = 'POS'
      FieldName = 'IPOSICAO'
      Origin = 'DB.PARCELASRECEBERTEMP.IPOSICAO'
      DisplayFormat = '000'
    end
    object SQLParcelasReceberTempCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PARCELASRECEBERTEMP.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasReceberTempCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.PARCELASRECEBERTEMP.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasReceberTempINROPARC: TIntegerField
      DisplayLabel = ' '
      FieldName = 'INROPARC'
      Origin = 'DB.PARCELASRECEBERTEMP.INROPARC'
      DisplayFormat = '-00'
    end
    object SQLParcelasReceberTempDVENC: TDateTimeField
      FieldName = 'DVENC'
      Origin = 'DB.PARCELASRECEBERTEMP.DVENC'
    end
    object SQLParcelasReceberTempN2VLRVENC: TFloatField
      FieldName = 'N2VLRVENC'
      Origin = 'DB.PARCELASRECEBERTEMP.N2VLRVENC'
      DisplayFormat = '#,###.00'
    end
    object SQLParcelasReceberTempN2VLRJURO: TFloatField
      FieldName = 'N2VLRJURO'
      Origin = 'DB.PARCELASRECEBERTEMP.N2VLRJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasReceberTempN2VLRMULTA: TFloatField
      FieldName = 'N2VLRMULTA'
      Origin = 'DB.PARCELASRECEBERTEMP.N2VLRMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasReceberTempN2VLRDESC: TFloatField
      FieldName = 'N2VLRDESC'
      Origin = 'DB.PARCELASRECEBERTEMP.N2VLRDESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasReceberTempN2VLRTXCOBR: TFloatField
      FieldName = 'N2VLRTXCOBR'
      Origin = 'DB.PARCELASRECEBERTEMP.N2VLRTXCOBR'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasReceberTempN2VLRPAGAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'N2VLRPAGAR'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLParcelasReceberTempINRODIASATRAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'INRODIASATRAS'
      Calculated = True
    end
    object SQLParcelasReceberTempDoc_Parc_CalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'Doc_Parc_CalcField'
      Calculated = True
    end
    object SQLParcelasReceberTempNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object SQLParcelasReceberTempN2VLRAMORT: TFloatField
      FieldName = 'N2VLRAMORT'
      Origin = 'DB.PARCELASRECEBERTEMP.N2VLRAMORT'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasReceberTempTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Origin = 'DB.PARCELASRECEBERTEMP.TIPODOC'
      FixedChar = True
      Size = 2
    end
    object SQLParcelasReceberTempTipoDocCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoDocCalc'
      Size = 15
      Calculated = True
    end
    object SQLParcelasReceberTempCTRCN2TOTCORRECAO: TFloatField
      FieldName = 'CTRCN2TOTCORRECAO'
      Origin = 'DB.PARCELASRECEBERTEMP.CTRCN2TOTCORRECAO'
    end
    object SQLParcelasReceberTempBAIXAR_PARCELA: TStringField
      FieldName = 'BAIXAR_PARCELA'
      Origin = 'DB.PARCELASRECEBERTEMP.BAIXAR_PARCELA'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLParcelasReceberTemp: TDataSource
    DataSet = SQLParcelasReceberTemp
    Left = 36
    Top = 7
  end
  object UpdateSQLParcelasReceberTemp: TUpdateSQL
    ModifySQL.Strings = (
      'update PARCELASRECEBERTEMP'
      'set'
      '  TERMICOD = :TERMICOD,'
      '  INROPARC = :INROPARC,'
      '  A13CUPOID = :A13CUPOID,'
      '  IPOSICAO = :IPOSICAO,'
      '  A13NRODOC = :A13NRODOC,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  CTRCA13ID = :CTRCA13ID,'
      '  DVENC = :DVENC,'
      '  N2VLRVENC = :N2VLRVENC,'
      '  N2VLRJURO = :N2VLRJURO,'
      '  N2VLRMULTA = :N2VLRMULTA,'
      '  N2VLRDESC = :N2VLRDESC,'
      '  N2VLRTXCOBR = :N2VLRTXCOBR'
      'where'
      '  TERMICOD = :OLD_TERMICOD and'
      '  INROPARC = :OLD_INROPARC and'
      '  A13CUPOID = :OLD_A13CUPOID')
    InsertSQL.Strings = (
      'insert into PARCELASRECEBERTEMP'
      
        '  (TERMICOD, INROPARC, A13CUPOID, IPOSICAO, A13NRODOC, CLIEA13ID' +
        ', CTRCA13ID, '
      
        '   DVENC, N2VLRVENC, N2VLRJURO, N2VLRMULTA, N2VLRDESC, N2VLRTXCO' +
        'BR)'
      'values'
      
        '  (:TERMICOD, :INROPARC, :A13CUPOID, :IPOSICAO, :A13NRODOC, :CLI' +
        'EA13ID, '
      
        '   :CTRCA13ID, :DVENC, :N2VLRVENC, :N2VLRJURO, :N2VLRMULTA, :N2V' +
        'LRDESC, '
      '   :N2VLRTXCOBR)')
    DeleteSQL.Strings = (
      'delete from PARCELASRECEBERTEMP'
      'where'
      '  TERMICOD = :OLD_TERMICOD and'
      '  INROPARC = :OLD_INROPARC and'
      '  A13CUPOID = :OLD_A13CUPOID')
    Left = 64
    Top = 7
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 120
    Top = 35
  end
  object SQLCliente: TRxQuery
    OnCalcFields = SQLClienteCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLIEA13ID, CLIEA60RAZAOSOC, CLIEA60NOMEFANT'
      'from CLIENTE')
    Macros = <>
    Left = 92
    Top = 7
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANTAS'
      FixedChar = True
      Size = 60
    end
    object SQLClienteNomeCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeCalcField'
      Size = 60
      Calculated = True
    end
  end
  object DSSQLCupom: TDataSource
    DataSet = SQLCupom
    Left = 36
    Top = 35
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CUPOM'
      'where '
      '  (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 8
    Top = 35
    object SQLCupomCUPOA13ID: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLCupomCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCUPON2TOTITENS: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      DisplayFormat = '#,##0.00'
    end
    object SQLCupomCUPON2DESC: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLCupomCUPON2ACRESC: TFloatField
      DisplayLabel = 'Acr'#233'sc.'
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLCupomCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
    end
    object SQLCupomCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 1
    end
    object SQLCupomCUPON2JUROATRAS: TFloatField
      FieldName = 'CUPON2JUROATRAS'
      Origin = 'DB.CUPOM.CUPON2JUROATRAS'
    end
    object SQLCupomCUPON2MULTAATRAS: TFloatField
      FieldName = 'CUPON2MULTAATRAS'
      Origin = 'DB.CUPOM.CUPON2MULTAATRAS'
    end
    object SQLCupomCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      Origin = 'DB.CUPOM.CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLCupom
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  CONTASRECEBER'
      'where '
      '  (%MFiltro)'
      'and'
      ' (CTRCA5TIPOPADRAO not in ('#39'CRT'#39','#39'CHQ'#39','#39'CHQP'#39','#39'CHQV'#39'))'
      'order by '
      '  CTRCDVENC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 64
    Top = 35
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLContasReceberCTRCN2TOTCORRECAO: TFloatField
      FieldName = 'CTRCN2TOTCORRECAO'
    end
  end
  object SQLlCupomNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CUPOMNUMERARIO'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 92
    Top = 35
    object SQLlCupomNumerarioCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLlCupomNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CUPOMNUMERARIO.NUMEICOD'
    end
    object SQLlCupomNumerarioCPNMN2VLR: TFloatField
      FieldName = 'CPNMN2VLR'
      Origin = 'DB.CUPOMNUMERARIO.CPNMN2VLR'
    end
    object SQLlCupomNumerarioCPNMCAUTENT: TStringField
      FieldName = 'CPNMCAUTENT'
      Origin = 'DB.CUPOMNUMERARIO.CPNMCAUTENT'
      FixedChar = True
      Size = 1
    end
  end
  object SQLRecebimento: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from RECEBIMENTO'
      'where CTRCA13ID is null')
    Macros = <>
    Left = 8
    Top = 63
    object SQLRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECEICOD: TIntegerField
      FieldName = 'RECEICOD'
      Origin = 'DB.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'DB.RECEBIMENTO.TERMICODREC'
    end
    object SQLRecebimentoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.RECEBIMENTO.USUAICOD'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
    end
    object SQLRecebimentoRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
    end
    object SQLRecebimentoRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
    end
    object SQLRecebimentoRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
    end
    object SQLRecebimentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECEBIMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECEBIMENTO.REGISTRO'
    end
    object SQLRecebimentoRECEN2MULTACOBR: TFloatField
      FieldName = 'RECEN2MULTACOBR'
      Origin = 'DB.RECEBIMENTO.RECEN2MULTACOBR'
    end
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
    end
    object SQLRecebimentoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.RECEBIMENTO.NUMEICOD'
    end
  end
  object SQLPrimeiroAviso: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'PRAVA60NOMECLI as NomeCliente,'
      'PRAVDVENC as Vencimento,'
      'CTRCN2VLR as Valor,'
      'PRAVCENVIADO as Enviado,'
      'CTRCINROPARC as NroParcela,'
      'PRAVDPROCESS as DataProcessamento'
      'from'
      'CARTAPRIMEIROAVISO'
      'where'
      '%Cupom'
      'order by'
      'PRAVDVENC')
    Macros = <
      item
        DataType = ftString
        Name = 'Cupom'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 120
    Top = 7
    object SQLPrimeiroAvisoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'DB.CARTAPRIMEIROAVISO.PRAVA60NOMECLI'
      FixedChar = True
      Size = 60
    end
    object SQLPrimeiroAvisoVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = 'DB.CARTAPRIMEIROAVISO.PRAVDVENC'
    end
    object SQLPrimeiroAvisoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'DB.CARTAPRIMEIROAVISO.CTRCN2VLR'
    end
    object SQLPrimeiroAvisoENVIADO: TStringField
      FieldName = 'ENVIADO'
      Origin = 'DB.CARTAPRIMEIROAVISO.PRAVCENVIADO'
      FixedChar = True
      Size = 1
    end
    object SQLPrimeiroAvisoNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.CARTAPRIMEIROAVISO.CTRCINROPARC'
    end
    object SQLPrimeiroAvisoDATAPROCESSAMENTO: TDateTimeField
      FieldName = 'DATAPROCESSAMENTO'
      Origin = 'DB.CARTAPRIMEIROAVISO.PRAVDPROCESS'
    end
  end
  object SQLSegundoAviso: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'SGAVA60NOMECLI as NomeCliente,'
      'SGAVDVENC as Vencimento,'
      'CTRCN2VLR as Valor,'
      'SGAVCENVIADO as Enviado,'
      'CTRCINROPARC as NroParcela,'
      'SGAVDPROCESS as DataProcessamento'
      'from'
      'CARTASEGUNDOAVISO'
      'where'
      '%Cupom'
      'order by'
      'SGAVDVENC'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Cupom'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 148
    Top = 7
    object SQLSegundoAvisoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'DB.CARTASEGUNDOAVISO.SGAVA60NOMECLI'
      FixedChar = True
      Size = 60
    end
    object SQLSegundoAvisoVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = 'DB.CARTASEGUNDOAVISO.SGAVDVENC'
    end
    object SQLSegundoAvisoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'DB.CARTASEGUNDOAVISO.CTRCN2VLR'
    end
    object SQLSegundoAvisoENVIADO: TStringField
      FieldName = 'ENVIADO'
      Origin = 'DB.CARTASEGUNDOAVISO.SGAVCENVIADO'
      FixedChar = True
      Size = 1
    end
    object SQLSegundoAvisoNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.CARTASEGUNDOAVISO.CTRCINROPARC'
    end
    object SQLSegundoAvisoDATAPROCESSAMENTO: TDateTimeField
      FieldName = 'DATAPROCESSAMENTO'
      Origin = 'DB.CARTASEGUNDOAVISO.SGAVDPROCESS'
    end
  end
  object SQLSPC: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'AVSPA60NOMECLI as NomeCliente,'
      'AVSPDVENC as Vencimento,'
      'CTRCN2VLR as Valor,'
      'AVSPCENVIADO as Enviado,'
      'CTRCINROPARC as NroParcela,'
      'AVSPDPROCESS as DataProcessamento'
      'from'
      'CARTAAVISOSPC'
      'where'
      '%Cupom'
      'order by'
      'AVSPDVENC'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Cupom'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 148
    Top = 35
    object SQLSPCNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'DB.CARTAAVISOSPC.AVSPA60NOMECLI'
      FixedChar = True
      Size = 60
    end
    object SQLSPCVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = 'DB.CARTAAVISOSPC.AVSPDVENC'
    end
    object SQLSPCVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'DB.CARTAAVISOSPC.CTRCN2VLR'
    end
    object SQLSPCENVIADO: TStringField
      FieldName = 'ENVIADO'
      Origin = 'DB.CARTAAVISOSPC.AVSPCENVIADO'
      FixedChar = True
      Size = 1
    end
    object SQLSPCNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.CARTAAVISOSPC.CTRCINROPARC'
    end
    object SQLSPCDATAPROCESSAMENTO: TDateTimeField
      FieldName = 'DATAPROCESSAMENTO'
      Origin = 'DB.CARTAAVISOSPC.AVSPDPROCESS'
    end
  end
  object SQLAvisoCobranca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'AVCOA60NOMECLI as NomeCliente,'
      'AVCODVENC as Vencimento,'
      'CTRCN2VLR as Valor,'
      'AVCOCENVIADO as Enviado,'
      'CTRCINROPARC as NroParcela,'
      'AVCODPROCESS as DataProcessamento'
      'from'
      'CARTAAVISOCOBRANCA'
      'where'
      '%Cupom'
      'order by'
      'AVCODVENC'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Cupom'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 176
    Top = 7
    object SQLAvisoCobrancaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'DB.CARTAAVISOCOBRANCA.AVCOA60NOMECLI'
      FixedChar = True
      Size = 60
    end
    object SQLAvisoCobrancaVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = 'DB.CARTAAVISOCOBRANCA.AVCODVENC'
    end
    object SQLAvisoCobrancaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'DB.CARTAAVISOCOBRANCA.CTRCN2VLR'
    end
    object SQLAvisoCobrancaENVIADO: TStringField
      FieldName = 'ENVIADO'
      Origin = 'DB.CARTAAVISOCOBRANCA.AVCOCENVIADO'
      FixedChar = True
      Size = 1
    end
    object SQLAvisoCobrancaNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.CARTAAVISOCOBRANCA.CTRCINROPARC'
    end
    object SQLAvisoCobrancaDATAPROCESSAMENTO: TDateTimeField
      FieldName = 'DATAPROCESSAMENTO'
      Origin = 'DB.CARTAAVISOCOBRANCA.AVCODPROCESS'
    end
  end
  object ReportAutentic: TppReport
    AutoStop = False
    DataPipeline = DBPipeParc
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 177
    Units = utMillimeters
    AllowPrintToFile = True
    BeforePrint = ReportAutenticBeforePrint
    CachePages = True
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowPrintDialog = False
    TextFileName = 'C:\Documents and Settings\Jonas Loss\Desktop\report.TXT'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 64
    Top = 63
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'DBPipeParc'
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 24851568
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'ppLabel1'
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recibo de pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 3850224
        mmTop = 1260213
        mmWidth = 8087006
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'ppLabel2'
        SaveOrder = 13
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 3710259
        mmWidth = 3001704
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'ppDBText1'
        CharWrap = True
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        WordWrap = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 2240232
        mmLeft = 1330063
        mmTop = 4900358
        mmWidth = 15821056
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'ppDBText2'
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 9660750
        mmTop = 3710259
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'ppLabel3'
        SaveOrder = 14
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contrato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 7280554
        mmWidth = 3584318
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'ppDBText3'
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 11270743
        mmTop = 7280554
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'ppLabel4'
        SaveOrder = 15
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 8470652
        mmWidth = 4861199
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'ppDBText4'
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 11270743
        mmTop = 8470652
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'ppLabel5'
        SaveOrder = 16
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Presta'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 10780734
        mmWidth = 3853135
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'ppDBText5'
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        DisplayFormat = '###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 17067447
        mmTop = 10780734
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'ppLabel6'
        SaveOrder = 17
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Juros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 11970832
        mmWidth = 2240232
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'ppDBText6'
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        DisplayFormat = '###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 17078824
        mmTop = 11970832
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'ppLabel7'
        SaveOrder = 18
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Multa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 13160930
        mmWidth = 2531274
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'ppDBText7'
        SaveOrder = 6
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        DisplayFormat = '###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 17036756
        mmTop = 13160930
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'ppLabel8'
        SaveOrder = 19
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 14351029
        mmWidth = 3763441
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'ppDBText8'
        SaveOrder = 7
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        DisplayFormat = '###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 17050778
        mmTop = 14351029
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'ppLabel9'
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 15541127
        mmWidth = 2262457
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'ppDBText9'
        SaveOrder = 8
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        DisplayFormat = '###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 4149
        mmLeft = 17089937
        mmTop = 15541127
        mmWidth = 16468
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'ppLabel10'
        SaveOrder = 11
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emitido em:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 17011155
        mmWidth = 4704301
        BandType = 4
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'ppSystemVariable1'
        SaveOrder = 21
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 10080645
        mmTop = 17011155
        mmWidth = 7437188
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'ppLabel13'
        SaveOrder = 12
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 9660750
        mmWidth = 14426435
        BandType = 4
      end
      object Empresa: TppLabel
        UserName = 'Empresa'
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1330063
        mmTop = 2170117
        mmWidth = 3315500
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'ppDBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = DBPipeParc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPipeParc'
        mmHeight = 1050133
        mmLeft = 1400178
        mmTop = 1260213
        mmWidth = 1960037
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'ppLabel15'
        SaveOrder = 22
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1400178
        mmTop = 23241575
        mmWidth = 14426435
        BandType = 4
      end
    end
  end
  object DBPipeParc: TppDBPipeline
    DataSource = DSSQLParcelasReceberTemp
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeParc'
    Left = 92
    Top = 63
  end
  object SQLHistorico: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'CLIENTEHISTORICO'
      'WHERE'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 204
    Top = 7
    object SQLHistoricoCLHTTHISTORICO: TMemoField
      FieldName = 'CLHTTHISTORICO'
      Origin = 'DB.CLIENTEHISTORICO.CLHTTHISTORICO'
      BlobType = ftMemo
      Size = 500
    end
    object SQLHistoricoCLHTDEMIS: TDateTimeField
      FieldName = 'CLHTDEMIS'
      Origin = 'DB.CLIENTEHISTORICO.CLHTDEMIS'
    end
    object SQLHistoricoCLHTDPROXCONTATO: TDateTimeField
      FieldName = 'CLHTDPROXCONTATO'
      Origin = 'DB.CLIENTEHISTORICO.CLHTDPROXCONTATO'
    end
    object SQLHistoricoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEHISTORICO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLHistoricoCLHTICOD: TIntegerField
      FieldName = 'CLHTICOD'
      Origin = 'DB.CLIENTEHISTORICO.CLHTICOD'
    end
    object SQLHistoricoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CLIENTEHISTORICO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLHistoricoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CLIENTEHISTORICO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLHistoricoCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CLIENTEHISTORICO.CTRCINROPARC'
    end
    object SQLHistoricoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTEHISTORICO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLHistoricoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTEHISTORICO.REGISTRO'
    end
  end
  object ReportTotRec: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 177
    Units = utMillimeters
    AllowPrintToFile = True
    BeforePrint = ReportAutenticBeforePrint
    CachePages = True
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowPrintDialog = False
    TextFileName = 'C:\Documents and Settings\Jonas Loss\Desktop\report.TXT'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 8
    Top = 91
    Version = '10.06'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 23171461
      mmPrintPosition = 0
      object lbTotal: TppLabel
        UserName = 'lbTotal'
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Recebido: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1119983
        mmTop = 15681092
        mmWidth = 6370386
        BandType = 1
      end
      object ppLabel24: TppLabel
        UserName = 'ppLabel24'
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emitido em:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1119983
        mmTop = 16871190
        mmWidth = 4690278
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'ppSystemVariable2'
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 8050493
        mmTop = 16941040
        mmWidth = 7420519
        BandType = 1
      end
      object ppLabel25: TppLabel
        UserName = 'ppLabel25'
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1190098
        mmTop = 7210439
        mmWidth = 14420879
        BandType = 1
      end
      object ppLabel27: TppLabel
        UserName = 'ppLabel27'
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1119983
        mmTop = 10780734
        mmWidth = 14420879
        BandType = 1
      end
      object lbEmpresa: TppLabel
        UserName = 'lbEmpresa'
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lbEmpresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 1119983
        mmTop = 5880376
        mmWidth = 15028
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'ppLabel29'
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '..'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1050133
        mmLeft = 1119983
        mmTop = 20091440
        mmWidth = 560124
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'ppLabel12'
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOCUMENTO NAO FISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1190098
        mmTop = 8400538
        mmWidth = 11620788
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'ppLabel16'
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RECEBIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1190098
        mmTop = 9590636
        mmWidth = 6650315
        BandType = 1
      end
      object lbCliente: TppLabel
        UserName = 'lbCliente'
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 1119983
        mmTop = 13160930
        mmWidth = 2940320
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'ppLabel17'
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1097758
        mmLeft = 1119983
        mmTop = 11970832
        mmWidth = 2934500
        BandType = 1
      end
      object lbOperador: TppLabel
        UserName = 'lbOperador'
        SaveOrder = 11
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Operador:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1097758
        mmLeft = 1050133
        mmTop = 18061288
        mmWidth = 3797043
        BandType = 1
      end
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object SQLProvedorCartao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PROVEDORCARTAO'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 665
    Top = 497
    object SQLProvedorCartaoPRCAA13ID: TStringField
      FieldName = 'PRCAA13ID'
      Origin = 'DB.PROVEDORCARTAO.PRCAA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProvedorCartaoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PROVEDORCARTAO.EMPRICOD'
    end
    object SQLProvedorCartaoPRCAICOD: TIntegerField
      FieldName = 'PRCAICOD'
      Origin = 'DB.PROVEDORCARTAO.PRCAICOD'
    end
    object SQLProvedorCartaoPRCAA60DESCR: TStringField
      FieldName = 'PRCAA60DESCR'
      Origin = 'DB.PROVEDORCARTAO.PRCAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProvedorCartaoPRCATPATHENVIA: TMemoField
      FieldName = 'PRCATPATHENVIA'
      Origin = 'DB.PROVEDORCARTAO.PRCATPATHENVIA'
      BlobType = ftMemo
      Size = 500
    end
    object SQLProvedorCartaoPRCATPATHRECEBE: TMemoField
      FieldName = 'PRCATPATHRECEBE'
      Origin = 'DB.PROVEDORCARTAO.PRCATPATHRECEBE'
      BlobType = ftMemo
      Size = 500
    end
    object SQLProvedorCartaoPRCAA60CARTAO: TStringField
      FieldName = 'PRCAA60CARTAO'
      Origin = 'DB.PROVEDORCARTAO.PRCAA60CARTAO'
      FixedChar = True
      Size = 60
    end
    object SQLProvedorCartaoPRCACCONSCHEQUE: TStringField
      FieldName = 'PRCACCONSCHEQUE'
      Origin = 'DB.PROVEDORCARTAO.PRCACCONSCHEQUE'
      FixedChar = True
      Size = 1
    end
    object SQLProvedorCartaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PROVEDORCARTAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProvedorCartaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PROVEDORCARTAO.REGISTRO'
    end
  end
  object TimerCartao: TTimer
    Enabled = False
    Left = 637
    Top = 497
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 570
    Top = 497
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
    Left = 542
    Top = 497
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
    Left = 542
    Top = 525
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
    Left = 570
    Top = 525
  end
  object RDPrint: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Autenticacao Carne'
    OpcoesPreview.PreviewZoom = 0
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
    CaptionSetup = 'Autenticacao'
    TitulodoRelatorio = 'Autenticacao Carne'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
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
    TamanhoQteLinhas = 12
    TamanhoQteColunas = 96
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S12cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 156
    Top = 74
  end
  object rxMemoryData: TRxMemoryData
    FieldDefs = <>
    Left = 388
    Top = 496
  end
  object SQLPesquisa: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLCupom
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  CONTASRECEBER'
      'where '
      '  (%MFiltro)'
      'and'
      '(CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQP'#39','#39'CHQV'#39'))'
      'order by '
      '  CTRCINROPARC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 176
    Top = 35
  end
  object SQLRenegociacao: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  CONTASRECEBER'
      'where '
      '  (%MFiltro)'
      'order by '
      '  CTRCINROPARC')
    UpdateObject = UdpateRenegociacao
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 204
    Top = 35
    object SQLRenegociacaoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLRenegociacaoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLRenegociacaoCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLRenegociacaoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLRenegociacaoCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLRenegociacaoCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLRenegociacaoCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLRenegociacaoCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLRenegociacaoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLRenegociacaoPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLRenegociacaoCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLRenegociacaoCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLRenegociacaoCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLRenegociacaoCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLRenegociacaoCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLRenegociacaoCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLRenegociacaoCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLRenegociacaoCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLRenegociacaoCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLRenegociacaoEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLRenegociacaoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLRenegociacaoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLRenegociacaoCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLRenegociacaoNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLRenegociacaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRenegociacaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLRenegociacaoCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLRenegociacaoBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLRenegociacaoCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLRenegociacaoCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLRenegociacaoCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLRenegociacaoCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLRenegociacaoCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLRenegociacaoCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLRenegociacaoALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLRenegociacaoPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLRenegociacaoFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoCTRCCTEMREGRECEBER: TStringField
      FieldName = 'CTRCCTEMREGRECEBER'
      Origin = 'DB.CONTASRECEBER.CTRCCTEMREGRECEBER'
      FixedChar = True
      Size = 1
    end
    object SQLRenegociacaoCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLRenegociacaoCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLRenegociacaoDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLRenegociacaoHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLRenegociacaoPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLRenegociacaoCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Origin = 'DB.CONTASRECEBER.CONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRenegociacaoCTRCA13CTRCAIDCHQ: TStringField
      FieldName = 'CTRCA13CTRCAIDCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA13CTRCAIDCHQ'
      Size = 13
    end
    object SQLRenegociacaoCTRCCEMITIDOBOLETO: TStringField
      FieldName = 'CTRCCEMITIDOBOLETO'
      Origin = 'DB.CONTASRECEBER.CTRCCEMITIDOBOLETO'
      FixedChar = True
      Size = 1
    end
    object SQLRenegociacaoCTRCA2MESCOMP: TStringField
      FieldName = 'CTRCA2MESCOMP'
      Origin = 'DB.CONTASRECEBER.CTRCA2MESCOMP'
      FixedChar = True
      Size = 2
    end
    object SQLRenegociacaoCTRCA4ANOCOMP: TStringField
      FieldName = 'CTRCA4ANOCOMP'
      Origin = 'DB.CONTASRECEBER.CTRCA4ANOCOMP'
      FixedChar = True
      Size = 4
    end
    object SQLRenegociacaoPRCHICOD: TIntegerField
      FieldName = 'PRCHICOD'
      Origin = 'DB.CONTASRECEBER.PRCHICOD'
    end
    object SQLRenegociacaoCTRCA15TELECHQ: TStringField
      FieldName = 'CTRCA15TELECHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15TELECHQ'
      FixedChar = True
      Size = 15
    end
    object SQLRenegociacaoCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CONTASRECEBER.CLDPICOD'
    end
    object SQLRenegociacaoCTRCN2TOTCORRECAO: TFloatField
      FieldName = 'CTRCN2TOTCORRECAO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTCORRECAO'
    end
    object SQLRenegociacaoCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Origin = 'DB.CONTASRECEBER.CTRCA15NOSSONUMERO'
      Size = 15
    end
    object SQLRenegociacaoCTRCA5NOSSONUMERO: TStringField
      FieldName = 'CTRCA5NOSSONUMERO'
      Origin = 'DB.CONTASRECEBER.CTRCA5NOSSONUMERO'
      Size = 5
    end
    object SQLRenegociacaoLOTEREMESSABANCO: TIntegerField
      FieldName = 'LOTEREMESSABANCO'
      Origin = 'DB.CONTASRECEBER.LOTEREMESSABANCO'
    end
    object SQLRenegociacaoAUTORIZACAO: TIntegerField
      FieldName = 'AUTORIZACAO'
      Origin = 'DB.CONTASRECEBER.AUTORIZACAO'
    end
    object SQLRenegociacaoCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'DB.CONTASRECEBER.CODIGOBARRA'
      Size = 55
    end
    object SQLRenegociacaoCTRCN2VLRTAXA: TFloatField
      FieldName = 'CTRCN2VLRTAXA'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLRTAXA'
    end
    object SQLRenegociacaoNSU: TStringField
      FieldName = 'NSU'
      Origin = 'DB.CONTASRECEBER.NSU'
      Size = 15
    end
    object SQLRenegociacaoTAXA_OPERADORA: TFloatField
      FieldName = 'TAXA_OPERADORA'
      Origin = 'DB.CONTASRECEBER.TAXA_OPERADORA'
    end
    object SQLRenegociacaoVALOR_LIQUIDO: TFloatField
      FieldName = 'VALOR_LIQUIDO'
      Origin = 'DB.CONTASRECEBER.VALOR_LIQUIDO'
    end
    object SQLRenegociacaoID_CTRCA13ID: TStringField
      FieldName = 'ID_CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.ID_CTRCA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object UdpateRenegociacao: TUpdateSQL
    Left = 232
    Top = 36
  end
end
