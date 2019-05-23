object FormTelaFechamentoVenda: TFormTelaFechamentoVenda
  Left = 41
  Top = 5
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 742
  ClientWidth = 1301
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblValorDescontoAcrescimo: TRxLabel
    Left = 792
    Top = 137
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'DESCONTO'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblTELE: TRxLabel
    Left = 791
    Top = 196
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'TX.SERVI'#199'O'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblRecebido: TRxLabel
    Left = 790
    Top = 254
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'RECEBIDO'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblTroco: TRxLabel
    Left = 797
    Top = 313
    Width = 180
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'TROCO'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblTotalVenda: TRxLabel
    Left = 793
    Top = 78
    Width = 187
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'TOTAL VENDA'
    Color = 32767
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Bt7: TSpeedButton
    Left = 471
    Top = 124
    Width = 59
    Height = 57
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
    Left = 534
    Top = 124
    Width = 59
    Height = 57
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
    Left = 597
    Top = 124
    Width = 59
    Height = 57
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
  object Bt6: TSpeedButton
    Left = 597
    Top = 183
    Width = 59
    Height = 57
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
    Left = 534
    Top = 183
    Width = 59
    Height = 57
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
    Left = 471
    Top = 183
    Width = 59
    Height = 57
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
  object Bt1: TSpeedButton
    Left = 471
    Top = 242
    Width = 59
    Height = 57
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
    Left = 534
    Top = 242
    Width = 59
    Height = 57
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
    Left = 597
    Top = 242
    Width = 59
    Height = 57
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
  object BtBackSpace: TSpeedButton
    Left = 597
    Top = 301
    Width = 59
    Height = 57
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
  object BtReturn: TSpeedButton
    Left = 661
    Top = 242
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
  object BtVirgula: TSpeedButton
    Left = 534
    Top = 301
    Width = 59
    Height = 57
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
    Left = 471
    Top = 301
    Width = 59
    Height = 57
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
  object MemoRetorno: TMemo
    Left = 915
    Top = 507
    Width = 79
    Height = 41
    Lines.Strings = (
      'MemoRetorno')
    TabOrder = 2
    Visible = False
  end
  object ValorDescontoAcrescimo: TCurrencyEdit
    Left = 804
    Top = 160
    Width = 169
    Height = 32
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 16249066
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnEnter = ValorAcrescimoEnter
  end
  object VlrTele: TCurrencyEdit
    Left = 804
    Top = 220
    Width = 169
    Height = 31
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 16249066
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    OnEnter = VlrTeleEnter
  end
  object ValorRecebido: TCurrencyEdit
    Left = 804
    Top = 277
    Width = 169
    Height = 31
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 16249066
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    OnEnter = ValorAcrescimoEnter
  end
  object ValorTroco: TCurrencyEdit
    Left = 805
    Top = 338
    Width = 169
    Height = 38
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 16249066
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    OnEnter = ValorAcrescimoEnter
  end
  object ValorTotalVenda: TCurrencyEdit
    Left = 804
    Top = 100
    Width = 169
    Height = 31
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    Color = 16249066
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    OnEnter = ValorAcrescimoEnter
  end
  object EntradaDados: TEdit
    Left = 471
    Top = 89
    Width = 186
    Height = 29
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clBlack
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    OnKeyDown = EntradaDadosKeyDown
  end
  object MemoCartao: TMemo
    Left = 780
    Top = 508
    Width = 132
    Height = 25
    Color = 14731440
    Lines.Strings = (
      'MemoCartao')
    ScrollBars = ssHorizontal
    TabOrder = 0
    Visible = False
  end
  object MemoImpressao: TMemo
    Left = 780
    Top = 524
    Width = 132
    Height = 25
    Color = 14731440
    Lines.Strings = (
      'MemoImpressao')
    ScrollBars = ssHorizontal
    TabOrder = 1
    Visible = False
  end
  object Panel5: TPanel
    Left = 0
    Top = 596
    Width = 472
    Height = 55
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 9
    object BtnF7: TConerBtn
      Left = 15
      Top = 3
      Width = 100
      Height = 48
      Cursor = crHandPoint
      Caption = 'F7 Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnF7Click
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
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 72
    Width = 439
    Height = 670
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 3
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    object PageControlPrincipal: TPageControl
      Left = 3
      Top = 3
      Width = 433
      Height = 664
      ActivePage = TabNumerario
      Align = alClient
      MultiLine = True
      Style = tsFlatButtons
      TabOrder = 0
      object TabPlano: TTabSheet
        Caption = 'Plano'
        object CtrlGridPlano: TDBCtrlGrid
          Left = 0
          Top = 0
          Width = 531
          Height = 420
          Align = alClient
          Color = 16249066
          DataSource = dsSQLPlanoAux
          PanelHeight = 84
          PanelWidth = 514
          ParentColor = False
          ParentShowHint = False
          TabOrder = 0
          TabStop = False
          RowCount = 5
          SelectedColor = 14986888
          ShowFocus = False
          ShowHint = False
          object DBText10: TDBText
            Left = 9
            Top = 7
            Width = 409
            Height = 53
            DataField = 'PLRCA60DESCR'
            DataSource = dsSQLPlanoAux
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -35
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            OnClick = DBText10Click
          end
        end
      end
      object TabNumerario: TTabSheet
        Caption = 'Numerario'
        object CtrlGridNumerario: TDBCtrlGrid
          Left = 0
          Top = 0
          Width = 425
          Height = 633
          Align = alClient
          Color = 16249066
          DataSource = dsSQLNumerario
          PanelHeight = 63
          PanelWidth = 408
          ParentColor = False
          ParentShowHint = False
          TabOrder = 0
          TabStop = False
          RowCount = 10
          SelectedColor = 14986888
          ShowFocus = False
          ShowHint = False
          object DBText1: TDBText
            Left = 74
            Top = 2
            Width = 314
            Height = 39
            DataField = 'NUMEA30DESCR'
            DataSource = dsSQLNumerario
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -35
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            OnClick = DBText1Click
          end
          object DBText2: TDBText
            Left = 11
            Top = 3
            Width = 45
            Height = 39
            DataField = 'NUMEICOD'
            DataSource = dsSQLNumerario
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -35
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            OnClick = DBText1Click
          end
        end
        object Panel9: TPanel
          Left = 514
          Top = -248
          Width = 17
          Height = 722
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
        end
      end
    end
  end
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 1301
    Height = 72
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
      Top = 7
      Width = 291
      Height = 39
      Caption = 'Fechamento da Venda'
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
    object LblInstrucoes: TRxLabel
      Left = 14
      Top = 44
      Width = 102
      Height = 23
      Caption = 'Instrucoes'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
      ShadowPos = spRightBottom
      Transparent = True
    end
    object AdvOfficeStatusBar1: TAdvOfficeStatusBar
      Left = 1019
      Top = 0
      Width = 282
      Height = 72
      AnchorHint = False
      Align = alRight
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
      object ImgDesligar: TImage
        Left = 232
        Top = 13
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
      object RxLabel4: TRxLabel
        Tag = 5
        Left = 6
        Top = 12
        Width = 58
        Height = 16
        Hint = 'CodMesa'
        Alignment = taCenter
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel1: TRxLabel
        Tag = 5
        Left = 6
        Top = 30
        Width = 82
        Height = 16
        Hint = 'CodMesa'
        Alignment = taCenter
        Caption = 'Cond.Pgto:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
        ShadowPos = spRightBottom
        Transparent = True
      end
      object RxLabel2: TRxLabel
        Tag = 5
        Left = 7
        Top = 48
        Width = 77
        Height = 16
        Hint = 'CodMesa'
        Alignment = taCenter
        Caption = 'Vendedor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
        ShadowPos = spRightBottom
        Transparent = True
      end
      object LblNomeCliente: TMemo
        Left = 65
        Top = 11
        Width = 159
        Height = 17
        TabStop = False
        BorderStyle = bsNone
        Color = 14731440
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object LblNomePlano: TMemo
        Left = 87
        Top = 29
        Width = 137
        Height = 17
        TabStop = False
        BorderStyle = bsNone
        Color = 14731440
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object LblNomeVendedor: TMemo
        Left = 88
        Top = 47
        Width = 136
        Height = 17
        TabStop = False
        BorderStyle = bsNone
        Color = 14731440
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object ScrollBox1: TScrollBox
    Left = 3
    Top = 73
    Width = 250
    Height = 27
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 12
  end
  object BtnRemoveServico: TConerBtn
    Left = 831
    Top = 434
    Width = 123
    Height = 34
    Cursor = crHandPoint
    Caption = 'Remove Tx.Servi'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    TabStop = False
    OnClick = BtnRemoveServicoClick
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object AdvSmoothPanel1: TAdvSmoothPanel
    Left = 467
    Top = 376
    Width = 280
    Height = 128
    Cursor = crDefault
    Caption.Text = 'Detalhes do Pagamento'
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.HTMLShadowColor = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = 11563548
    Caption.ColorEnd = 10446362
    Fill.Color = 16445929
    Fill.ColorTo = 15587527
    Fill.ColorMirror = 15587527
    Fill.ColorMirrorTo = 16773863
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 14922381
    Fill.Rounding = 10
    Fill.ShadowOffset = 10
    Version = '1.0.9.0'
    TabOrder = 14
    object ListaParcelasVista: TDBGrid
      Left = 3
      Top = 25
      Width = 264
      Height = 86
      BorderStyle = bsNone
      Color = 16249066
      DataSource = DSSQLParcelasVistaVendaTemp
      FixedColor = 16380658
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NumerarioLookup'
          Title.Caption = 'NUMER'#193'RIO'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPARC'
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR'
          Title.Color = 10567680
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
  end
  object BtnDesconto: TConerBtn
    Left = 831
    Top = 392
    Width = 123
    Height = 34
    Cursor = crHandPoint
    Caption = 'F7 - Desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    TabStop = False
    OnClick = BtnDescontoClick
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTO '
      'where %MFiltro and PLRCFATCASH <> '#39'F'#39)
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 798
    Top = 412
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoRecebimentoPLRCN2TXJURO: TFloatField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
    end
    object SQLPlanoRecebimentoPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
    end
    object SQLPlanoRecebimentoPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
    end
    object SQLPlanoRecebimentoPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
    end
    object SQLPlanoRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCN2PERCENTR: TFloatField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
    end
    object SQLPlanoRecebimentoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanoRecebimentoPLRCN2PERCACRESC: TFloatField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
    end
    object SQLPlanoRecebimentoPLRCFATCASH: TStringField
      FieldName = 'PLRCFATCASH'
      Origin = 'DB.PLANORECEBIMENTO.PLRCFATCASH'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPlanoRecebimentoParcela: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTOPARCELA'
      'where'
      '  %MFiltro'
      'order by '
      '  PLRCICOD, PLRPINROPARC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 826
    Top = 412
    object SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRCICOD'
    end
    object SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField
      FieldName = 'PLRPINROPARC'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINROPARC'
    end
    object SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField
      FieldName = 'PLRPINRODIAS'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINRODIAS'
    end
    object SQLPlanoRecebimentoParcelaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoParcelaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.REGISTRO'
    end
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP')
    UpdateObject = UpdateSQLParcelasPrazoVendaTemp
    Macros = <>
    Left = 799
    Top = 440
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
    object SQLParcelasPrazoVendaTempNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
    object SQLParcelasPrazoVendaTempPRCAA13ID: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA13ID'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'PRCAA13ID'
      KeyFields = 'NUMEICOD'
      Size = 13
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCAA60CARTAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA60CARTAO'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCAA60CARTAO'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCATPATHENVIA: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHENVIA'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHENVIA'
      KeyFields = 'PRCAA13ID'
      Size = 500
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCATPATHRECEBE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHRECEBE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHRECEBE'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempPRCACCONSCHEQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCACCONSCHEQUE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCACCONSCHEQUE'
      KeyFields = 'PRCAA13ID'
      Size = 1
      Lookup = True
    end
  end
  object UpdateSQLParcelasPrazoVendaTemp: TUpdateSQL
    ModifySQL.Strings = (
      'update PARCELASPRAZOVENDATEMP'
      'set'
      '  DATAVENCTO = :DATAVENCTO,'
      '  TERMICOD = :TERMICOD,'
      '  NROPARCELA = :NROPARCELA,'
      '  VALORVENCTO = :VALORVENCTO,'
      '  NUMEICOD = :NUMEICOD'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    InsertSQL.Strings = (
      'insert into PARCELASPRAZOVENDATEMP'
      '  (DATAVENCTO, TERMICOD, NROPARCELA, VALORVENCTO, NUMEICOD)'
      'values'
      '  (:DATAVENCTO, :TERMICOD, :NROPARCELA, :VALORVENCTO, :NUMEICOD)')
    DeleteSQL.Strings = (
      'delete from PARCELASPRAZOVENDATEMP'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    Left = 854
    Top = 440
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 826
    Top = 440
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where (%Filtro)'
      'order by NUMEA30DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 360
    Top = 453
    object SQLNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
      DisplayFormat = '##00'
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
    object SQLNumerarioOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.NUMERARIO.OPCXICOD'
    end
    object SQLNumerarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NUMERARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NUMERARIO.REGISTRO'
    end
    object SQLNumerarioPRCAA13ID: TStringField
      FieldName = 'PRCAA13ID'
      Origin = 'DB.NUMERARIO.PRCAA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNumerarioNUMEA30CARTAO: TStringField
      FieldName = 'NUMEA30CARTAO'
      Origin = 'DB.NUMERARIO.NUMEA30CARTAO'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMEA30PROVEDOR: TStringField
      FieldName = 'NUMEA30PROVEDOR'
      Origin = 'DB.NUMERARIO.NUMEA30PROVEDOR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.NUMERARIO.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLNumerarioPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.NUMERARIO.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLNumerarioOPTEICODENVTES: TIntegerField
      FieldName = 'OPTEICODENVTES'
      Origin = 'DB.NUMERARIO.OPTEICODENVTES'
    end
    object SQLNumerarioNUMECVALETROCO: TStringField
      FieldName = 'NUMECVALETROCO'
      Origin = 'DB.NUMERARIO.NUMECVALETROCO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEBIMAGEM: TBlobField
      FieldName = 'NUMEBIMAGEM'
      Origin = 'DB.NUMERARIO.NUMEBIMAGEM'
      Size = 1
    end
  end
  object UpdateSQLParcelasVistaVendaTemp: TUpdateSQL
    ModifySQL.Strings = (
      'update PARCELASPRAZOVENDATEMP'
      'set'
      '  DATAVENCTO = :DATAVENCTO,'
      '  TERMICOD = :TERMICOD,'
      '  NROPARCELA = :NROPARCELA,'
      '  VALORVENCTO = :VALORVENCTO,'
      '  NUMEICOD = :NUMEICOD'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    InsertSQL.Strings = (
      'insert into PARCELASPRAZOVENDATEMP'
      '  (DATAVENCTO, TERMICOD, NROPARCELA, VALORVENCTO, NUMEICOD)'
      'values'
      '  (:DATAVENCTO, :TERMICOD, :NROPARCELA, :VALORVENCTO, :NUMEICOD)')
    DeleteSQL.Strings = (
      'delete from PARCELASPRAZOVENDATEMP'
      'where'
      '  DATAVENCTO = :OLD_DATAVENCTO and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  NROPARCELA = :OLD_NROPARCELA and'
      '  VALORVENCTO = :OLD_VALORVENCTO and'
      '  NUMEICOD = :OLD_NUMEICOD')
    Left = 854
    Top = 468
  end
  object DSSQLParcelasVistaVendaTemp: TDataSource
    DataSet = SQLParcelasVistaVendaTemp
    Left = 826
    Top = 468
  end
  object SQLParcelasVistaVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASVISTAVENDATEMP')
    UpdateObject = UpdateSQLParcelasVistaVendaTemp
    Macros = <>
    Left = 798
    Top = 468
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
    object SQLParcelasVistaVendaTempNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLParcelasVistaVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASVISTAVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
    object SQLParcelasVistaVendaTempPRCAA13ID: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA13ID'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'PRCAA13ID'
      KeyFields = 'NUMEICOD'
      Size = 13
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCAA60CARTAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCAA60CARTAO'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCAA60CARTAO'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCATPATHENVIA: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHENVIA'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHENVIA'
      KeyFields = 'PRCAA13ID'
      Size = 500
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCATPATHRECEBE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCATPATHRECEBE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCATPATHRECEBE'
      KeyFields = 'PRCAA13ID'
      Lookup = True
    end
    object SQLParcelasVistaVendaTempPRCACCONSCHEQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRCACCONSCHEQUE'
      LookupDataSet = SQLProvedorCartao
      LookupKeyFields = 'PRCAA13ID'
      LookupResultField = 'PRCACCONSCHEQUE'
      KeyFields = 'PRCAA13ID'
      Size = 1
      Lookup = True
    end
  end
  object TblCarne: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'Carne.DB'
    Left = 798
    Top = 496
    object TblCarneEmpresaNome: TStringField
      FieldName = 'EmpresaNome'
      Size = 60
    end
    object TblCarneEmpresaEnder: TStringField
      FieldName = 'EmpresaEnder'
      Size = 60
    end
    object TblCarneEmpresaBairro: TStringField
      FieldName = 'EmpresaBairro'
      Size = 60
    end
    object TblCarneEmpresaCidade: TStringField
      FieldName = 'EmpresaCidade'
      Size = 60
    end
    object TblCarneEmpresaUF: TStringField
      FieldName = 'EmpresaUF'
      Size = 2
    end
    object TblCarneEmpresaFone: TStringField
      FieldName = 'EmpresaFone'
      Size = 30
    end
    object TblCarneMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 100
    end
    object TblCarneCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblCarneEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object TblCarneBairro: TStringField
      FieldName = 'Bairro'
      Size = 60
    end
    object TblCarneCidade: TStringField
      FieldName = 'Cidade'
      Size = 60
    end
    object TblCarneCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblCarneNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 13
    end
    object TblCarneNumeroParcela: TIntegerField
      FieldName = 'NumeroParcela'
    end
    object TblCarneContadorParcelas: TIntegerField
      FieldName = 'ContadorParcelas'
    end
    object TblCarneDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object TblCarneValorParcela: TFloatField
      FieldName = 'ValorParcela'
    end
    object TblCarneVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblCarneTotalCupom: TFloatField
      FieldName = 'TotalCupom'
    end
    object TblCarnePlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblCarneDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object TblCarneNroCupom: TStringField
      FieldName = 'NroCupom'
      Size = 6
    end
    object TblCarneTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblCarneValorDesconto: TFloatField
      FieldName = 'ValorDesconto'
    end
    object TblCarneAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblCarneEntrada: TFloatField
      FieldName = 'Entrada'
    end
    object TblCarneClienteDependente: TIntegerField
      FieldName = 'ClienteDependente'
    end
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 910
    Top = 468
  end
  object DSTblCarne: TDataSource
    DataSet = TblCarne
    Left = 826
    Top = 496
  end
  object TblTicketDadosVenda: TTable
    OnNewRecord = TblTicketDadosVendaNewRecord
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketDadosVenda.DB'
    Left = 882
    Top = 496
    object TblTicketDadosVendaNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TblTicketDadosVendaFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TblTicketDadosVendaIDCupom: TStringField
      FieldName = 'IDCupom'
      Size = 13
    end
    object TblTicketDadosVendaDataVenda: TDateField
      FieldName = 'DataVenda'
    end
    object TblTicketDadosVendaCodigoCliente: TStringField
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblTicketDadosVendaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 60
    end
    object TblTicketDadosVendaFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TblTicketDadosVendaNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TblTicketDadosVendaNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TblTicketDadosVendaNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 60
    end
    object TblTicketDadosVendaNomePlano: TStringField
      FieldName = 'NomePlano'
      Size = 60
    end
    object TblTicketDadosVendaCodProd: TIntegerField
      FieldName = 'CodProd'
    end
    object TblTicketDadosVendaDescriProd: TStringField
      FieldName = 'DescriProd'
      Size = 60
    end
    object TblTicketDadosVendaMarcaProd: TStringField
      FieldName = 'MarcaProd'
    end
    object TblTicketDadosVendaRefProd: TStringField
      FieldName = 'RefProd'
    end
    object TblTicketDadosVendaQtdeProd: TFloatField
      FieldName = 'QtdeProd'
    end
    object TblTicketDadosVendaPrecoProd: TFloatField
      FieldName = 'PrecoProd'
    end
    object TblTicketDadosVendaTotalProd: TFloatField
      FieldName = 'TotalProd'
    end
    object TblTicketDadosVendaTaxaCred: TFloatField
      FieldName = 'TaxaCred'
    end
    object TblTicketDadosVendaAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblTicketDadosVendaDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblTicketDadosVendaMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 254
    end
    object TblTicketDadosVendaDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TblTicketDadosVendaTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
  end
  object SQLPreVendaItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PREVENDAITEM'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 938
    Top = 468
    object SQLPreVendaItemTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PREVENDAITEM.TERMICOD'
    end
    object SQLPreVendaItemPRVDICOD: TIntegerField
      FieldName = 'PRVDICOD'
      Origin = 'DB.PREVENDAITEM.PRVDICOD'
    end
    object SQLPreVendaItemPVITIPOS: TIntegerField
      FieldName = 'PVITIPOS'
      Origin = 'DB.PREVENDAITEM.PVITIPOS'
    end
    object SQLPreVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PREVENDAITEM.PRODICOD'
    end
    object SQLPreVendaItemPVITN3QTD: TFloatField
      FieldName = 'PVITN3QTD'
      Origin = 'DB.PREVENDAITEM.PVITN3QTD'
    end
    object SQLPreVendaItemPVITN3VLRUNIT: TFloatField
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNIT'
    end
    object SQLPreVendaItemPVITN3VLRCUSTUNIT: TFloatField
      FieldName = 'PVITN3VLRCUSTUNIT'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRCUSTUNIT'
    end
    object SQLPreVendaItemPVITN2DESC: TFloatField
      FieldName = 'PVITN2DESC'
      Origin = 'DB.PREVENDAITEM.PVITN2DESC'
    end
    object SQLPreVendaItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.PREVENDAITEM.VENDICOD'
    end
    object SQLPreVendaItemPVITN3VLRUNITLUCR: TFloatField
      FieldName = 'PVITN3VLRUNITLUCR'
      Origin = 'DB.PREVENDAITEM.PVITN3VLRUNITLUCR'
    end
    object SQLPreVendaItemPVITCSTATUS: TStringField
      FieldName = 'PVITCSTATUS'
      Origin = 'DB.PREVENDAITEM.PVITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPreVendaItemPVITN2ICMSALIQ: TFloatField
      FieldName = 'PVITN2ICMSALIQ'
      Origin = 'DB.PREVENDAITEM.PVITN2ICMSALIQ'
    end
    object SQLPreVendaItemPRODA60NROSERIE: TStringField
      FieldName = 'PRODA60NROSERIE'
      Origin = 'DB.PREVENDAITEM.PRODA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLPreVendaItemPVITN3QTDTROCA: TFloatField
      FieldName = 'PVITN3QTDTROCA'
      Origin = 'DB.PREVENDAITEM.PVITN3QTDTROCA'
    end
  end
  object SQLCupomNumerarioAut: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
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
    Left = 965
    Top = 468
    object SQLCupomNumerarioAutCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioAutNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CUPOMNUMERARIO.NUMEICOD'
    end
    object SQLCupomNumerarioAutCPNMN2VLR: TFloatField
      FieldName = 'CPNMN2VLR'
      Origin = 'DB.CUPOMNUMERARIO.CPNMN2VLR'
    end
    object SQLCupomNumerarioAutCPNMCAUTENT: TStringField
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
    Left = 882
    Top = 440
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
    object SQLRecebimentoEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'DB.RECEBIMENTO.TERMICODREC'
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
    object SQLRecebimentoRECEA30HIST: TStringField
      FieldName = 'RECEA30HIST'
      Origin = 'DB.RECEBIMENTO.RECEA30HIST'
      FixedChar = True
      Size = 30
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
  object TblCartaoTemp: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'CartaoVistaTemp.DB'
    Left = 965
    Top = 440
    object TblCartaoTempValor: TFloatField
      FieldName = 'Valor'
    end
    object TblCartaoTempCartao: TStringField
      FieldName = 'Cartao'
      Size = 30
    end
    object TblCartaoTempProvedor: TStringField
      FieldName = 'Provedor'
      Size = 30
    end
  end
  object TimerCartao: TTimer
    Enabled = False
    Left = 992
    Top = 496
  end
  object SQLProvedorCartao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PROVEDORCARTAO')
    Macros = <>
    Left = 967
    Top = 412
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
  object SQLPlanoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTO '
      'where PLRCFATCASH <> '#39'F'#39
      'order by PLRCA60DESCR')
    Macros = <>
    Left = 359
    Top = 413
    object SQLPlanoAuxPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoAuxPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLPlanoAux: TDataSource
    AutoEdit = False
    DataSet = SQLPlanoAux
    Left = 387
    Top = 413
  end
  object dsSQLNumerario: TDataSource
    AutoEdit = False
    DataSet = SQLNumerario
    Left = 388
    Top = 453
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
