object FormTelaDadosCancelamento: TFormTelaDadosCancelamento
  Left = 291
  Top = 75
  BorderStyle = bsNone
  ClientHeight = 442
  ClientWidth = 662
  Color = 16776176
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 258
    Width = 93
    Height = 36
    Caption = 'Motivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 20
    Top = 66
    Width = 215
    Height = 36
    Caption = 'Nome do Cliente'
    FocusControl = EditClienteNomeMotivoCancelamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 20
    Top = 161
    Width = 217
    Height = 36
    Caption = 'Telefone Contato'
    FocusControl = EditClienteFoneCancelamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 662
    Height = 51
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
    object RxLabel5: TRxLabel
      Left = 11
      Top = 10
      Width = 575
      Height = 39
      Caption = 'Dados para Cancelamento de Atendimentos'
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
  end
  object EditClienteNomeMotivoCancelamento: TEdit
    Left = 12
    Top = 101
    Width = 637
    Height = 44
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object EditClienteFoneCancelamento: TEdit
    Left = 12
    Top = 196
    Width = 637
    Height = 44
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BtnGravar: TConerBtn
    Left = 235
    Top = 384
    Width = 200
    Height = 40
    Cursor = crHandPoint
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BtnGravarClick
    Glyph.Data = {
      DE040000424DDE0400000000000036040000280000000C0000000E0000000100
      080000000000A8000000130B0000130B0000000100000001000000000000A7C2
      B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
      88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
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
      0000000000000000000000000000000000000000000000000000111111111100
      11111111111111111111000B0011111111111111110009090011111111111111
      1100090F10001111111111110009090D0E0011111111110009090B000C060011
      11111100090800000A0200111111000909000011000206001111000708001111
      0003020011111100001111111100030600111111111111111100050200111111
      1111111111110003040011111111111111110001020011111111111111111100
      0011}
    NumGlyphs = 2
    Spacing = 10
    Flat = False
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = clRed
    SymbolColorClose = clMaroon
    Transparent = True
  end
  object EditMotivoCancelamento: TMemo
    Left = 16
    Top = 293
    Width = 633
    Height = 80
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
    PanelAppearanceDark.Color = 13861717
    PanelAppearanceDark.ColorTo = 10240783
    PanelAppearanceDark.ColorHot = 13958143
    PanelAppearanceDark.ColorHotTo = 6538487
    PanelAppearanceDark.ColorDown = 9232890
    PanelAppearanceDark.ColorDownTo = 1940207
    PanelAppearanceDark.ColorMirror = 10240783
    PanelAppearanceDark.ColorMirrorTo = 10240783
    PanelAppearanceDark.ColorMirrorHot = 6538487
    PanelAppearanceDark.ColorMirrorHotTo = 6538487
    PanelAppearanceDark.ColorMirrorDown = 1940207
    PanelAppearanceDark.ColorMirrorDownTo = 1940207
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 596
    Top = 7
  end
end
